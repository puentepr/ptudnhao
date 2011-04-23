using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;
namespace BIZ.DAO
{
    public class UserDAO
    {
        static private MyDataProvider provider = new MyDataProvider();
        public static int InsertConsumer(USERS_DTO user,KHACH_HANG_DTO consumer)
        {
            provider.connect();
            string sqlCommand = "sp_InsertConsumer";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@username", user.UserName));
            list.Add(new SqlParameter("@password",user.PassWord));
            list.Add(new SqlParameter("@email",user.EMail));
            list.Add(new SqlParameter("@tendn",consumer.TenDoanhNghiep));
            list.Add(new SqlParameter("@diachi",consumer.DiaChi));
            list.Add(new SqlParameter("@sdt",consumer.SoDienThoai));
            list.Add(new SqlParameter("@tendaidien",consumer.NguoiDaiDien));
            list.Add(new SqlParameter("@website",consumer.WebSite));
            SqlParameter result=new SqlParameter("@result",SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                
            }
            catch (Exception e)
            {
                //throw new Exception(e.ToString());
                return -1;
                
            }
            finally
            {
                provider.disconnect();
            }
            return (int)result.Value;
        }
        public static int ValidateUserName(string username)
        {
            provider.connect();
            string sqlCommand = "sp_ValidateUsername";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@username", username));
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
                throw new Exception(e.ToString());
            }
            finally
            {
                provider.disconnect();
            }
           // return -1;
        }
        public static int UpdateStatusUser(string username, int status)
        {
            provider.connect();
            string sqlCommand = "sp_UpdateStatusUser";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@username", username));
            list.Add(new SqlParameter("@trangthai", status));
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
                throw new Exception(e.ToString());
            }
            finally
            {
                provider.disconnect();
            }
        }
    }
}
