using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using BIZ.DTO;
using BIZ.DAO;

namespace BIZ.BUS
{
    public class ProductTypeBUS
    {
        public static List<LOAISP_DTO> SelectingAllProductType()
        {
            try
            {
                return ProductTypeDAO.SelectingAllProductType();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static List<LOAISP_DTO> SelectingAllProductTypeByGroup(int maNhomLoaiSanPham)
        {
            try
            {
                return ProductTypeDAO.SelectingAllProductTypeByGroup(maNhomLoaiSanPham);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
