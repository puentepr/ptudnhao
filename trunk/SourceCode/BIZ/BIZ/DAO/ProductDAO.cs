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

        public static List<SAN_PHAM_DTO> FastSearchingByKeyWord(string keyWord)
        {
            helper.connect();
            string sqlCommand = "sp_TimKiemCoBan";
            try
            {
                List<SqlParameter> ds = new List<SqlParameter>();
                ds.Add(new SqlParameter("@keyWord", keyWord));
                DataTable dt = new DataTable();
                dt = helper.executeQueryDataTableProcedure(sqlCommand, ds);
                List<SAN_PHAM_DTO> dsproDTO = new List<SAN_PHAM_DTO>();
                foreach (DataRow dr in dt.Rows)
                {
                    SAN_PHAM_DTO proDTO = new SAN_PHAM_DTO();
                    //COUPON_DTO couDTO = new COUPON_DTO();
                    //couDTO.MaCoupon = dr["MACP"].ToString();
                    proDTO.MaSanPham = dr["MASP"].ToString();
                    proDTO.TenSanPham = dr["TENSP"].ToString();
                    proDTO.MoTaSanPham = dr["MOTA"].ToString();
                    proDTO.ChatLuong = dr["CHATLUONG"].ToString();
                    float gia = 0;
                    float.TryParse(dr["GIA"].ToString(), out gia);
                    proDTO.Gia = gia;
                    proDTO.HinhAnh = "../../Content/images/products/" + dr["HINHANH"].ToString();
                    float soLuongConLai = 0;
                    float.TryParse(dr["SLCONLAI"].ToString(), out soLuongConLai);
                    proDTO.SoLuongConLai = soLuongConLai;
                    dsproDTO.Add(proDTO);
                }
                return dsproDTO;
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
        public static List<SAN_PHAM_DTO> SelectTopNewProducts()
        {
            helper.connect();
            string sqlCommand = "sp_SelectNewProducts";
            List<SqlParameter> list = new List<SqlParameter>();
            try
            {
                List<SAN_PHAM_DTO> ds = new List<SAN_PHAM_DTO>();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    TransforListSanPham(table,ds);
                }
                return ds;
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
        public static List<SAN_PHAM_DTO> SelectModifyNewProducts()
        {
            helper.connect();
            string sqlCommand = "sp_SelectModifyProducts";
            List<SqlParameter> list = new List<SqlParameter>();
            try
            {
                List<SAN_PHAM_DTO> ds = new List<SAN_PHAM_DTO>();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    TransforListSanPham(table, ds);
                }
                return ds;
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

        public static List<SAN_PHAM_DTO> AdvanceSearch(string tensp, int lsp, string chatluong, float minprice, float maxprice)
        {
            helper.connect();
            string sqlCommand="sp_AdvanceSearch";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@tensp",tensp));
            list.Add(new SqlParameter("@malsp",lsp));
            list.Add(new SqlParameter("@chatluong",chatluong));
            list.Add(new SqlParameter("@minprice",minprice));
            list.Add(new SqlParameter("@maxprice",maxprice));

            SqlParameter put = new SqlParameter("@put", SqlDbType.NVarChar);
            put.Size = 100;
            put.Direction = ParameterDirection.Output;
            list.Add(put);
            try
            {
                List<SAN_PHAM_DTO> listsp = new List<SAN_PHAM_DTO>();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    TransforListSanPham(table, listsp);
                }
                return listsp;
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
        private static void TransforListSanPham(DataTable table,List<SAN_PHAM_DTO>ds)
        {
            int n=table.Rows.Count;
            for(int i=0;i<n;i++)
            {
                SAN_PHAM_DTO sp = new SAN_PHAM_DTO();
                DataRow row = table.Rows[i];
                sp.Index = i;
                sp.ChatLuong = row["CHATLUONG"].ToString();
                sp.DonViTinh = row["DVTINH"].ToString();
                float price = 0;
                float.TryParse(row["GIA"].ToString(), out price);
                sp.Gia = price;
                sp.HinhAnh = "../../Content/images/products/" + row["HINHANH"].ToString();
                int maloai = 0;
                int.TryParse(row["MALSP"].ToString(), out maloai);
                sp.MaLoaiSanPham = maloai;
                sp.MaSanPham = row["MASP"].ToString();
                sp.MoTaSanPham = row["MOTA"].ToString();
                sp.NgayDangSanPham = DateTime.Parse(row["NGAYDSP"].ToString());
                sp.NgaySuaDoi = DateTime.Parse(row["NGAYSD"].ToString());
                float slcl = 0;
                float.TryParse(row["SLCONLAI"].ToString(), out slcl);
                sp.SoLuongConLai = slcl;
                // sp.SoNguoiMua = (int)soluong.Value;
                sp.TenSanPham = row["TENSP"].ToString();
                ds.Add(sp);
            }
        }

        #region Lấy danh sách sản phẩm theo tình trạng
        public static List<SAN_PHAM_DTO> LayDanhSachSanPhamTheoTinhTrang(string tinhtrang)
        {
            helper.connect();
            List<SAN_PHAM_DTO> ds = new List<SAN_PHAM_DTO>();

            string sqlCommand = "sp_LayDanhSachSanPhamTheoTrangThai";
            List<SqlParameter> list = new List<SqlParameter>();

            list.Add(new SqlParameter("@TINHTRANGSP", tinhtrang));
            try
            {
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                foreach (DataRow dr in table.Rows)
                {
                    SAN_PHAM_DTO proDTO = new SAN_PHAM_DTO();
                    proDTO.MaSanPham = dr["MASP"].ToString();
                    proDTO.MaLoaiSanPham = int.Parse(dr["MALSP"].ToString());
                    proDTO.TenSanPham = dr["TENSP"].ToString();
                    proDTO.MoTaSanPham = dr["MOTA"].ToString();
                    proDTO.HinhAnh = dr["HINHANH"].ToString();
                    proDTO.ChatLuong = dr["CHATLUONG"].ToString();
                    proDTO.Gia = float.Parse(dr["GIA"].ToString());
                    proDTO.SoLuong = int.Parse(dr["SOLUONG"].ToString());
                    proDTO.DonViTinh = dr["DVTINH"].ToString();
                    proDTO.SoLuongConLai = int.Parse(dr["SLCONLAI"].ToString());
                    proDTO.NgayDangSanPham = DateTime.Parse(dr["NGAYDSP"].ToString());
                    proDTO.NgaySuaDoi = DateTime.Parse(dr["NGAYSD"].ToString());
                    proDTO.TinhTrangSanPham = dr["TINHTRANGSP"].ToString();
                    //proDTO.NgayXoa = DateTime.Parse(dr["NGAYXOA"].ToString());
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
        #endregion

        #region Lấy thông tin sản phẩm theo mã sản phẩm
        public static SAN_PHAM_DTO LayThongTinSanPhamTheoMaSP(string masp)
        {
            helper.connect();

            string sqlCommand = "sp_GetProductInfor";
            List<SqlParameter> list = new List<SqlParameter>();

            list.Add(new SqlParameter("@masp", masp));

            SqlParameter soluong = new SqlParameter("@soluong", SqlDbType.Int);
            soluong.Direction = ParameterDirection.Output;

            list.Add(soluong);
            try
            {
                SAN_PHAM_DTO sp = new SAN_PHAM_DTO();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    DataRow row = table.Rows[0];
                    //gán
                    sp.MaSanPham = row["MASP"].ToString();
                    sp.MaLoaiSanPham = int.Parse(row["MALSP"].ToString());
                    sp.TenSanPham = row["TENSP"].ToString();
                    sp.MoTaSanPham = row["MOTA"].ToString();
                    sp.HinhAnh = "../../Content/images/products/" + row["HINHANH"].ToString();
                    sp.ChatLuong = row["CHATLUONG"].ToString();
                    sp.Gia = float.Parse(row["GIA"].ToString());
                    //? SoLuong
                    sp.SoLuong = float.Parse(row["SOLUONG"].ToString());
                    sp.DonViTinh = row["DVTINH"].ToString();
                    sp.SoLuongConLai = float.Parse(row["SLCONLAI"].ToString());
                    sp.NgayDangSanPham = DateTime.Parse(row["NGAYDSP"].ToString());
                    sp.NgaySuaDoi = DateTime.Parse(row["NGAYSD"].ToString());
                    sp.TinhTrangSanPham = row["TINHTRANGSP"].ToString();
                    //? NgayXoa
                    //sp.NgayXoa = DateTime.Parse(row["NGAYXOA"].ToString());
                    sp.SoNguoiMua = (int)soluong.Value;
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
        #endregion

        #region Cập nhật thông tin Sản Phẩm
        public static int CapNhatSanPham(SAN_PHAM_DTO sp)
        {
            helper.connect();
            string sqlCommand = "sp_UpdateSanPham";

            List<SqlParameter> list = new List<SqlParameter>();

            list.Add(new SqlParameter("@MASP", sp.MaSanPham));
            list.Add(new SqlParameter("@MOTA", sp.MoTaSanPham));
            list.Add(new SqlParameter("@CHATLUONG", sp.ChatLuong));
            list.Add(new SqlParameter("@GIA", sp.Gia));
            list.Add(new SqlParameter("@SOLUONG", sp.SoLuong));
            list.Add(new SqlParameter("@SLCONLAI", sp.SoLuongConLai));
            list.Add(new SqlParameter("@DVTINH", sp.DonViTinh));
            list.Add(new SqlParameter("@TINHTRANGSP", sp.TinhTrangSanPham));

            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);

            try
            {
                helper.executeNonQueryProcedure(sqlCommand, list);
                return (int)result.Value;
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

        #region Xóa sản phẩm
        public static int XoaSanPham(string maSP, string trangThai, DateTime ngayXoa )
        {
            helper.connect();
            string sqlCommand = "sp_DeleteSanPham";
            List<SqlParameter> list = new List<SqlParameter>();
            
            //gán
            list.Add(new SqlParameter("@MASP",maSP));
            list.Add(new SqlParameter("@NGAYXOA",ngayXoa));
            list.Add(new SqlParameter("@TINHTRANGSP",trangThai));

            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);

            try
            {
                helper.executeNonQueryProcedure(sqlCommand, list);
                return (int)result.Value;
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
