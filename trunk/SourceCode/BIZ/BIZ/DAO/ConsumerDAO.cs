using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
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
    }
}
