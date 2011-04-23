using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using DTO;
using DAO;

namespace BUS
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
    }
}
