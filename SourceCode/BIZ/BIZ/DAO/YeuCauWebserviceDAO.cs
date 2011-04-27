using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;

namespace BIZ.DAO
{
    public class YeuCauWebserviceDAO
    {
        static MyDataProvider provider = new MyDataProvider();
        public static List<YC_WEBSERVICE_DTO> SelectNewRequest()
        {
            provider.connect();
            string sqlCommand = "sp_SelectAllNewRequest";
            List<SqlParameter> list = new List<SqlParameter>();
            List<YC_WEBSERVICE_DTO> ws = new List<YC_WEBSERVICE_DTO>();
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    int n = table.Rows.Count;
                    for (int i = 0; i < n; i++)
                    {
                        DataRow row = table.Rows[i];
                        YC_WEBSERVICE_DTO yc = new YC_WEBSERVICE_DTO();
                        yc.Ma =int.Parse( row["MA"].ToString());
                        yc.Tendn = row["TENDN"].ToString();
                        yc.LinkWebSite = row["LINK"].ToString();
                        yc.Email = row["EMAIL"].ToString();
                        ws.Add(yc);
                    }
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
            return ws;

        }
        public static void UpdateStatusRequest(List<YC_WEBSERVICE_DTO> list)
        {
            provider.connect();
            string sqlCommand = "sp_UpdateStatusRequest";
            try
            {
                foreach (YC_WEBSERVICE_DTO yc in list)
                {
                    List<SqlParameter> sqls = new List<SqlParameter>();
                    sqls.Add(new SqlParameter("@ma", yc.Ma));
                    sqls.Add(new SqlParameter("@tinhtrang", yc.TinhTrangYeuCau));
                    provider.executeNonQueryProcedure(sqlCommand, sqls);
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
        }
        public static int InsertYCWebService(YC_WEBSERVICE_DTO yc)
        {
            provider.connect();
            string sqlCommand = "sp_Insert_ycwebservice";
            List<SqlParameter> list = new List<SqlParameter>();

            list.Add(new SqlParameter("@username", yc.UserName));
            list.Add(new SqlParameter("@link", yc.LinkWebSite));
            list.Add(new SqlParameter("@email", yc.Email));
            list.Add(new SqlParameter("@tendoanhnghiep", yc.Tendn));

            try
            {
                return provider.executeNonQueryProcedure(sqlCommand, list);
                
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                provider.disconnect();
            }


        }
        public static int ValidateUserName(string username, string pass)
        {
            provider.connect();
            string sqlCommand = "sp_KiemTra_UserName_PassWord_HopLe";
            List<SqlParameter> list = new List<SqlParameter>();

            list.Add(new SqlParameter("@username", username));
            list.Add(new SqlParameter("@pass", pass));
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
