﻿using System;
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
        public static List<DON_HANG_DTO> GetAllOrderKH(string username)
        {
            provider.connect();
            string sqlCommand = "sp_SelectOrderKH";
            List<SqlParameter> list = new List<SqlParameter>();
            list.Add(new SqlParameter("@username", username));
            try
            {
                List<DON_HANG_DTO>orders=new List<DON_HANG_DTO>();
                DataTable table = provider.executeQueryDataTableProcedure(sqlCommand, list);
                if (table != null && table.Rows.Count > 0)
                {
                    foreach(DataRow row in table.Rows)
                    {
                        DON_HANG_DTO dh=new DON_HANG_DTO();
                        dh.MaDonHang=int.Parse(row["MADH"].ToString());
                        dh.NgayDat=DateTime.Parse( row["NGAYDAT"].ToString());
                        dh.TongTien=float.Parse(row["TONGTIEN"].ToString());
                        dh.TinhTrangDonHang=row["TINHTRANGDH"].ToString();
                        dh.DiaChiNhan=row["DIACHINHAN"].ToString();
                        dh.DonViTienTe=row["DVTIENTE"].ToString();
                        dh.LinkVC=row["URL"].ToString();
                        dh.MaPackage=int.Parse(row["MAPK"].ToString());
                        orders.Add(dh);
                    }
                  
                }
                return orders;
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

        public static List<CHI_TIET_DON_HANG_DTO> ViewOrderDetailsByOrderCode(int maDonHang)
        {
            provider.connect();
            string sqlCommand = "sp_XemThongTinChiTietDonHang";
            List<SqlParameter> ds = new List<SqlParameter>();
            ds.Add( new SqlParameter("@maDonHang", maDonHang));
            try
            {
                DataTable dt = provider.executeQueryDataTableProcedure(sqlCommand, ds);
                List<CHI_TIET_DON_HANG_DTO> dsOrderDetails = new List<CHI_TIET_DON_HANG_DTO>();
                if(dt.Rows.Count>0)
                {
                    foreach(DataRow dr in dt.Rows)
                    {
                        CHI_TIET_DON_HANG_DTO ordDetailDTO = new CHI_TIET_DON_HANG_DTO();
                        ordDetailDTO.maSanPham = dr["MASP"].ToString();
                        ordDetailDTO.donViTinh = dr["DVTINH"].ToString();
                        ordDetailDTO.soLuong = float.Parse(dr["SOLUONG"].ToString());
                        ordDetailDTO.donGia = float.Parse(dr["DONGIA"].ToString());
                        dsOrderDetails.Add(ordDetailDTO);
                    }
                }
                return dsOrderDetails;
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                provider.disconnect();
            }
        }
        public static DataTable GetOrderInformationByCode(int maDonHang)
        {
            provider.connect();
            string sqlcommand = "sp_LayThongTinDonHangBangMaDH";
            List<SqlParameter> ds = new List<SqlParameter>();
            ds.Add(new SqlParameter("@maDonHang", maDonHang));
            try
            {
                DataTable dt = new DataTable();
                dt = provider.executeQueryDataTableProcedure(sqlcommand, ds);
                return dt;   
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                provider.disconnect();
            }
        }
    }
}
