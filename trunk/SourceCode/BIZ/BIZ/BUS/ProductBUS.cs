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
    public class ProductBUS
    {
        public static void AddProduct(SAN_PHAM_DTO proDTO)
        {
            try
            {
                ProductDAO.AddProduct(proDTO);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static List<SAN_PHAM_DTO> SelectingAllProduct()
        {
            try
            {
                return ProductDAO.SelectingAllProducts();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static SAN_PHAM_DTO GetProductInfor(string masp)
        {
            try
            {
                return ProductDAO.GetProductInfor(masp);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static List<SAN_PHAM_DTO> SelectTopNewProducts()
        {
            try
            {
                return ProductDAO.SelectTopNewProducts();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static List<SAN_PHAM_DTO> SelectModifyNewProducts()
        {
            try
            {
                return ProductDAO.SelectModifyNewProducts();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
