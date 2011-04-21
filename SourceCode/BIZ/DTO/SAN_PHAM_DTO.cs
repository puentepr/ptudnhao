using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class SAN_PHAM_DTO
    {
        private string _maSanPham;

        public string MaSanPham
        {
            get { return _maSanPham; }
            set { _maSanPham = value; }
        }
        private int _maLoaiSanPham;

        public int MaLoaiSanPham
        {
            get { return _maLoaiSanPham; }
            set { _maLoaiSanPham = value; }
        }
        private string _tenSanPham;

        public string TenSanPham
        {
            get { return _tenSanPham; }
            set { _tenSanPham = value; }
        }
        private string _moTaSanPham;

        public string MoTaSanPham
        {
            get { return _moTaSanPham; }
            set { _moTaSanPham = value; }
        }

        private string _hinhAnh;

        public string HinhAnh
        {
            get { return _hinhAnh; }
            set { _hinhAnh = value; }
        }
        private string _chatLuong;

        public string ChatLuong
        {
            get { return _chatLuong; }
            set { _chatLuong = value; }
        }
        private float _gia;

        public float Gia
        {
            get { return _gia; }
            set { _gia = value; }
        }
        private float _soLuong;

        public float SoLuong
        {
            get { return _soLuong; }
            set { _soLuong = value; }
        }
        private string _donViTinh;

        public string DonViTinh
        {
            get { return _donViTinh; }
            set { _donViTinh = value; }
        }
        private float _soLuongConLai;

        public float SoLuongConLai
        {
            get { return _soLuongConLai; }
            set { _soLuongConLai = value; }
        }
        private DateTime _ngayDangSanPham;

        public DateTime NgayDangSanPham
        {
            get { return _ngayDangSanPham; }
            set { _ngayDangSanPham = value; }
        }
        private DateTime _ngaySuaDoi;

        public DateTime NgaySuaDoi
        {
            get { return _ngaySuaDoi; }
            set { _ngaySuaDoi = value; }
        }
        private string _tinhTrangSanPham;

        public string TinhTrangSanPham
        {
            get { return _tinhTrangSanPham; }
            set { _tinhTrangSanPham = value; }
        }
        private DateTime _ngayXoa;

        public DateTime NgayXoa
        {
            get { return _ngayXoa; }
            set { _ngayXoa = value; }
        }

        public SAN_PHAM_DTO()
        {
            this._maSanPham = "";
            this._maLoaiSanPham = 0;
            this._tenSanPham = "";
            this._moTaSanPham = "";
            this._hinhAnh = "";
            this._chatLuong = "";
            this._gia = 0;
            this._soLuong = 0;
            this._donViTinh = "";
            this._soLuongConLai = 0;
            this._ngayDangSanPham = DateTime.MaxValue;
            this._ngaySuaDoi = DateTime.MaxValue;
            this._tinhTrangSanPham = "";
            this._ngayXoa = DateTime.MaxValue;
        }
        public SAN_PHAM_DTO(string maSP, int maLSP, string tenSP, string moTaSP, string hinhAnh, string chatLuong, float gia, float soLuong, string donVT, float soLuongCL, DateTime ngayDangSP, DateTime ngaySD, string tinhTrangSP, DateTime ngayXoa)
        {
            this._maSanPham = maSP;
            this._maLoaiSanPham = maLSP;
            this._tenSanPham = tenSP;
            this._moTaSanPham = moTaSP;
            this._hinhAnh = hinhAnh;
            this._chatLuong = chatLuong;
            this._gia = gia;
            this._soLuong = soLuong;
            this._donViTinh = donVT;
            this._soLuongConLai = soLuongCL;
            this._ngayDangSanPham = ngayDangSP;
            this._ngaySuaDoi = ngaySD;
            this._tinhTrangSanPham = tinhTrangSP;
            this._ngayXoa = ngayXoa;
        }
    }
}
