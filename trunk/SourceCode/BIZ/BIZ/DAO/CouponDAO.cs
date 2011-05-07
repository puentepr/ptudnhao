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
    }
}
