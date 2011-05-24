using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BIZ.DTO
{
    public class DON_HANG_DTO
    {
        private int _maDonHang;

        public int MaDonHang
        {
            get { return _maDonHang; }
            set { _maDonHang = value; }
        }
        private int _maPackage;

        public int MaPackage
        {
            get { return _maPackage; }
            set { _maPackage = value; }
        }
        private string _userName;

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        private DateTime _ngayDat;

        public DateTime NgayDat
        {
            get { return _ngayDat; }
            set { _ngayDat = value; }
        }
        private DateTime _ngayGiao;

        public DateTime NgayGiao
        {
            get { return _ngayGiao; }
            set { _ngayGiao = value; }
        }
        private float _tongTien;

        public float TongTien
        {
            get { return _tongTien; }
            set { _tongTien = value; }
        }
        private string _tinhTrangDonHang;

        public string TinhTrangDonHang
        {
            get { return _tinhTrangDonHang; }
            set { _tinhTrangDonHang = value; }
        }
        private string _diaChiNhan;

        public string DiaChiNhan
        {
            get { return _diaChiNhan; }
            set { _diaChiNhan = value; }
        }
        private string _donViTienTe;

        public string DonViTienTe
        {
            get { return _donViTienTe; }
            set { _donViTienTe = value; }
        }
        private string _maXacNhan;

        public string MaXacNhan
        {
            get { return _maXacNhan; }
            set { _maXacNhan = value; }
        }
        private DateTime _ngayHetHan;

        public DateTime NgayHetHan
        {
            get { return _ngayHetHan; }
            set { _ngayHetHan = value; }
        }
        List<CHI_TIET_DON_HANG_DTO> chiTiet;

        public List<CHI_TIET_DON_HANG_DTO> ChiTiet
        {
            get { return chiTiet; }
            set { chiTiet = value; }
        }
        public DON_HANG_DTO()
        {
            this._maDonHang = 0;
            this._maPackage = 0;
            this._userName = "";
            this._ngayDat = DateTime.MaxValue;
            this._ngayGiao = DateTime.MaxValue;
            this._tongTien = 0;
            this._tinhTrangDonHang = "";
            this._diaChiNhan = "";
            this._donViTienTe = "";
            this._maXacNhan = "";
            this._ngayHetHan = DateTime.MaxValue;
        }
        public DON_HANG_DTO(int maDH, int maPK, string user, DateTime ngayDat, DateTime ngayGiao, float tongTien, string tinhTrangDH, string diaChiNhan, string donViTT, string maXN, DateTime ngayHH)
        {
            this._maDonHang = maDH;
            this._maPackage = maPK;
            this._userName = user;
            this._ngayDat = ngayDat;
            this._ngayGiao = ngayGiao;
            this._tongTien = tongTien;
            this._tinhTrangDonHang = tinhTrangDH;
            this._diaChiNhan = diaChiNhan;
            this._donViTienTe = donViTT;
            this._maXacNhan = maXN;
            this._ngayHetHan = ngayHH;
        }
    }
}
