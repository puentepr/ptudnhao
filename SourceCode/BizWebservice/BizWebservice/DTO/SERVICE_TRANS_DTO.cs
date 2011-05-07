using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BizWebservice.DTO
{
    public class SERVICE_TRANS_DTO
    {
        private int _maDV;

        public int MaDV
        {
            get { return _maDV; }
            set { _maDV = value; }
        }
        private string _tenCongTy;

        public string TenCongTy
        {
            get { return _tenCongTy; }
            set { _tenCongTy = value; }
        }
        private string _linkWebService;

        public string LinkWebService
        {
            get { return _linkWebService; }
            set { _linkWebService = value; }
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
        private int _tinhTrang;

        public int TinhTrang
        {
            get { return _tinhTrang; }
            set { _tinhTrang = value; }
        }
        private string _website;

        public string Website
        {
            get { return _website; }
            set { _website = value; }
        }
         private string _title;

         public string Title
         {
             get { return _title; }
             set { _title = value; }
         }
         private string _bizAddress;

         public string BizAddress
         {
             get { return _bizAddress; }
             set { _bizAddress = value; }
         }
        public SERVICE_TRANS_DTO()
        {
            this._maDV = 0;
            this._tenCongTy = "";
            this._linkWebService = "";
            this._userName = "";
            this._passWord = "";
            this._website = "";
        }
        public SERVICE_TRANS_DTO(int maDV, string tenCT, string linkWS, string user, string pass)
        {
            this._maDV = maDV;
            this._tenCongTy = tenCT;
            this._linkWebService = linkWS;
            this._userName = user;
            this._passWord = pass;
        }
    }
}
