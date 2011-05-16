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
    public class ConsumerDAO
    {
        static MyDataProvider provider = new MyDataProvider();

        public static int CheckAvaliableSID(string sid)
        {
            provider.connect();
            string sqlCommand = "sp_CheckAvaliableSID";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@sid", sid));
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)result.Value;
            }
            catch (Exception e)
            {
                return -1;
            }
            finally
            {
                provider.disconnect();
            }
        }
        #region 2.2.1 Xem thông tin tài khoản
        public static KHACH_HANG_DTO XemThongTinTaiKhoan(string username)
        {          
            provider.connect();

            string sqlCommand = "sp_XemThongTinTaiKhoan";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@username", username));
            try
            {
                KHACH_HANG_DTO kh = new KHACH_HANG_DTO();

                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    DataRow row = table.Rows[0];
                    kh.UserName = row["USERNAME"].ToString();
                    kh.TenDoanhNghiep = row["TENDN"].ToString();
                    kh.DiaChi = row["DIACHI"].ToString();
                    kh.SoDienThoai = row["SDT"].ToString();
                    kh.NguoiDaiDien = row["TENNDAIDIEN"].ToString();
                    kh.WebSite = row["WEBSITE"].ToString();
                }
                return kh;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }           
        }
        #endregion

        #region cập nhật thông tin tài khoản
        public static int CapNhatTaiKhoanKhachHang(KHACH_HANG_DTO kh)
        {
            provider.connect();
            string sqlCommand = "sp_UpdateTaiKhoanKhachHang";

            List<SqlParameter> list = new List<SqlParameter>();

            list.Add(new SqlParameter("@username",kh.UserName));
            list.Add(new SqlParameter("@tendn",kh.TenDoanhNghiep));
            list.Add(new SqlParameter("@diachi",kh.DiaChi));
            list.Add(new SqlParameter("@sdt",kh.SoDienThoai));
            list.Add(new SqlParameter("@tendaidien",kh.NguoiDaiDien));
            list.Add(new SqlParameter("@website",kh.WebSite));
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)result.Value;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }
        #endregion
    }
}
