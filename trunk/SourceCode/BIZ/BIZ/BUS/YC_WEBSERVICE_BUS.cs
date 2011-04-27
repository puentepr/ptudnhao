using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BIZ.DAO;
using BIZ.DTO;
namespace BIZ.BUS
{
    public class YC_WEBSERVICE_BUS
    {
        public static int ValidateUserName(string username,string pass)
        {
            try
            {
                return YC_WEBSERVICE_DAO.ValidateUserName(username,pass);
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
                int kq= YC_WEBSERVICE_DAO.InsertYCWebService(yc);
                return kq;
            }
            catch (Exception e)
            {
                
                throw e;
            }
        }
    }
}
