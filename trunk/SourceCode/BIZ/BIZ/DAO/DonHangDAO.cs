using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;

namespace BIZ.DAO
{
    public class DonHangDAO
    {
        static MyDataProvider provider = new MyDataProvider();
        public static int InsertOrder(DON_HANG_DTO dh)
        {
            provider.connect();
            string sqlCommand = "sp_InsertOrder";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@username",dh.UserName));
            list.Add(new SqlParameter("@tongtien",dh.TongTien));
            list.Add(new SqlParameter("@diachi",dh.DiaChiNhan));
            list.Add(new SqlParameter("@ngaygiao",dh.NgayGiao));
            list.Add(new SqlParameter("@dvtiente",dh.DonViTienTe));
            SqlParameter madh=new SqlParameter("@madh",SqlDbType.Int);
            madh.Direction=ParameterDirection.Output;
            list.Add(madh);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)madh.Value;
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
        public static void InsertCTOrder(CHI_TIET_DON_HANG_DTO ct)
        {
            provider.connect();
            string sqlCommand = "sp_InsertCTOrder";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@madh",ct.maDonHang));
            list.Add(new SqlParameter("@masp",ct.maSanPham));
            list.Add(new SqlParameter("@sl",ct.soLuong));
            list.Add(new SqlParameter("@price",ct.donGia));
            list.Add(new SqlParameter("@dvtinh",ct.donViTinh));
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
        }
        public static int InsertPackage(PACKAGEINFO_DTO pac,int madh)
        {
            provider.connect();
            string sqlCommand="sp_InsertPackage";
            List<SqlParameter>list=new List<SqlParameter>();
            list.Add(new SqlParameter("@madv",pac.MaServiceTrans));
            list.Add(new SqlParameter("@pacinfo",pac.PackageInfo));
            list.Add(new SqlParameter("@url",pac.URL));
            list.Add(new SqlParameter("@madh",madh));
            SqlParameter mapk=new SqlParameter("@mapk",SqlDbType.Int);
            mapk.Direction=ParameterDirection.Output;
            list.Add(mapk);
            try
            {
                provider.executeNonQueryProcedure(sqlCommand, list);
                return (int)mapk.Value;
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
