using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class COUPON_DTO
    {
        private string _maCoupon;

        public string MaCoupon
        {
            get { return _maCoupon; }
            set { _maCoupon = value; }
        }
        private string _maSanPham;

        public string MaSanPham
        {
            get { return _maSanPham; }
            set { _maSanPham = value; }
        }
        private float _giaSauGiam;

        public float GiaSauGiam
        {
            get { return _giaSauGiam; }
            set { _giaSauGiam = value; }
        }
        private DateTime _thoiGianBD;

        public DateTime ThoiGianBD
        {
            get { return _thoiGianBD; }
            set { _thoiGianBD = value; }
        }
        private DateTime _thoiGianKT;

        public DateTime ThoiGianKT
        {
            get { return _thoiGianKT; }
            set { _thoiGianKT = value; }
        }
        private int _soLuongSanPhamMin;

        public int SoLuongSanPhamMin
        {
            get { return _soLuongSanPhamMin; }
            set { _soLuongSanPhamMin = value; }
        }

        private string _tinhTrangCoupon;

        public string TinhTrangCoupon
        {
            get { return _tinhTrangCoupon; }
            set { _tinhTrangCoupon = value; }
        }
        private string _dieuKienSuDung;

        public string DieuKienSuDung
        {
            get { return _dieuKienSuDung; }
            set { _dieuKienSuDung = value; }
        }
        private float _giaGoc;

        public float GiaGoc
        {
            get { return _giaGoc; }
            set { _giaGoc = value; }
        }
        private string _donViTienTe;

        public string DonViTienTe
        {
            get { return _donViTienTe; }
            set { _donViTienTe = value; }
        }
        private string _linkHinhAnh;

        private int _soLuongCouponMin;

        public int SoLuongCouponMin
        {
            get { return _soLuongCouponMin; }
            set { _soLuongCouponMin = value; }
        }

        public COUPON_DTO()
        {
            this._maCoupon = "";
            this._maSanPham = "";
            this._giaSauGiam = 0; ;
            this._thoiGianBD = DateTime.MaxValue;
            this._thoiGianKT = DateTime.MaxValue;
            this._soLuongSanPhamMin = 0;
            this._tinhTrangCoupon = "";
            this._dieuKienSuDung = "";
            this._giaGoc = 0;
            this._donViTienTe = "";
            this._soLuongCouponMin = 0; 
        }
        public COUPON_DTO(string maCP, string maSP, float giaSG, DateTime thoiGianBD, DateTime thoiGianKT, int soLuongSPMin, string tinhTrangCP, string dieuKienSD, float giaGoc, string donViTT, int soLuongCPMin)
        {
            this._maCoupon = maCP;
            this._maSanPham = maSP;
            this._giaSauGiam = giaSG;
            this._thoiGianBD = thoiGianBD;
            this._thoiGianKT = thoiGianKT;
            this._soLuongSanPhamMin = soLuongSPMin;
            this._tinhTrangCoupon = tinhTrangCP;
            this._dieuKienSuDung = dieuKienSD;
            this._giaGoc = giaGoc;
            this._donViTienTe = donViTT;
            this._soLuongCouponMin = soLuongCPMin;
        }
    }
}
