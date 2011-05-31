using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BIZ.DAO;
using BIZ.DTO;

namespace BIZ.BUS
{
    public class UserBUS
    {
        public static int ValidateUserName(string username)
        {
            try
            {
                return UserDAO.ValidateUserName(username);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int LaMuaChung(string username)
        {
            try
            {
                return UserDAO.ValidateUserName(username);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int InsertConsumer(USERS_DTO user, KHACH_HANG_DTO consumer)
        {
            try
            {
                user.PassWord = MD5.encryptPassword(user.PassWord);
                return UserDAO.InsertConsumer(user,consumer);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int UpdateStatusUser(string username,int status)
        {
            try
            {
                return UserDAO.UpdateStatusUser(username,status);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int IsAvaliableAcount(string username, string password)
        {
            try
            {
                return UserDAO.CheckAvaliableUser(username, password);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        #region 2.2.1 Xem thông tin tài khoản
        public static KHACH_HANG_DTO XemThongTinTaiKhoan(string username)
        {
            try
            {
                return ConsumerDAO.XemThongTinTaiKhoan(username);
            }
            catch (Exception e)
            {                
                throw e;
            }
        }
        #endregion

        #region Cập nhật thông tin tài khoản khách hàng
        public static int CapNhatTaiKhoanKhachHang(KHACH_HANG_DTO kh)
        {
            try
            {
                return ConsumerDAO.CapNhatTaiKhoanKhachHang(kh);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        #endregion

        #region 2.4.5 Lấy danh sách user
        //public static List<USERS_DTO> LayDanhSachUser()
        //{
        //    try
        //    {
        //        return UserDAO.LayDanhSachUser();
        //    }
        //    catch (Exception ex)
        //    {                
        //        throw ex;
        //    }
        //}
        #endregion

        #region Lấy danh sách loại user
        public static List<LOAI_USER_DTO> LayDanhSachLoaiUser()
        {
            try
            {
                return UserDAO.LayDanhSachLoaiUser();
            }
            catch (Exception e)
            {                
                throw e;
            }
        }
        #endregion

        #region Lấy danh sách user theo mã loại
        public static List<USERS_DTO> LayDanhSachUserTheoLoaiUser(string tenloai)
        {
            try
            {
                return UserDAO.LayDanhSachUserTheoLoaiUser(tenloai);
            }
            catch (Exception e)
            {
                
                throw e;
            }
        }
        #endregion

        #region Lấy thông tin user theo username
        public static USERS_DTO LayThongTinUserTheoUserName(string username)
        {
            try
            {
                return UserDAO.LayThongTinUserTheoUserName(username);
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
        #endregion

        #region Lấy thông tin quản trị theo username
        public static QUAN_TRI_DTO LayThongTinQuanTriTheoUserName(string username)
        {
            try
            {
                return UserDAO.LayThongTinQuanTriTheoUserName(username);
            }
            catch (Exception ex)
            {                
                throw ex;
            }
        }
        #endregion
    }
}
