using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;
using System;

namespace BIZ.DAO
{
    public class CouponDAO
    {
        static MyDataProvider helper = new MyDataProvider();

        public static void CreateCoupon(COUPON_DTO couDTO)
        {
            helper.connect();
            string sqlCommand = "sp_TaoCoupon";
            List<SqlParameter> ds = new List<SqlParameter>();
            ds.Add(new SqlParameter("@maCoupon", couDTO.MaCoupon));
            ds.Add(new SqlParameter("@maSanPham", couDTO.MaSanPham));
            ds.Add(new SqlParameter("@giaSauKhiGiam", couDTO.GiaSauGiam));
            ds.Add(new SqlParameter("@tgBatDau", couDTO.ThoiGianBD));
            ds.Add(new SqlParameter("@tgKetThuc", couDTO.ThoiGianKT));
            ds.Add(new SqlParameter("@soLuongSanPhamMin", couDTO.SoLuongSanPhamMin));
            ds.Add(new SqlParameter("@tinhTrangCoupon", couDTO.TinhTrangCoupon));
            ds.Add(new SqlParameter("@dkSuDung", couDTO.DieuKienSuDung));
            ds.Add(new SqlParameter("@giaGoc", couDTO.GiaGoc));
            ds.Add(new SqlParameter("@dvTienTe", couDTO.DonViTienTe));
            ds.Add(new SqlParameter("@soLuongCouponGiamGia", couDTO.SoLuongCouponMin));
            try
            {
                helper.executeNonQueryProcedure(sqlCommand, ds);
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
