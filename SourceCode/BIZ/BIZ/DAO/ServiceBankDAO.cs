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
    public class ServiceBankDAO
    {
        static private MyDataProvider provider = new MyDataProvider();
        #region Thêm 1 ServiceBank
        public static int InsertServiceBank(SERVICE_BANK_DTO bank)
        {
            provider.connect();
            string sqlCommand = "sp_Insert_SERVICEBANK";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@MABANK", bank.MaBank));
            list.Add(new SqlParameter("@TENBANK", bank.TenBank));
            list.Add(new SqlParameter("@USERNAMEB", bank.UserName));
            list.Add(new SqlParameter("@PASSWORDB", bank.PassWord));
            list.Add(new SqlParameter("@LINKWS", bank.LinkWebService));
            list.Add(new SqlParameter("@ANHBANK", bank.AnhBank));
            list.Add(new SqlParameter("@TINHTRANGWS", bank.TinhTrangWS));
            list.Add(new SqlParameter("@WEBSITE", bank.Website));
            list.Add(new SqlParameter("@stk", bank.Stk));

            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)result.Value;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                provider.disconnect();
            }
        }
        #endregion

        #region Lấy thông tin ServiceBank theo mã bank
        public static SERVICE_BANK_DTO LayServiceBankTheoMaBank(string mabank)
        {
            provider.connect();

            string sqlCommand = "sp_LaySERVICEBANKTheoMaBank";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@MABANK", mabank));
            try
            {
                SERVICE_BANK_DTO bank = new SERVICE_BANK_DTO();
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    DataRow dr = table.Rows[0];
                    bank.MaBank = dr["MABANK"].ToString();
                    bank.TenBank = dr["TENBANK"].ToString();
                    bank.UserName = dr["USERNAMEB"].ToString();
                    bank.PassWord = dr["PASSWORDB"].ToString();
                    bank.LinkWebService = dr["LINKWS"].ToString();
                    bank.AnhBank = dr["ANHBANK"].ToString();
                    bank.TinhTrangWS = int.Parse(dr["TINHTRANGWS"].ToString());
                    bank.Stk = dr["STK"].ToString();
                    bank.Website = dr["WEBSITE"].ToString();
                }
                return bank;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                provider.disconnect();
            }
        }
        #endregion

        #region Lấy danh sách ServiceBank theo trạng thái
        public static List<SERVICE_BANK_DTO> LayDanhSachServiceBankTheoTrangThai(int trangthai)
        {
            provider.connect();
            List<SERVICE_BANK_DTO> ds = new List<SERVICE_BANK_DTO>();

            string sqlCommand = "sp_LayDanhSachSERVICEBANKTheoTrangThai";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@trangthai", trangthai));
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                foreach (DataRow dr in table.Rows)
                {
                    SERVICE_BANK_DTO bank = new SERVICE_BANK_DTO();
                    bank.MaBank = dr["MABANK"].ToString();
                    bank.TenBank = dr["TENBANK"].ToString();
                    bank.UserName = dr["USERNAMEB"].ToString();
                    bank.PassWord = dr["PASSWORDB"].ToString();
                    bank.LinkWebService = dr["LINKWS"].ToString();
                    bank.AnhBank = "../../Content/images/banks/" + dr["ANHBANK"].ToString();
                    bank.TinhTrangWS = int.Parse(dr["TINHTRANGWS"].ToString());
                    bank.Website = dr["WEBSITE"].ToString();
                    bank.Stk = dr["STK"].ToString();
                    ds.Add(bank);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                provider.disconnect();
            }
            return ds;
        }
        #endregion

        #region Cập nhật ServiceBank
        public static int CapNhatServiceBank(SERVICE_BANK_DTO bank)
        {
            provider.connect();
            string sqlCommand = "sp_UpdateSERVICEBANK";
            List<SqlParameter> list = new List<SqlParameter>();

            list.Add(new SqlParameter("@mabank", bank.MaBank));
            list.Add(new SqlParameter("@tenbank", bank.TenBank));
            list.Add(new SqlParameter("@pass", bank.PassWord));
            list.Add(new SqlParameter("@linkws", bank.LinkWebService));
            list.Add(new SqlParameter("@tinhtrangws", bank.TinhTrangWS));
            list.Add(new SqlParameter("@website", bank.Website));

            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)result.Value;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                provider.disconnect();
            }

        }
        #endregion

        #region Xóa ServiceBank
        public static int XoaServiceBank(string mabank, int tinhtrang)
        {
            provider.connect();
            string sqlCommand = "sp_DeleteSERVICEBANK";
            List<SqlParameter> list = new List<SqlParameter>();
            //gán
            list.Add(new SqlParameter("@ma",mabank));
            list.Add(new SqlParameter("@tinhtrang",tinhtrang));
            
            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)result.Value;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                provider.disconnect();
            }

        #endregion

        }
    }
}
