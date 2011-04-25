using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;

namespace BIZ.DAO
{
    public class ProductTypeDAO
    {
        static MyDataProvider helper = new MyDataProvider();
        public static List<LOAISP_DTO> SelectingAllProductType()
        {
            helper.connect();
            List<LOAISP_DTO> ds = new List<LOAISP_DTO>();
            List<SqlParameter> list = new List<SqlParameter>();
            string sqlCommand = "sp_LayDanhSachLoaiSanPham";
            try
            {
                DataTable dt = helper.executeQueryDataTableProcedure(sqlCommand, list);
                foreach (DataRow dr in dt.Rows)
                {
                    LOAISP_DTO proTypeDTO = new LOAISP_DTO();
                    proTypeDTO.MaLoaiSanPham = int.Parse(dr["MALSP"].ToString());
                    proTypeDTO.MaNhomSanPham = int.Parse(dr["MANHOM"].ToString());
                    proTypeDTO.TenLoaiSanPham = dr["TENLSP"].ToString();
                    ds.Add(proTypeDTO);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                helper.disconnect();
            }
            return ds;
        }

        public static List<LOAISP_DTO> SelectingAllProductTypeByGroup(int maNhomLoaiSanPham)
        {
            helper.connect();
            List<LOAISP_DTO> ds = new List<LOAISP_DTO>();
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@maNhomLSP", maNhomLoaiSanPham));
            string sqlCommand = "sp_LayDanhSachLoaiSanPhamTheoNhom";
            try
            {
                DataTable dt = helper.executeQueryDataTableProcedure(sqlCommand, list);
                foreach (DataRow dr in dt.Rows)
                {
                    LOAISP_DTO proTypeDTO = new LOAISP_DTO();
                    proTypeDTO.MaLoaiSanPham = int.Parse(dr["MALSP"].ToString());
                    //proTypeDTO.MaNhomSanPham = int.Parse(dr["MANHOM"].ToString());
                    proTypeDTO.TenLoaiSanPham = dr["TENLSP"].ToString();
                    ds.Add(proTypeDTO);
                }
            }
            catch (Exception ex)
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
