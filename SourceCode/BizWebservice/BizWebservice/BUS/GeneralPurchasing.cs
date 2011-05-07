using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using BizWebservice.DAO;
using BizWebservice.DTO;

namespace BizWebservice.BUS
{
    public class GeneralPurchasing
    {
        public static string Authenticate(string username, string password)
        {
            password = MD5.encryptPassword(password);
            string sid = MD5.encryptPassword(username + DateTime.Now.ToLongTimeString());
            DateTime dateOfIssue = DateTime.Today;
           // DateTime deadline = DateTime.Today.AddHours(24);
            try
            {
                int result = GeneralPurchasingDAO.Authenticate(username, password, sid,dateOfIssue);
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
                //throw e;
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
        public static string OrderCoupon(string sid, string couponId, int count)
        {
            return GeneralPurchasingDAO.OrderCoupon(sid, couponId, count);
        }

        public static bool ValidateOrder(string sid, string validationCode)
        {
            return GeneralPurchasingDAO.ValidateOrder(sid, validationCode);
        }
        public static bool CancelOrder(string sid, string validationCode)
        {
            return GeneralPurchasingDAO.CancelOrder(sid, validationCode);
        }
        public static TransportCompany[] GetTransportCompany()
        {
            return GeneralPurchasingDAO.GetTransportCompany();
        }
        public static string ConfirmOrder(string sid, string transCompanyId, string transTypeId, string validationCode, ContactInfo contact)
        {
            int result = ConsumerDAO.CheckAvaliableSID(sid);
            if (result >= 1)
            {
                int madv = 0;
                if (int.TryParse(transCompanyId, out madv))
                {
                    int madh = 0;
                    int.TryParse(validationCode, out madh);
                    int soluong = GeneralPurchasingDAO.GetNumberCouponInOrder(madh);
                    int transtype = 0;
                    int.TryParse(transTypeId, out transtype);
                    SERVICE_TRANS_DTO sv = GeneralPurchasingDAO.GetInfoServiceTrans(madv);
                    /*string bizAddress = "";
                    if (ConfigurationManager.AppSettings.GetValues(transCompanyId)[0] != null)
                    {
                        bizAddress = ConfigurationManager.AppSettings.GetValues(transCompanyId)[0];
                    }
                    else
                    {
                        bizAddress = ConfigurationManager.AppSettings.GetValues("biz")[0];
                    }*/
                    VanChuyen.FedexWebService1 proxy = new BizWebservice.VanChuyen.FedexWebService1();
                    proxy.Url = sv.LinkWebService;
                    string id = proxy.Authenticate(sv.UserName, sv.PassWord);
                    string url = proxy.TransportGoods(id, validationCode, soluong, DateTime.Today.Date.AddDays(1), contact.DiaChi, transtype, sv.BizAddress);
                    // if (url.IndexOf("http://") >= 0 || url.IndexOf("https://") >= 0)
                    if (url.IndexOf(".aspx?") >= 0)
                    {
                        // string package = proxy.GetPackageInfo(id, url);
                        int result1 = GeneralPurchasingDAO.ConfirmOrder(madh, contact.DiaChi, sid);

                        /*  if (result1 != 1)
                          {
                              proxy.CancelPackage(id, url);
                          }*/
                    }
                    return url;
                }
                else
                {
                    return "false";
                }
            }
            else
            {
                return "Invalid sid";
            }
        }
        public static string Confirm(string sid, string transCompanyId, string transTypeId, string validationCode, string contact)
        {
            int result = ConsumerDAO.CheckAvaliableSID(sid);
            if (result >= 1)
            {
                int madv = 0;
                if (int.TryParse(transCompanyId, out madv))
                {
                    int madh = 0;
                    int.TryParse(validationCode, out madh);
                    int soluong = GeneralPurchasingDAO.GetNumberCouponInOrder(madh);
                    int transtype = 0;
                    int.TryParse(transTypeId, out transtype);
                    SERVICE_TRANS_DTO sv = GeneralPurchasingDAO.GetInfoServiceTrans(madv);
                    /*string bizAddress = "";
                    if (ConfigurationManager.AppSettings.GetValues(transCompanyId)[0] != null)
                    {
                        bizAddress = ConfigurationManager.AppSettings.GetValues(transCompanyId)[0];
                    }
                    else
                    {
                        bizAddress = ConfigurationManager.AppSettings.GetValues("biz")[0];
                    }*/
                    VanChuyen.FedexWebService1 proxy = new BizWebservice.VanChuyen.FedexWebService1();
                    proxy.Url = sv.LinkWebService;
                    string id = proxy.Authenticate(sv.UserName, sv.PassWord);
                    string url = proxy.TransportGoods(id, validationCode, soluong, DateTime.Today.Date.AddDays(1), contact, transtype, sv.BizAddress);
                   // if (url.IndexOf("http://") >= 0 || url.IndexOf("https://") >= 0)
                    if(url.IndexOf(".aspx?")>=0)
                    {
                       // string package = proxy.GetPackageInfo(id, url);
                        int result1 = GeneralPurchasingDAO.ConfirmOrder(madh, contact,sid);
                        
                      /*  if (result1 != 1)
                        {
                            proxy.CancelPackage(id, url);
                        }*/
                    }
                    return url;
                }
                else
                {
                    return "false";
                }
            }
            else
            {
                return "Invalid sid";
            }
        }
    }
}
