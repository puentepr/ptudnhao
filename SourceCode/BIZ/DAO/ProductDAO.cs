using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Web;
using System.Data;
using DTO;
namespace DAO
{
    public class ProductDAO
    {
        static MyDataProvider helper = new MyDataProvider();

        public static void AddProduct(SAN_PHAM_DTO proDTO)
        {
            helper.connect();
            string sqlCommad = "sp_ThemSanPham";
            List<SqlParameter> ds = new List<SqlParameter>();
            ds.Add(new SqlParameter("@maSanPham", proDTO.MaSanPham));
            ds.Add(new SqlParameter("@maLoaiSanPham", proDTO.MaLoaiSanPham));
            ds.Add(new SqlParameter("@tenSanPham", proDTO.TenSanPham));
            ds.Add(new SqlParameter("@moTa", proDTO.MoTaSanPham));
            ds.Add(new SqlParameter("@linkHinhAnh", proDTO.HinhAnh));
            ds.Add(new SqlParameter("@chatLuong", proDTO.ChatLuong));
            ds.Add(new SqlParameter("@giaGoc", proDTO.Gia));
            ds.Add(new SqlParameter("@soLuong", proDTO.SoLuong));
            ds.Add(new SqlParameter("@dvTinh", proDTO.DonViTinh));
            ds.Add(new SqlParameter("@soLuongConLai", proDTO.SoLuongConLai));
            ds.Add(new SqlParameter("@ngayDang", proDTO.NgayDangSanPham));
            ds.Add(new SqlParameter("@ngaySuaDoi", proDTO.NgaySuaDoi));
            ds.Add(new SqlParameter("@tinhTrangSP", proDTO.TinhTrangSanPham));
            ds.Add(new SqlParameter("@ngayXoa", proDTO.NgayXoa));
            try
            {
                helper.executeNonQueryProcedure(sqlCommad, ds);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                helper.disconnect();
            }
        }
    }
}
