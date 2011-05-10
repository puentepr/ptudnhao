using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Web;
using System.Data;
using BIZ.DTO;
namespace BIZ.DAO
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
            ds.Add(new SqlParameter("@moTaSanPham", proDTO.MoTaSanPham));
            ds.Add(new SqlParameter("@linkHinhAnh", proDTO.HinhAnh));
            ds.Add(new SqlParameter("@chatLuong", proDTO.ChatLuong));
            ds.Add(new SqlParameter("@giaGoc", proDTO.Gia));
            ds.Add(new SqlParameter("@soLuong", proDTO.SoLuong));
            ds.Add(new SqlParameter("@donViTinh", proDTO.DonViTinh));
            ds.Add(new SqlParameter("@soLuongConLai", proDTO.SoLuongConLai));
            ds.Add(new SqlParameter("@ngayDangSanPham", proDTO.NgayDangSanPham));
            ds.Add(new SqlParameter("@ngaySuaDoi", proDTO.NgaySuaDoi));
            ds.Add(new SqlParameter("@tinhTrangSanPham", proDTO.TinhTrangSanPham));
            //ds.Add(new SqlParameter("@ngayXoa", proDTO.NgayXoa));
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

        public static List<SAN_PHAM_DTO> SelectingAllProducts()
        {
            helper.connect();
            List<SAN_PHAM_DTO> ds = new List<SAN_PHAM_DTO>();
            string sqlCommand = "sp_LayDanhSachSanPham";
            try
            {
                List<SqlParameter> list = new List<SqlParameter>();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                foreach (DataRow dr in table.Rows)
                {
                    SAN_PHAM_DTO proDTO = new SAN_PHAM_DTO();
                    proDTO.MaSanPham = dr["MASP"].ToString();
                    /*proDTO.MaLoaiSanPham = int.Parse(dr["MALSP"].ToString());*/
                    proDTO.TenSanPham = dr["TENSP"].ToString();
                    /*proDTO.MoTaSanPham = dr["MOTA"].ToString();
                    proDTO.HinhAnh = dr["HINHANH"].ToString();
                    proDTO.ChatLuong = dr["CHATLUONG"].ToString();
                    proDTO.Gia = float.Parse(dr["GIA"].ToString());
                    proDTO.SoLuong = int.Parse(dr["SOLUONG"].ToString());
                    proDTO.DonViTinh = dr["DVTINH"].ToString();
                    proDTO.SoLuongConLai = int.Parse(dr["SLCONLAI"].ToString());
                    proDTO.NgayDangSanPham = DateTime.Parse(dr["NGAYDSP"].ToString());
                    proDTO.NgaySuaDoi = DateTime.Parse(dr["NGAYSD"].ToString());
                    proDTO.TinhTrangSanPham = dr["TINHTRANGSP"].ToString();
                    proDTO.NgayXoa = DateTime.Parse(dr["NGAYXOA"].ToString());*/
                    ds.Add(proDTO);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                helper.disconnect();
            }
            return ds;
        }
        public static SAN_PHAM_DTO GetProductInfor(string masp)
        {
            helper.connect();
            string sqlCommand="sp_GetProductInfor";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@masp",masp));
            SqlParameter soluong=new SqlParameter("@soluong",SqlDbType.Int);
            soluong.Direction=ParameterDirection.Output;
            list.Add(soluong);
            try
            {
                SAN_PHAM_DTO sp = new SAN_PHAM_DTO();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    DataRow row=table.Rows[0];
                    sp.ChatLuong=row["CHATLUONG"].ToString();
                    sp.DonViTinh=row["DVTINH"].ToString();
                    float price=0;
                    float.TryParse(row["GIA"].ToString(),out price);
                    sp.Gia=price;
                    sp.HinhAnh="../../Content/images/products/"+row["HINHANH"].ToString();
                    int maloai=0;
                    int.TryParse(row["MALSP"].ToString(),out maloai);
                    sp.MaLoaiSanPham=maloai;
                    sp.MaSanPham=row["MASP"].ToString();
                    sp.MoTaSanPham=row["MOTA"].ToString();
                    sp.NgayDangSanPham=DateTime.Parse(row["NGAYDSP"].ToString());
                    sp.NgaySuaDoi=DateTime.Parse(row["NGAYSD"].ToString());
                    float slcl=0;
                    float.TryParse(row["SLCONLAI"].ToString(),out slcl);
                    sp.SoLuongConLai=slcl;
                    sp.SoNguoiMua=(int)soluong.Value;
                    sp.TenSanPham=row["TENSP"].ToString();
                    


                }
                return sp;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                helper.disconnect();
            }
        }
    }
}
