using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BIZ.DTO
{
    public class SERVICE_BANK_DTO
    {
        private string _maBank;

        public string MaBank
        {
            get { return _maBank; }
            set { _maBank = value; }
        }
        private string _tenBank;

        public string TenBank
        {
            get { return _tenBank; }
            set { _tenBank = value; }
        }
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
        private string _linkWebService;

        public string LinkWebService
        {
            get { return _linkWebService; }
            set { _linkWebService = value; }
        }
        private string _anhBank;

        public string AnhBank
        {
            get { return _anhBank; }
            set { _anhBank = value; }
        }
        private int _tinhTrangWS;

        public int TinhTrangWS
        {
            get { return _tinhTrangWS; }
            set { _tinhTrangWS = value; }
        }
        private string _website;

        public string Website
        {
            get { return _website; }
            set { _website = value; }
        }
        public SERVICE_BANK_DTO()
        {
            this._maBank = "";
            this._tenBank = "";
            this._userName = "";
            this._passWord = "";
            this._linkWebService = "";
            this._anhBank = "";
            this._tinhTrangWS = 0;
            this._website = "";
        }
        public SERVICE_BANK_DTO(string maB, string tenB, string user, string pass, string linkWS, string anhB, int tinhTrangWS)
        {
            this._maBank = maB;
            this._tenBank = tenB;
            this._userName = user;
            this._passWord = pass;
            this._linkWebService = linkWS;
            this._anhBank = anhB;
            this._tinhTrangWS = tinhTrangWS;
        }
    }
}
