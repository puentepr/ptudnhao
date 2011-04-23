using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BIZ.DTO
{
    public class YC_WEBSERVICE_DTO
    {
        private int _ma;

        public int Ma
        {
            get { return _ma; }
            set { _ma = value; }
        }
        private string _userName;

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        private string _linkWebSite;

        public string LinkWebSite
        {
            get { return _linkWebSite; }
            set { _linkWebSite = value; }
        }
        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        private int _tinhTrangYeuCau;

        public int TinhTrangYeuCau
        {
            get { return _tinhTrangYeuCau; }
            set { _tinhTrangYeuCau = value; }
        }
        private int _soLuongSIDCap;

        public int SoLuongSIDCap
        {
            get { return _soLuongSIDCap; }
            set { _soLuongSIDCap = value; }
        }
        private int _soLuongSIDThanhToan;

        public int SoLuongSIDThanhToan
        {
            get { return _soLuongSIDThanhToan; }
            set { _soLuongSIDThanhToan = value; }
        }

        public YC_WEBSERVICE_DTO()
        {
            this._ma = 0;
            this._userName = "";
            this._linkWebSite = "";
            this._email = "";
            this._tinhTrangYeuCau = 0;
            this._soLuongSIDCap = 0;
            this._soLuongSIDThanhToan = 0;
        }
        public YC_WEBSERVICE_DTO(int ma, string user, string linkWeb, string email, int tinhTrangYC, int soLuongSIDCap, int soLuongSIDThanhToan)
        {
            this._ma = ma;
            this._userName = user;
            this._linkWebSite = linkWeb;
            this._email = email;
            this._tinhTrangYeuCau = tinhTrangYC;
            this._soLuongSIDCap = soLuongSIDCap;
            this._soLuongSIDThanhToan = soLuongSIDThanhToan;
        }
    }
}
