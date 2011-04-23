using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BIZ.DTO
{
    public class QUAN_TRI_DTO
    {
        private string _userName;

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        private string _hoTen;

        public string HoTen
        {
            get { return _hoTen; }
            set { _hoTen = value; }
        }
        private string _diaChi;

        public string DiaChi
        {
            get { return _diaChi; }
            set { _diaChi = value; }
        }
        private string _soDienThoai;

        public string SoDienThoai
        {
            get { return _soDienThoai; }
            set { _soDienThoai = value; }
        }

        public QUAN_TRI_DTO()
        {
            this._userName = "";
            this._hoTen = "";
            this._diaChi = "";
            this._soDienThoai = "";
        }
        public QUAN_TRI_DTO(string user, string hoTen, string diaChi, string soDT)
        {
            this._userName = user;
            this._hoTen = hoTen;
            this._diaChi = diaChi;
            this._soDienThoai = soDT;
        }
    }
}
