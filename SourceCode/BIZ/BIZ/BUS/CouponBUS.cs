using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using BIZ.DTO;
using BIZ.DAO;

namespace BIZ.BUS
{
    public class CouponBUS
    {
        public static void CreateCoupon(COUPON_DTO couDTO)
        {
            try
            {
                CouponDAO.CreateCoupon(couDTO);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<CouponNhieuDTO> GetExCoupons()
        {
            try
            {
                return CouponDAO.GetExCoupons();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static List<DonHangCouponNhieuDTO> GetOrderExCoupons(string macp,ref int numberOrder,ref int numberWS)
        {
            try
            {
                return CouponDAO.GetOrderExCoupon(macp,ref numberOrder,ref numberWS);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int AcceptOrdersCoupon(string macp, int typePrice,ref string error)
        {
            try
            {
                float price = 0;
                string unit = "";
                List<AcceptCouponDTO> list = CouponDAO.AcceptOrdersCoupon(macp, typePrice,ref price,ref unit);
               // MuaChung.Service1 proxy = new BIZ.MuaChung.Service1();
                MuaChung.MuaChungWebService proxy = new BIZ.MuaChung.MuaChungWebService();
                
                /* chỗ này sẽ duyệt lần lượt webservice kết nối và báo cho mua chung biết */
                foreach (AcceptCouponDTO ac in list)
                {
                    proxy.Url = ac.LinkWS;
                    string sid=null;
                    try
                    {

                        sid = proxy.Authenticate(ac.McUserName, ac.McPassWord);
                    }
                    catch (Exception ex)
                    {
                        error += ac.TenDN + "; ";
                        continue;
                    }
                    if(sid ==null)
                        error += ac.TenDN + "; ";
                    bool test = false;
                    try
                    {
                        test = proxy.ConfirmCoupon(sid, macp, price, unit);
                    }
                    catch (Exception ex)
                    {
                        error += ac.TenDN + "; ";
                        continue;
                    }
                    if (test == false)
                    {
                        error += ac.TenDN + "; ";
                    }
                }
                return 1;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static List<Coupon> SelectAnyCoupon()
        {
            try
            {
                return CouponDAO.SelectAnyCoupon();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static List<Coupon> GetCouponInfor(string macp)
        {
            try
            {
                return CouponDAO.GetCouponInfo(macp);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static void DeleteCoupon(string macp)
        {
            try
            {
                CouponDAO.DeleteCoupon(macp);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static void UpdateCoupon(COUPON_DTO cp)
        {
            try
            {
                CouponDAO.UpdateCoupon(cp);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static COUPON_DTO GetCouponInfor1(string macp)
        {
            try
            {
                return CouponDAO.GetCouponInfor1(macp);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static void UpdateDate(string ma, DateTime date)
        {
            try
            {
                CouponDAO.updateDate(ma, date);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
