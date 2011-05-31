using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
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
            ds.Add(new SqlParameter("@giaSeGiam", couDTO.GiaSauGiam));
            ds.Add(new SqlParameter("@thoiGianBatDau", couDTO.ThoiGianBD));
            ds.Add(new SqlParameter("@thoiGianKetThuc", couDTO.ThoiGianKT));
            ds.Add(new SqlParameter("@soLuongSanPhamMin", couDTO.SoLuongSanPhamMin));
            ds.Add(new SqlParameter("@tinhTrangCoupon", couDTO.TinhTrangCoupon));
            ds.Add(new SqlParameter("@dieuKienSuDung", couDTO.DieuKienSuDung));
            ds.Add(new SqlParameter("@giaGoc", couDTO.GiaGoc));
            ds.Add(new SqlParameter("@donViTienTe", couDTO.DonViTienTe));
            ds.Add(new SqlParameter("@soLuongCouponMinGiamGia", couDTO.SoLuongCouponMin));
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
        public static List<CouponNhieuDTO> GetExCoupons()
        {
            helper.connect();
            string sqlComman = "sp_SelectExCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            try
            {
                List<CouponNhieuDTO> cps = new List<CouponNhieuDTO>();
                DataTable table = helper.executeQueryDataTableProcedure(sqlComman, list);
                if (table != null && table.Rows.Count > 0)
                {
                    
                    foreach(DataRow row in table.Rows)
                    {
                        CouponNhieuDTO cp=new CouponNhieuDTO();
                        cp.MaCoupon=row["MACP"].ToString();
                        cp.SoLuongCouponMin=int.Parse(row["SLCPMINGIAMGIA"].ToString());
                        cp.ThoiGianKT=DateTime.Parse(row["THOIGIANKT"].ToString());
                        cp.Title = "Xem chi tiết và xử lý";
                        cps.Add(cp);
                    }
                    
                }
                return cps;
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
        public static List<DonHangCouponNhieuDTO>GetOrderExCoupon(string macp, ref int numberOder,ref int numberWS)
        {
            helper.connect();
            string sqlCommand="sp_SelectOrderExCoupon";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@macp",macp));
            SqlParameter count=new SqlParameter("@count",SqlDbType.Int);
            count.Direction=ParameterDirection.Output;
            list.Add(count);
            SqlParameter ws=new SqlParameter("@ws",SqlDbType.Int);
            ws.Direction=ParameterDirection.Output;
            list.Add(ws);
            try
            {
                DataTable table=helper.executeQueryDataTableProcedure(sqlCommand,list);
                
                List<DonHangCouponNhieuDTO>orders=new List<DonHangCouponNhieuDTO>();
                if(table!=null && table.Rows.Count>0)
                {
                    numberOder = (int)count.Value;
                    numberWS = (int)ws.Value;
                    foreach(DataRow row in table.Rows)
                    {
                        DonHangCouponNhieuDTO order=new DonHangCouponNhieuDTO();
                        order.MaDonHangCoupon=int.Parse(row["MADHCP"].ToString());
                        order.NgayDat=DateTime.Parse(row["NGAYDAT"].ToString());
                        order.SoLuongCoupon=int.Parse(row["SOLUONGCP"].ToString());
                        order.TenDN=row["TENDN"].ToString();
                        order.TinhTrang = row["TINHTRANGDH"].ToString();
                        orders.Add(order);
                    } 
                }
                return orders;
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                helper.disconnect();
            }
        }
        public static List<AcceptCouponDTO> AcceptOrdersCoupon(string macp, int typePrice,ref float price,ref string unit)
        {
            helper.connect();
            string sqlCommand = "sp_AceptOrderExCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@macp", macp));
            list.Add(new SqlParameter("@typePrice", typePrice));
            SqlParameter rePrice = new SqlParameter("@price", SqlDbType.Float);
            rePrice.Direction = ParameterDirection.Output;
            list.Add(rePrice);
            SqlParameter reUnit = new SqlParameter("@dvtien", SqlDbType.NVarChar);
            reUnit.Direction = ParameterDirection.Output;
            reUnit.Size = 10;
            list.Add(reUnit);
            try
            {
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                List<AcceptCouponDTO> links = new List<AcceptCouponDTO>();
                float.TryParse(rePrice.Value.ToString(), out price);
                unit = reUnit.Value.ToString();
                if (table != null && table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        AcceptCouponDTO link = new AcceptCouponDTO();
                        link.LinkWS= row["LINKWS"].ToString();
                        link.McUserName=row["MCUSERNAME"].ToString();
                        link.McPassWord=row["MCPASSWORD"].ToString();
                        link.TenDN = row["TENDN"].ToString();
                        links.Add(link);
                    }
                }
                return links;
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
        public static List<Coupon> SelectAnyCoupon()
        {
            helper.connect();
            string sqlCommand = "sp_SelectAnyCoupon";
            string sqlCommand1 = "sp_CountOrderCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            try
            {
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                List<Coupon> cpArray = new List<Coupon>();
                if (table != null && table.Rows.Count > 0)
                {
                    TransformToCouponList(sqlCommand1, table, cpArray);
                }
                return cpArray;
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
        public static List<Coupon> GetCouponInfo(string couponId)
        {
            helper.connect();
            string sqlCommand = "sp_FindCouponInfo";
            string sqlCommand1 = "sp_CountOrderCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@couponId", couponId));

            List<Coupon> cpArray = new List<Coupon>();
            try
            {
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    TransformToCouponList(sqlCommand1, table, cpArray);
                }
                return cpArray;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                helper.disconnect();
            }
           // return new Coupon();
        }
        public static void DeleteCoupon(string macp)
        {
            helper.connect();
            string sqlCommand = "sp_DeleteCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@macp", macp));

            List<Coupon> cpArray = new List<Coupon>();
            try
            {
                helper.executeNonQueryProcedure(sqlCommand, list);
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
        public static void UpdateCoupon(COUPON_DTO cp)
        {
            helper.connect();
            string sqlCommand = "sp_UpdateCoupon1";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@macp",cp.MaCoupon));
            list.Add(new SqlParameter("@start",cp.ThoiGianBD));
            list.Add(new SqlParameter("@end",cp.ThoiGianKT));
            list.Add(new SqlParameter("@slspmin",cp.SoLuongSanPhamMin));
            list.Add(new SqlParameter("@giasgiam",cp.GiaSauGiam));
            list.Add(new SqlParameter("@dksd",cp.DieuKienSuDung));
            list.Add(new SqlParameter("@giagoc",cp.GiaGoc));
            list.Add(new SqlParameter("@slcpmin",cp.SoLuongCouponMin));
            try
            {
                helper.executeNonQueryProcedure(sqlCommand, list);
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
        public static COUPON_DTO GetCouponInfor1(string macp)
        {
            helper.connect();
            string sqlCommand = "sp_SelectCouponInfor1";
           // string sqlCommand1 = "sp_CountOrderCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@macp",macp));

            try
            {
                COUPON_DTO cp = new COUPON_DTO();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    DataRow row = table.Rows[0];
                    cp.MaCoupon=row["MACP"].ToString();
                    cp.MaSanPham = row["MASP"].ToString();
                    cp.GiaSauGiam=float.Parse(row["GIASGIAM"].ToString());
                    cp.GiaGoc=float.Parse(row["GIAGOC"].ToString());
                    cp.DieuKienSuDung=row["DIEUKIENSD"].ToString();;
                    cp.DonViTienTe=row["DVTIENTE"].ToString();;
                    cp.SoLuongCouponMin=int.Parse(row["SLCPMINGIAMGIA"].ToString());
                    cp.SoLuongSanPhamMin=int.Parse(row["SLSPMIN"].ToString());
                    cp.ThoiGianBD=DateTime.Parse(row["THOIGIANBD"].ToString());
                    cp.ThoiGianKT=DateTime.Parse(row["THOIGIANKT"].ToString());
                    cp.TenSanPham= row["TENSP"].ToString();
                }
                return cp;
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
        private static void TransformToCouponList(string sqlCommand1, DataTable table, List<Coupon> cpArray)
        {
            int n = table.Rows.Count;
            for (int i = 0; i < n; i++)
            {
                Coupon cp = new Coupon();
                DataRow row = table.Rows[i];
                cp.DieuKienSuDung = row["DIEUKIENSD"].ToString();
                cp.DonViTien = row["DVTIENTE"].ToString();
                cp.GiaHangKhiChuaGiam = row["GIAGOC"].ToString();
                cp.GiaHangSauKhiGiam = row["GIASGIAM"].ToString();
                cp.LinkHinhAnh = new string[1];
                //pArray[i].LinkHinhAnh[0] = "http://www.beatifulhouse.somee.com/Content/images/products/" + row["HINHANH"].ToString();
               // cp.LinkHinhAnh[0] = ConfigurationManager.AppSettings.GetValues("image")[0].ToString() + row["HINHANH"].ToString();
                cp.LinkHinhAnh[0] ="../../Content/images/products/" +row["HINHANH"].ToString();
                cp.MaCoupon = row["MACP"].ToString();
                cp.MaMatHang = row["MASP"].ToString();
                cp.MaNhaCungCap = "BIZ";
                cp.NgayBatDau = DateTime.Parse(row["THOIGIANBD"].ToString());
                cp.NgayCouponBatDauDuocSuDung = cp.NgayBatDau;
                cp.NgayKetThuc = DateTime.Parse(row["THOIGIANKT"].ToString());
                cp.NgayCouponHetHan = cp.NgayKetThuc;
                List<SqlParameter> sql = new List<SqlParameter>();
                sql.Add(new SqlParameter("@macp", cp.MaCoupon));
                SqlParameter output = new SqlParameter("@count", SqlDbType.Int);
                output.Direction = ParameterDirection.Output;
                sql.Add(output);
                helper.executeNonQueryProcedure(sqlCommand1, sql);
                cp.SoLuongDaDat = (int)output.Value;
                float slcl = float.Parse(row["SLCONLAI"].ToString());
                int slspmin = int.Parse(row["SLSPMIN"].ToString());
                cp.SoLuongMuaLonNhat = (int)slcl / slspmin;
                cp.SoLuongThoaCoupon = int.Parse(row["SLCPMINGIAMGIA"].ToString());
                cp.TenMatHang = row["TENSP"].ToString();
                cp.TenNhaCungCap = "BeatifulhouseGroup";
                cp.ThongTinMoTa = row["MOTA"].ToString();
                cp.DieuKienSuDung = row["DIEUKIENSD"].ToString() + " .Mỗi coupon gồm " + slspmin.ToString() + " " + row["DVTINH"].ToString();
                cp.Title = "Xem chi tiết";
                if (row["TINHTRANGCP"].ToString() == "1" && cp.NgayKetThuc>=DateTime.Today)
                {
                    cp.TinhTrang = "Còn hiệu lực";
                }
                else
                {
                    cp.TinhTrang = "Hết hạn";
                }
                cpArray.Add(cp);
            }
        }
        public static void updateDate(string ma, DateTime date)
        {
            helper.connect();
            string sql = "Update COUPON set THOIGIANKT=@date, TINHTRANGCP=N'1' Where MACP=@ma";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@date", date));
            list.Add(new SqlParameter("@ma", ma));
            try
            {
                helper.executeNonQuery(sql, list);
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
        public static List<DonHangCP_DTO> GetDHCoupon(string username)
        {
            helper.connect();
            string sqlCommand = "sp_SelectOrderCouponByUsername";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@username", username));
            try
            {
                List<DonHangCP_DTO> dhs = new List<DonHangCP_DTO>();
                DataTable table = helper.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        DonHangCP_DTO dh = new DonHangCP_DTO();
                        dh.Madh=int.Parse(row["MADHCP"].ToString());
                        dh.MaSP=row["MASP"].ToString();
                        dh.NgayDat=DateTime.Parse(row["NGAYDAT"].ToString());
                        dh.SoLuong=int.Parse(row["SOLUONGCP"].ToString());
                        dh.TenSP=row["TENSP"].ToString();
                        dh.TinhTrang=row["TINHTRANGDH"].ToString();
                        dh.Title="Xem chi tiết";
                        dh.TongTien=float.Parse(row["TONGTIEN"].ToString());
                        dh.DvTien=row["DVTIENTE"].ToString();
                        dhs.Add(dh);
                    }
                }
                return dhs;
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
