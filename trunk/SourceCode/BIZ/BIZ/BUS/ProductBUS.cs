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
        public static List<SAN_PHAM_DTO> AdvanceSearch(string tensp, int lsp, string chatluong, float minprice, float maxprice)
        {
            try
            {
                return ProductDAO.AdvanceSearch(tensp, lsp, chatluong, minprice, maxprice);
            }
            catch(Exception e)
            {
                throw e;
            }
        }

        #region Lấy danh sách sản phẩm theo tình trạng
        public static List<SAN_PHAM_DTO> LayDanhSachSanPhamTheoTinhTrang(string tinhtrang)
        {
            try
            {
                return ProductDAO.LayDanhSachSanPhamTheoTinhTrang(tinhtrang);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Lấy thông tin sản phẩm theo mã sản phẩm
        public static SAN_PHAM_DTO LayThongTinSanPhamTheoMaSP(string masp)
        {
            try
            {
                return ProductDAO.LayThongTinSanPhamTheoMaSP(masp);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        #endregion

        #region Cập nhật thông tin Sản Phẩm
        public static int CapNhatSanPham(SAN_PHAM_DTO sp)
        {
            try
            {
                return ProductDAO.CapNhatSanPham(sp);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        #endregion
    }
}
