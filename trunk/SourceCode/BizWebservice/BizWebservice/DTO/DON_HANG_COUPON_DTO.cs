using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BizWebservice.DTO
{
    public class DON_HANG_COUPON_DTO
    {
        private int _maDonHangCoupon;

        public int MaDonHangCoupon
        {
            get { return _maDonHangCoupon; }
            set { _maDonHangCoupon = value; }
        }
        private int _maWebService;

        public int MaWebService
        {
            get { return _maWebService; }
            set { _maWebService = value; }
        }
        private string _maCoupon;

        public string MaCoupon
        {
            get { return _maCoupon; }
            set { _maCoupon = value; }
        }
        private int _maPackage;

        public int MaPackage
        {
            get { return _maPackage; }
            set { _maPackage = value; }
        }
        private string _sID;

        public string SID
        {
            get { return _sID; }
            set { _sID = value; }
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
        private string _validateCode;

        public string ValidateCode
        {
            get { return _validateCode; }
            set { _validateCode = value; }
        }
        private int _soLuongCoupon;

        public int SoLuongCoupon
        {
            get { return _soLuongCoupon; }
            set { _soLuongCoupon = value; }
        }

        public DON_HANG_COUPON_DTO()
        {
            this._maDonHangCoupon = 0;
            this._maWebService = 0;
            this._maCoupon = "";
            this._maPackage = 0;
            this._sID = "";
            this._ngayDat = DateTime.MaxValue;
            this._ngayGiao = DateTime.MaxValue;
            this._tongTien = 0;
            this._tinhTrangDonHang = "";
            this._diaChiNhan = "";
            this._donViTienTe = "";
            this._validateCode = "";
            this._soLuongCoupon = 0;
        }
        public DON_HANG_COUPON_DTO(int maDHCP, int maWS, string maCP, int maPK, string sID, DateTime ngayDat, DateTime ngayGiao, float tongTien, string tinhTrangDH, string diaChiN, string donViTT, string validCode, int soLuongCP )
        {
            this._maDonHangCoupon = maDHCP;
            this._maWebService = maWS;
            this._maCoupon = maCP;
            this._maPackage = maPK;
            this._sID = sID;
            this._ngayDat = ngayDat;
            this._ngayGiao = ngayGiao;
            this._tongTien = tongTien;
            this._tinhTrangDonHang = tinhTrangDH;
            this._diaChiNhan = diaChiN;
            this._donViTienTe = donViTT;
            this._validateCode = validCode;
            this._soLuongCoupon = soLuongCP;
        }
    }
}
