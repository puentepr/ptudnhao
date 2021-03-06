﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BizWebservice.BUS;
using BizWebservice.DTO;

namespace BizWebservice
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string Authenticate(string username, string password)
        {
            string sid = GeneralPurchasing.Authenticate(username, password) ;
            return sid;
        }
        [WebMethod]
        public Coupon[] FindAllCoupons(string sid)
        {
            return GeneralPurchasing.FindAllCoupons(sid);
        }
        [WebMethod]
        public Coupon[] FindCoupons(string sid, string productName,
                            DateTime startDate, DateTime endDate,
                            int minPrice, int maxPrice)
        {
            return GeneralPurchasing.FindCoupons(sid, productName, startDate, endDate, minPrice, maxPrice);
        }
        [WebMethod]
        public Coupon FindCouponInfo(string sid, string couponId)
        {
            return GeneralPurchasing.FindCouponInfo(sid, couponId);
        }
        [WebMethod]
        public bool RegisterCoupon(string sid, string couponId)
        {
            return GeneralPurchasing.RegisterCoupon(sid, couponId);
        }
        [WebMethod]
        public string OrderCoupon(string sid, string couponId, int count)
        {
            return GeneralPurchasing.OrderCoupon(sid, couponId, count);
        }
        [WebMethod]
        public bool ValidateOrder(string sid, string validationCode)
        {
            return GeneralPurchasing.ValidateOrder(sid, validationCode);
        }
        [WebMethod]
        public bool CancelOrder(string sid, string validationCode)
        {
            return GeneralPurchasing.CancelOrder(sid, validationCode);
        }
        [WebMethod]
        public TransportCompany[] GetTranports()
        {
            return GeneralPurchasing.GetTransportCompany();
        }
        [WebMethod]
        public string ConfirmOrder(string sid, string transCompanyId, string transTypeId, string validationCode, ContactInfo contact)
        {
            return GeneralPurchasing.ConfirmOrder(sid, transCompanyId, transTypeId, validationCode, contact);
        }
        [WebMethod]
        public string Confirm(string sid, string transCompanyId, string transTypeId, string validationCode, string contact)
        {
            return GeneralPurchasing.Confirm(sid, transCompanyId, transTypeId, validationCode, contact);
        }
    }
}
