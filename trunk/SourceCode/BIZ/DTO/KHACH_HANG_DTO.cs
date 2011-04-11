using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class KHACH_HANG_DTO
    {
        private string _userName;

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        private string _tenDoanhNghiep;

        public string TenDoanhNghiep
        {
            get { return _tenDoanhNghiep; }
            set { _tenDoanhNghiep = value; }
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
        private string _nguoiDaiDien;

        public string NguoiDaiDien
        {
            get { return _nguoiDaiDien; }
            set { _nguoiDaiDien = value; }
        }
        private string _webSite;

        public string WebSite
        {
            get { return _webSite; }
            set { _webSite = value; }
        }

        public KHACH_HANG_DTO()
        {
            this._userName = "";
            this._tenDoanhNghiep = "";
            this._diaChi = "";
            this._soDienThoai = "";
            this._nguoiDaiDien = "";
            this._webSite = "";
        }
        public KHACH_HANG_DTO(string user, string tenDN, string diaChi, string soDT, string nguoiDD, string website)
        {
            this._userName = user;
            this._tenDoanhNghiep = tenDN;
            this._diaChi = diaChi;
            this._soDienThoai = soDT;
            this._nguoiDaiDien = nguoiDD;
            this._webSite = website;
        }
    }
}
