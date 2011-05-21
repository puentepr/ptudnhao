using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;

namespace BIZ.DAO
{
    public class ServiceTransDAO
    {
        static MyDataProvider provider = new MyDataProvider();
        public static int InsertServiceTrans(SERVICE_TRANS_DTO service)
        {
            provider.connect();
            string sqlCommand = "sp_InsertServiceTrans";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@tencty",service.TenCongTy));
            list.Add(new SqlParameter("@linkws",service.LinkWebService));
            list.Add(new SqlParameter("@username",service.UserName));
            list.Add(new SqlParameter("@password",service.PassWord));
            list.Add(new SqlParameter("@website", service.Website));
            list.Add(new SqlParameter("@bizaddress", service.BizAddress));
            SqlParameter result=new SqlParameter("@result",SqlDbType.Int);
            result.Direction=ParameterDirection.ReturnValue;
            list.Add(result);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand,list);
                return (int)result.Value;
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }
       /* public static void InsertTransType(TransportType type)
        {
            provider.connect();
            string sqlCommand = "sp_InsertTransType";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@ma",type.MaHinhThucVanChuyen));
            list.Add(new SqlParameter("@ten",type.TenHinhThucVanChuyen));
            list.Add(new SqlParameter("@gia",type.Gia));
            list.Add(new SqlParameter("@dvtien",type.DonViTien));
            list.Add(new SqlParameter("@madv",type.Madv));
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                provider.disconnect();
            }
        }*/
        public static List<SERVICE_TRANS_DTO> SelectServiceTrans()
        {
            provider.connect();
            string sqlCommand = "sp_SelectServiceTrans";
            List<SqlParameter> list = new List<SqlParameter>();
            try
            {
                List<SERVICE_TRANS_DTO> services = new List<SERVICE_TRANS_DTO>();
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    TransFerToListServiceTrans(services, table);
                }
                return services;
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

        private static void TransFerToListServiceTrans(List<SERVICE_TRANS_DTO> services, DataTable table)
        {
            int n = table.Rows.Count;
            for (int i = 0; i < n; i++)
            {
                DataRow row = table.Rows[i];
                SERVICE_TRANS_DTO sv = new SERVICE_TRANS_DTO();
                sv.MaDV = int.Parse(row["MADV"].ToString());
                sv.TenCongTy = row["TENCTY"].ToString();
                sv.LinkWebService = row["LINKWS"].ToString();
                sv.UserName = row["USERNAME"].ToString();
                sv.PassWord = row["PASS_WORD"].ToString();
                sv.TinhTrang = int.Parse(row["TINHTRANG"].ToString());
                sv.Title = "Cập nhật";
                sv.Website = row["WEBSITE"].ToString();
                services.Add(sv);
            }
        }
        public static int DeleteServiceTrans(int madv)
        {
            provider.connect();
            int tinhtrang = -1;
            string sqlCommand = "sp_DeleteServiceTrans";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@madv", madv));
            list.Add(new SqlParameter("@tinhtrang", tinhtrang));
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
        public static SERVICE_TRANS_DTO GetInfoServiceTrans(int madv)
        {
            provider.connect();
            string sqlCommand = "sp_GetInfoServiceTrans";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@madv", madv));
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                List<SERVICE_TRANS_DTO>services=new List<SERVICE_TRANS_DTO>();
                if (table != null && table.Rows.Count > 0)
                {
                    TransFerToListServiceTrans(services, table);
                    return services[0];
                }
                return new SERVICE_TRANS_DTO();
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
        public static int UpdateServiceTrans(SERVICE_TRANS_DTO service)
        {
            provider.connect();
            string sqlCommand="sp_UpdateServiceTrans";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@madv",service.MaDV));
            list.Add(new SqlParameter("@tencty",service.TenCongTy));
            list.Add(new SqlParameter("@linkws",service.LinkWebService));
           // list.Add(new SqlParameter("@username",service.UserName));
           // list.Add(new SqlParameter("@password",service.PassWord));
            list.Add(new SqlParameter("@website",service.Website));
            list.Add(new SqlParameter("@tinhtrang", service.TinhTrang));
            SqlParameter result=new SqlParameter("@result",SqlDbType.Int);
            result.Direction=ParameterDirection.ReturnValue;
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
        public static TransportCompany[] GetTransportCompany()
        {
            provider.connect();
            string sqlCommand = "sp_SelectServiceTrans";
            List<SqlParameter> list = new List<SqlParameter>();
            try
            {
                TransportCompany[] companies = new TransportCompany[0];
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    int n = table.Rows.Count;
                    companies = new TransportCompany[n];
                    for (int i = 0; i < n; i++)
                    {
                        DataRow row = table.Rows[i];
                        companies[i] = new TransportCompany();
                        companies[i].MaCongTyVanChuyen = row["MADV"].ToString();
                        companies[i].TenCongTyVanChuyen = row["TENCTY"].ToString();
                        companies[i].HinhThucVanChuyen = GetTransportType(companies[i].MaCongTyVanChuyen);

                    }
                }
                return companies;
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
        private static TransportType[] GetTransportType(string madv)
        {
            TransportType[] trans = new TransportType[0];
            string sqlCommand = "sp_SelectTransType";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@madv", madv));
            try
            {
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    int n = table.Rows.Count;
                    trans = new TransportType[n];
                    for (int i = 0; i < n; i++)
                    {
                        trans[i] = new TransportType();
                        DataRow row = table.Rows[i];
                        trans[i].MaHinhThucVanChuyen = row["MA"].ToString();
                        trans[i].TenHinhThucVanChuyen = row["TEN"].ToString();
                        float price = 0;
                        float.TryParse(row["GIA"].ToString(), out price);
                        trans[i].Gia = price;
                        trans[i].DonViTien = row["DVTIEN"].ToString();
                    }
                }
            }
            catch (Exception e)
            {
                return trans;
            }
            return trans;
        }
        public static int UpdateAccountServiceTrans(int madv, string username, string password)
        {
            provider.connect();
            string sqlCommand = "sp_UpdateAccountServiceTrans";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@madv", madv));
            list.Add(new SqlParameter("@username", username));
            list.Add(new SqlParameter("@password", password));
            SqlParameter result = new SqlParameter("@result",SqlDbType.Int);
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
    }
}