using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BizWebservice.DTO;

namespace BizWebservice.DAO
{
    public class GeneralPurchasingDAO
    {
        static MyDataProvider provider = new MyDataProvider();
        public static int Authenticate(string username, string password,string sid,DateTime dateOfIssue)
        {
            provider.connect();
            string sqlCommand = "sp_Authenticate";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@username", username));
            list.Add(new SqlParameter("@password", password));
            list.Add(new SqlParameter("@sid", sid));
            list.Add(new SqlParameter("@ngaycap", dateOfIssue));
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
               // provider.executeNonQueryProcedure(sqlCommand, list);
                provider.executeQueryDataTableProcedure(sqlCommand, list);
                return (int)result.Value;
            }
            catch (Exception e)
            {
              //  return -1;
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }
        public static Coupon[] FindAllCoupons()
        {
            provider.connect();
            string sqlCommand = "sp_FindAllCoupons";
            string sqlCommand1="sp_CountOrderCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            Coupon[] cpArray=new Coupon[0];
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    cpArray = TransFerToCouponArray(sqlCommand1, cpArray, table);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
            return cpArray;
        }
        public static Coupon[] FindCoupons(string productName,DateTime startDate,DateTime endDate,int minPrice,int maxPrice)
        {
            provider.connect();
            string sqlCommand = "sp_FindCoupons";
            string sqlCommand1 = "sp_CountOrderCoupon";
            productName = "%" + productName + "%";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@productName", productName));
            list.Add(new SqlParameter("@startDate", startDate));
            list.Add(new SqlParameter("@endDate", endDate));
            list.Add(new SqlParameter("@minPrice", minPrice));
            list.Add(new SqlParameter("@maxPrice", maxPrice));
            Coupon[] cpArray = new Coupon[0];
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    cpArray = TransFerToCouponArray(sqlCommand1, cpArray, table);
                }
            }
            catch (Exception e)
            {
            }
            finally
            {
                provider.disconnect();
            }
            return cpArray;
        }

        public static Coupon FindCouponInfo(string couponId)
        {
            provider.connect();
            string sqlCommand = "sp_FindCouponInfo";
            string sqlCommand1 = "sp_CountOrderCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@couponId", couponId));

            Coupon[] cpArray = new Coupon[0];
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    cpArray = TransFerToCouponArray(sqlCommand1, cpArray, table);
                    return cpArray[0];
                }
            }
            catch (Exception e)
            {
            }
            finally
            {
                provider.disconnect();
            }
            return new Coupon();
        }
        public static bool RegisterCoupon(string couponId)
        {
            provider.connect();
            string sqlCommand = "sp_RegisterCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@couponId", couponId));
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                if ((int)result.Value == 1)
                {
                    return true;
                }
                else
                    return false;
            }
            catch (Exception e)
            {
            }
            finally
            {
                provider.disconnect();
            }
            return false;
        }
        public static string OrderCoupon(string sid, string couponId, int count)
        {
            provider.connect();
            string sqlCommand="sp_OrderCoupon";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@sid",sid));
            list.Add(new SqlParameter("@couponId",couponId));
            list.Add(new SqlParameter("@count",count));
            SqlParameter orderId=new SqlParameter("@orderId",SqlDbType.Int);
            orderId.Direction=ParameterDirection.Output;
            list.Add(orderId);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand,list);
                return orderId.Value.ToString();
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
          //  return "0";
        }
        public static bool ValidateOrder(string sid, string validationCode)
        {
            int validateCode;
            int.TryParse(validationCode,out validateCode);
            provider.connect();
            string sqlCommand = "sp_ValidateOrder";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@sid", sid));
            list.Add(new SqlParameter("@validationCode", validationCode));
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            int kq;
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                kq=(int)result.Value;
                if (kq == 1)
                    return true;
                else
                    return false;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }
        public static bool CancelOrder(string sid, string validationCode)
        {
            int validateCode;
            int.TryParse(validationCode, out validateCode);
            provider.connect();
            string sqlCommand = "sp_CancelOrder";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@sid", sid));
            list.Add(new SqlParameter("@validationCode", validationCode));
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            int kq;
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                kq = (int)result.Value;
                if (kq == 1)
                    return true;
                else
                    return false;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }
        private static Coupon[] TransFerToCouponArray(string sqlCommand1, Coupon[] cpArray, DataTable table)
        {
            int n = table.Rows.Count;
            cpArray = new Coupon[n];
            for (int i = 0; i < n; i++)
            {
                cpArray[i] = new Coupon();
                DataRow row = table.Rows[i];
                cpArray[i].DieuKienSuDung = row["DIEUKIENSD"].ToString();
                cpArray[i].DonViTien = row["DVTIENTE"].ToString();
                cpArray[i].GiaHangKhiChuaGiam = row["GIAGOC"].ToString();
                cpArray[i].GiaHangSauKhiGiam = row["GIASGIAM"].ToString();
                cpArray[i].LinkHinhAnh = new string[1];
               // cpArray[i].LinkHinhAnh[0] = "http://www.beatifulhouse.somee.com/Content/images/products/" + row["HINHANH"].ToString();
                cpArray[i].LinkHinhAnh[0] = ConfigurationManager.AppSettings.GetValues("image")[0].ToString() + row["HINHANH"].ToString();
                cpArray[i].MaCoupon = row["MACP"].ToString();
                cpArray[i].MaMatHang = row["MASP"].ToString();
                cpArray[i].MaNhaCungCap = "BIZ";
                cpArray[i].NgayBatDau = DateTime.Parse(row["THOIGIANBD"].ToString());
                cpArray[i].NgayCouponBatDauDuocSuDung = cpArray[i].NgayBatDau;
                cpArray[i].NgayKetThuc = DateTime.Parse(row["THOIGIANKT"].ToString());
                cpArray[i].NgayCouponHetHan = cpArray[i].NgayKetThuc;
                List<SqlParameter> sql = new List<SqlParameter>();
                sql.Add(new SqlParameter("@macp", cpArray[i].MaCoupon));
                SqlParameter output = new SqlParameter("@count", SqlDbType.Int);
                output.Direction = ParameterDirection.Output;
                sql.Add(output);
                provider.executeNonQueryProcedure(sqlCommand1, sql);
                cpArray[i].SoLuongDaDat = (int)output.Value;
                float slcl=float.Parse(row["SLCONLAI"].ToString());
                int slspmin = int.Parse(row["SLSPMIN"].ToString());
                cpArray[i].SoLuongMuaLonNhat =(int)slcl/slspmin;
                cpArray[i].SoLuongThoaCoupon = int.Parse(row["SLCPMINGIAMGIA"].ToString());
                cpArray[i].TenMatHang = row["TENSP"].ToString();
                cpArray[i].TenNhaCungCap = "BeatifulhouseGroup";
                cpArray[i].ThongTinMoTa = row["MOTA"].ToString();
                cpArray[i].ThongTinMoTa += " .Mỗi coupon gồm " + slspmin.ToString()+" "+row["DVTINH"].ToString()+" sản phẩm";

            }
            return cpArray;
        }
        public static TransportCompany[] GetTransportCompany()
        {
            provider.connect();
            string sqlCommand = "sp_SelectServiceTrans";
            List<SqlParameter> list = new List<SqlParameter>();
            try
            {
                TransportCompany[] companies = new TransportCompany[0];
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    int n = table.Rows.Count;
                    companies = new TransportCompany[n];
                    for (int i = 0; i < n; i++)
                    {
                        DataRow row = table.Rows[i];
                        companies[i] = new TransportCompany();
                        companies[i].MaCongTyVanChuyen = row["MADV"].ToString();
                        companies[i].TenCongTyVanChuyen = row["TENCTY"].ToString();
                     //   companies[i].HinhThucVanChuyen = GetTransportType(companies[i].MaCongTyVanChuyen);

                    }
                }
                return companies;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }
      /*  private static TransportType[] GetTransportType(string madv)
        {
            TransportType[] trans = new TransportType[0];
            string sqlCommand="sp_SelectTransType";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@madv",madv));
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    int n = table.Rows.Count;
                    trans = new TransportType[n];
                    for (int i = 0; i < n; i++)
                    {
                        trans[i] = new TransportType();
                        DataRow row = table.Rows[i];
                        trans[i].MaHinhThucVanChuyen = row["MA"].ToString();
                        trans[i].TenHinhThucVanChuyen = row["TEN"].ToString();
                        float price = 0;
                        float.TryParse(row["GIA"].ToString(), out price);
                        trans[i].Gia = price;
                        trans[i].DonViTien = row["DVTIEN"].ToString();
                    }
                }
            }
            catch (Exception e)
            {
                return trans;
            }
            return trans;
        }
        */

        public static SERVICE_TRANS_DTO GetInfoServiceTrans(int madv)
        {
            provider.connect();
            string sqlCommand = "sp_GetInfoServiceTrans";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@madv", madv));
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                List<SERVICE_TRANS_DTO> services = new List<SERVICE_TRANS_DTO>();
                if (table != null && table.Rows.Count > 0)
                {
                    TransFerToListServiceTrans(services, table);
                    return services[0];
                }
                return new SERVICE_TRANS_DTO();
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }

        private static void TransFerToListServiceTrans(List<SERVICE_TRANS_DTO> services, DataTable table)
        {
            int n = table.Rows.Count;
            for (int i = 0; i < n; i++)
            {
                DataRow row = table.Rows[i];
                SERVICE_TRANS_DTO sv = new SERVICE_TRANS_DTO();
                sv.MaDV = int.Parse(row["MADV"].ToString());
                sv.TenCongTy = row["TENCTY"].ToString();
                sv.LinkWebService = row["LINKWS"].ToString();
                sv.UserName = row["USERNAME"].ToString();
                sv.PassWord = row["PASS_WORD"].ToString();
                sv.TinhTrang = int.Parse(row["TINHTRANG"].ToString());
                sv.Title = "Cập nhật";
                sv.Website = row["WEBSITE"].ToString();
                sv.BizAddress = row["BIZADDRESS"].ToString();
                services.Add(sv);
            }
        }
        public static int GetNumberCouponInOrder(int madh)
        {
            provider.connect();
            string sqlCommand = "sp_GetNumberCouponInOrderAccept";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@madh",madh));
            SqlParameter soluong=new SqlParameter("@soluong",SqlDbType.Int);
            soluong.Direction=ParameterDirection.Output;
            list.Add(soluong);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)soluong.Value;
            }
            catch (Exception e)
            {
                return 0;
            }
            finally
            {
                provider.disconnect();
            }
        }
        public static int ConfirmOrder(int madh, string diachi,string sid)
        {
            provider.connect();
            string sqlCommand="sp_ConfirmOrderCoupon";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@madh",madh));
            list.Add(new SqlParameter("@diachi",diachi));
            list.Add(new SqlParameter("@sid", sid));
            SqlParameter result=new SqlParameter("@result",SqlDbType.Int);
            result.Direction=ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)result.Value;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }
    }
}
