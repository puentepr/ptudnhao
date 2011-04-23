using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BIZ.DAO;
using BIZ.DTO;

namespace BIZ.BUS
{
    public class GeneralPurchasing
    {
        public static string Authenticate(string username, string password)
        {
            password = MD5.encryptPassword(password);
            string sid = MD5.encryptPassword(username + DateTime.Now.ToLongTimeString());
            DateTime dateOfIssue = DateTime.Today;
            DateTime deadline = DateTime.Today.AddHours(24);
            try
            {
                int result = GeneralPurchasingDAO.Authenticate(username, password, sid,dateOfIssue,deadline);
                if (result == 1)
                {
                    return sid;
                }
                else if (result == 0)
                {
                    return "registrating ws has not been approved";
                }
                else
                {
                    if (result == -2)
                        return "User Invalid";
                    else
                        return "User didn't register to use WS";
                }
            }
            catch (Exception e)
            {
                return "ERROR SYSTEM";
               // throw e;
            }
        }
        public static Coupon[] FindAllCoupons(string sid)
        {
            try
            {
                int result = ConsumerDAO.CheckAvaliableSID(sid);
                if (result == 1)
                {
                    return GeneralPurchasingDAO.FindAllCoupons();
                }
                else
                {
                    return new Coupon[0];
                }
            }
            catch (Exception e)
            {
                return new Coupon[0];
            }
        }
        public static Coupon[] FindCoupons(string sid, string productName,
                            DateTime startDate, DateTime endDate,
                            int minPrice, int maxPrice)
        {
            try
            {
                int result = ConsumerDAO.CheckAvaliableSID(sid);
                if (result == 1)
                {
                    return GeneralPurchasingDAO.FindCoupons(productName, startDate, endDate, minPrice, maxPrice);
                }
                else
                {
                    return new Coupon[0];
                }
            }
            catch (Exception e)
            {
                return new Coupon[0];
            }
        }
        public static Coupon FindCouponInfo(string sid, string couponId)
        {
            try
            {
                int result = ConsumerDAO.CheckAvaliableSID(sid);
                if (result == 1)
                {
                    return GeneralPurchasingDAO.FindCouponInfo(couponId);
                }
                else
                {
                    return new Coupon();
                }
            }
            catch (Exception e)
            {
                return new Coupon();
            }
        }
        public static bool RegisterCoupon(string sid, string couponId)
        {
            try
            {
                int result = ConsumerDAO.CheckAvaliableSID(sid);
                if (result == 1)
                {
                    return GeneralPurchasingDAO.RegisterCoupon(couponId);
                }
                else
                {
                    return false;
                }
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}
