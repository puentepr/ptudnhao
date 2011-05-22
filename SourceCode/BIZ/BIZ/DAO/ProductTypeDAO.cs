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

        #region Lấy thông tin loại sản phẩm theo mã loại sp
        public static LOAISP_DTO LayLoaiSanPhamTheoMaLoaiSP(int malsp)
        {
            helper.connect();

            string sqlCommand = "sp_LayLoaiSanPhamTheoMaLoaiSP";
            List<SqlParameter> list = new List<SqlParameter>();

            list.Add(new SqlParameter("@MALSP", malsp));

            try
            {
                LOAISP_DTO lsp = new LOAISP_DTO();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);

                if (table != null && table.Rows.Count > 0)
                {
                    DataRow row = table.Rows[0];
                    lsp.MaLoaiSanPham = int.Parse(row["MALSP"].ToString());
                    lsp.MaNhomSanPham = int.Parse(row["MANHOM"].ToString());
                    lsp.TenLoaiSanPham = row["TENLSP"].ToString();
                }
                return lsp;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                helper.disconnect();
            }
        }
        #endregion

    }
}
