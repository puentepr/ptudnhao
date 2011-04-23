using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using BizWebservice.DTO;

namespace BizWebservice.DAO
{
    public class GeneralPurchasingDAO
    {
        static MyDataProvider provider = new MyDataProvider();
        public static int Authenticate(string username, string password,string sid,DateTime dateOfIssue,DateTime deadline)
        {
            provider.connect();
            string sqlCommand = "sp_Authenticate";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@username", username));
            list.Add(new SqlParameter("@password", password));
            list.Add(new SqlParameter("@sid", sid));
            list.Add(new SqlParameter("@ngaycap", dateOfIssue));
            list.Add(new SqlParameter("@ngayhethieuluc", deadline));
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
               // provider.executeNonQueryProcedure(sqlCommand, list);
                provider.executeQueryDataTableProcedure(sqlCommand, list);
                return (int)result.Value;
            }
            catch (Exception e)
            {
              //  return -1;
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }
        public static Coupon[] FindAllCoupons()
        {
            provider.connect();
            string sqlCommand = "sp_FindAllCoupons";
            string sqlCommand1="sp_CountOrderCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            Coupon[] cpArray=new Coupon[0];
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    cpArray = TransFerToCouponArray(sqlCommand1, cpArray, table);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
            return cpArray;
        }
        public static Coupon[] FindCoupons(string productName,DateTime startDate,DateTime endDate,int minPrice,int maxPrice)
        {
            provider.connect();
            string sqlCommand = "sp_FindCoupons";
            string sqlCommand1 = "sp_CountOrderCoupon";
            productName = "%" + productName + "%";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@productName", productName));
            list.Add(new SqlParameter("@startDate", startDate));
            list.Add(new SqlParameter("@endDate", endDate));
            list.Add(new SqlParameter("@minPrice", minPrice));
            list.Add(new SqlParameter("@maxPrice", maxPrice));
            Coupon[] cpArray = new Coupon[0];
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    cpArray = TransFerToCouponArray(sqlCommand1, cpArray, table);
                }
            }
            catch (Exception e)
            {
            }
            finally
            {
                provider.disconnect();
            }
            return cpArray;
        }

        public static Coupon FindCouponInfo(string couponId)
        {
            provider.connect();
            string sqlCommand = "sp_FindCouponInfo";
            string sqlCommand1 = "sp_CountOrderCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@couponId", couponId));

            Coupon[] cpArray = new Coupon[0];
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    cpArray = TransFerToCouponArray(sqlCommand1, cpArray, table);
                    return cpArray[0];
                }
            }
            catch (Exception e)
            {
            }
            finally
            {
                provider.disconnect();
            }
            return new Coupon();
        }
        public static bool RegisterCoupon(string couponId)
        {
            provider.connect();
            string sqlCommand = "sp_RegisterCoupon";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@couponId", couponId));
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                if ((int)result.Value == 1)
                {
                    return true;
                }
                else
                    return false;
            }
            catch (Exception e)
            {
            }
            finally
            {
                provider.disconnect();
            }
            return false;
        }
        private static Coupon[] TransFerToCouponArray(string sqlCommand1, Coupon[] cpArray, DataTable table)
        {
            int n = table.Rows.Count;
            cpArray = new Coupon[n];
            for (int i = 0; i < n; i++)
            {
                cpArray[i] = new Coupon();
                DataRow row = table.Rows[i];
                cpArray[i].DieuKienSuDung = row["DIEUKIENSD"].ToString();
                cpArray[i].DonViTien = row["DVTIENTE"].ToString();
                cpArray[i].GiaHangKhiChuaGiam = row["GIAGOC"].ToString();
                cpArray[i].GiaHangSauKhiGiam = row["GIASGIAM"].ToString();
                cpArray[i].LinkHinhAnh = new string[1];
                cpArray[i].LinkHinhAnh[0] = "http://www.beatifulhouse.somee.com/Content/images/products/" + row["HINHANH"].ToString();
                cpArray[i].MaCoupon = row["MACP"].ToString();
                cpArray[i].MaMatHang = row["MASP"].ToString();
                cpArray[i].MaNhaCungCap = "BIZ";
                cpArray[i].NgayBatDau = DateTime.Parse(row["THOIGIANBD"].ToString());
                cpArray[i].NgayCouponBatDauDuocSuDung = cpArray[i].NgayBatDau;
                cpArray[i].NgayKetThuc = DateTime.Parse(row["THOIGIANKT"].ToString());
                cpArray[i].NgayCouponHetHan = cpArray[i].NgayKetThuc;
                List<SqlParameter> sql = new List<SqlParameter>();
                sql.Add(new SqlParameter("@macp", cpArray[i].MaCoupon));
                SqlParameter output = new SqlParameter("@count", SqlDbType.Int);
                output.Direction = ParameterDirection.Output;
                sql.Add(output);
                provider.executeNonQueryProcedure(sqlCommand1, sql);
                cpArray[i].SoLuongDaDat = (int)output.Value;
                float slcl=float.Parse(row["SLCONLAI"].ToString());
                int slspmin = int.Parse(row["SLSPMIN"].ToString());
                cpArray[i].SoLuongMuaLonNhat =(int)slcl/slspmin;
                cpArray[i].SoLuongThoaCoupon = int.Parse(row["SLCPMINGIAMGIA"].ToString());
                cpArray[i].TenMatHang = row["TENSP"].ToString();
                cpArray[i].TenNhaCungCap = "BeatifulhouseGroup";
                cpArray[i].ThongTinMoTa = row["MOTA"].ToString();

            }
            return cpArray;
        }

    }
}
