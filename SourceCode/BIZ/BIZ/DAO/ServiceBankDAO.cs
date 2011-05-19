using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;

namespace BIZ.DAO
{
    public class ServiceBankDAO
    {
        static private MyDataProvider provider = new MyDataProvider();
        #region Thêm 1 ServiceBank
        public static int InsertServiceBank( SERVICE_BANK_DTO bank)
        {
            provider.connect();
            string sqlCommand = "sp_Insert_SERVICEBANK";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@MABANK",bank.MaBank ));
            list.Add(new SqlParameter("@TENBANK",bank.TenBank ));
            list.Add(new SqlParameter("@USERNAMEB",bank.UserName ));
            list.Add(new SqlParameter("@PASSWORDB",bank.PassWord ));
            list.Add(new SqlParameter("@LINKWS",bank.LinkWebService ));
            list.Add(new SqlParameter("@ANHBANK",bank.AnhBank ));
            list.Add(new SqlParameter("@TINHTRANGWS",bank.TinhTrangWS ));
            list.Add(new SqlParameter("@WEBSITE",bank.Website ));
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

        #region Lấy danh sách ServiceBank
        //public static List<SERVICE_BANK_DTO> LayDanhSachServiceBank()
        //{
        //    provider.connect();
        //    List<SERVICE_BANK_DTO> ds = new List<SERVICE_BANK_DTO>();

        //    string sqlCommand = "sp_LayDanhSachSERVICEBANK";
        //    List<SqlParameter> list = new List<SqlParameter>();
           
        //    try
        //    {
        //        DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
        //        foreach (DataRow dr in table.Rows)
        //        {
        //            SERVICE_BANK_DTO bank = new SERVICE_BANK_DTO();
        //            bank.MaBank = dr["MABANK"].ToString();
        //            bank.TenBank = dr["TENBANK"].ToString();
        //            bank.UserName = dr["USERNAMEB"].ToString();
        //            bank.PassWord = dr["PASSWORDB"].ToString();
        //            bank.LinkWebService = dr["LINKWS"].ToString();
        //            bank.AnhBank = dr["ANHBANK"].ToString();
        //            bank.TinhTrangWS = int.Parse(dr["TINHTRANGWS"].ToString());
        //            bank.Website = dr["WEBSITE"].ToString();
        //            ds.Add(bank);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {
        //        provider.disconnect();
        //    }
        //    return ds;
        //}
        #endregion

        #region Lấy danh sách ServiceBank theo trạng thái
        public static List<SERVICE_BANK_DTO> LayDanhSachServiceBankTheoTrangThai(int trangthai)
        {
            provider.connect();
            List<SERVICE_BANK_DTO> ds= new List<SERVICE_BANK_DTO> ();

            string sqlCommand = "sp_LayDanhSachSERVICEBANKTheoTrangThai";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@trangthai",trangthai));
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
                    bank.AnhBank = dr["ANHBANK"].ToString();
                    bank.TinhTrangWS = int.Parse(dr["TINHTRANGWS"].ToString());
                    bank.Website = dr["WEBSITE"].ToString();
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
        //public static int CapNhatServiceBank(string maBank, string tenBank, string userName, string pass, string linkService, string pictureBank, int trangthai, string website)
        //{
        //    provider.connect();
        //    string sqlCommand = "sp_UpdateSERVICEBANK";
        //    List<SqlCommand> list = new List<SqlCommand>();
        //    list.Add(new SqlCommand("@MABANK",maBank));
        //    list.Add(new SqlCommand("@TENBANK",tenBank));
        //    list.Add(new SqlCommand("@USERNAMEB",userName));
        //    list.Add(new SqlCommand("@PASSWORDB",pass));
        //    list.Add(new SqlCommand("@LINKWS",linkService));
        //    list.Add(new SqlCommand("@ANHBANK",pictureBank));
        //    list.Add(new SqlCommand("@TINHTRANGWS",trangthai));
        //    list.Add(new SqlCommand("@WEBSITE",website));
        //}
        #endregion

        #region Xóa ServiceBank
        #endregion

    }
}
