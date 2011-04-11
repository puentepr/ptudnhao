using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class USERS_DTO
    {
        private string _userName;

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        private string _passWord;

        public string PassWord
        {
            get { return _passWord; }
            set { _passWord = value; }
        }
        private string _eMail;

        public string EMail
        {
            get { return _eMail; }
            set { _eMail = value; }
        }
        private int _trangThai;

        public int TrangThai
        {
            get { return _trangThai; }
            set { _trangThai = value; }
        }
        private int _maLoaiUser;

        public int MaLoaiUser
        {
            get { return _maLoaiUser; }
            set { _maLoaiUser = value; }
        }

        public USERS_DTO()
        {
            this._userName = "";
            this._passWord = "";
            this._eMail = "";
            this._trangThai = 0;
            this._maLoaiUser = 0;
        }
        public USERS_DTO(string user, string pass, string email, int trangThai, int maLU)
        {
            this._userName = user;
            this._passWord = pass;
            this._eMail = email;
            this._trangThai = trangThai;
            this._maLoaiUser = maLU;
        }
    }
}
