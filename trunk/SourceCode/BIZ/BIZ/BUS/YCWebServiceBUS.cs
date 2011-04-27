using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BIZ.DTO;
using BIZ.DAO;

namespace BIZ.BUS
{
    public class YCWebServiceBUS
    {
        public static List<YC_WEBSERVICE_DTO> SelectNewRequest()
        {
            try
            {
                return YeuCauWebserviceDAO.SelectNewRequest();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static void UpdateStatusRequest(List<YC_WEBSERVICE_DTO> list)
        {
            try
            {
                YeuCauWebserviceDAO.UpdateStatusRequest(list);
                string subject = "Thông báo kết quả duyệt sử dụng webservice";
                foreach (YC_WEBSERVICE_DTO yc in list)
                {
                    if (yc.TinhTrangYeuCau == 1)
                    {
                        string body = "<b style='color:green'>Doanh nghiệp bạn đã được cho phép sử dụng webservice tại hệ thống của chúng tôi</b>";
                        Email.sendMail(yc.Email, body, subject);
                    }
                    if (yc.TinhTrangYeuCau == -1)
                    {
                        string body = "<b style='color:red'>Doanh nghiệp bạn đã không được đồng ý cho phép sử dụng webservice tại hệ thống của chúng tôi</b>";
                        Email.sendMail(yc.Email, body, subject);
                    }
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int ValidateUserName(string username, string pass)
        {
            try
            {
                return YeuCauWebserviceDAO.ValidateUserName(username, pass);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public static int InsertYCWebService(YC_WEBSERVICE_DTO yc)
        {
            try
            {
                int kq = YeuCauWebserviceDAO.InsertYCWebService(yc);
                return kq;
            }
            catch (Exception e)
            {

                throw e;
            }
        }
    }
}
