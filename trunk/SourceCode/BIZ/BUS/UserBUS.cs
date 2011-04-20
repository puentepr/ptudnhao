using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
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
    }
}
