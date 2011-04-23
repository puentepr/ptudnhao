using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;

namespace BIZ.BUS
{
    public class MD5
    {
        public static string encryptPassword(string password)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] originalText = ASCIIEncoding.Default.GetBytes(password);
            byte[] destText = md5.ComputeHash(originalText);
            return BitConverter.ToString(destText);
        }
    }
}
