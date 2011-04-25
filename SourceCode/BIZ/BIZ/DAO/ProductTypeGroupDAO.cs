using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;

namespace BIZ.DAO
{
    public class ProductTypeGroupDAO
    {
        static MyDataProvider helper = new MyDataProvider();

        public static List<NHOM_LOAISP_DTO> SeletingAllProductTypeGroup()
        {
            List<NHOM_LOAISP_DTO> ds = new List<NHOM_LOAISP_DTO>();
            List<SqlParameter> list = new List<SqlParameter>();
            string sqlCommand = "sp_LayDanhSachNhomLoaiSanPham";
            try
            {
                DataTable dt = helper.executeQueryDataTableProcedure(sqlCommand, list);
                foreach (DataRow dr in dt.Rows)
                {
                    NHOM_LOAISP_DTO proTypeGroDTO = new NHOM_LOAISP_DTO();
                    proTypeGroDTO.MaNhomLoaiSanPham = int.Parse(dr["MANHOM"].ToString());
                    proTypeGroDTO.TenNhomLoaiSanPham = dr["TENNHOM"].ToString();
                    ds.Add(proTypeGroDTO);
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                helper.disconnect();
            }
            return ds;
        }
    }
}
