using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BIZ.DAO;
using BIZ.DTO;

namespace BIZ.BUS
{
    public class DonHangBUS
    {
        public static int InsetOrder(DON_HANG_DTO dh)
        {
            try
            {
                return DonHangDAO.InsertOrder(dh);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static void InsertCTOrder(CHI_TIET_DON_HANG_DTO ct)
        {
            try
            {
                DonHangDAO.InsertCTOrder(ct);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int InsertPackage(PACKAGEINFO_DTO pac, int madh)
        {
            try
            {
                return DonHangDAO.InsertPackage(pac, madh);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static List<DON_HANG_DTO> GetAllOrderKH(string username)
        {
            try
            {
                return DonHangDAO.GetAllOrderKH(username);
            }
            catch (Exception e)
            {
                throw e;
            }

        }
    }
}
