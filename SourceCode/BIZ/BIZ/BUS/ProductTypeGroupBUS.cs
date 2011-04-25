using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;
using BIZ.DAO;

namespace BIZ.BUS
{
    public class ProductTypeGroupBUS
    {
        public static List<NHOM_LOAISP_DTO> SelectingAllProductTypeGroup()
        {
            try
            {
                return ProductTypeGroupDAO.SeletingAllProductTypeGroup();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
