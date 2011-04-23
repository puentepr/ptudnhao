using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BIZ.DTO
{
    /// <summary>
    /// Coupon info version 1.0
    /// </summary>
    public class Coupon
    {
        /// <summary>
        /// mã một coupon
        /// </summary>
        string _maCoupon;

        public string MaCoupon
        {
            get { return _maCoupon; }
            set { _maCoupon = value; }
        }

        /// <summary>
        /// mã mặt hàng trong coupon
        /// </summary>
        string _maMatHang;

        public string MaMatHang
        {
            get { return _maMatHang; }
            set { _maMatHang = value; }
        }

        /// <summary>
        /// tên mặt hàng
        /// </summary>
        string _tenMatHang;

        public string TenMatHang
        {
            get { return _tenMatHang; }
            set { _tenMatHang = value; }
        }

        /// <summary>
        /// mã nhà cung cấp sản phẩm
        /// </summary>
        string _maNhaCungCap;

        public string MaNhaCungCap
        {
            get { return _maNhaCungCap; }
            set { _maNhaCungCap = value; }
        }

        /// <summary>
        /// tên nhà cung cấp sản phẩm
        /// </summary>
        string _tenNhaCungCap;

        public string TenNhaCungCap
        {
            get { return _tenNhaCungCap; }
            set { _tenNhaCungCap = value; }
        }
        
        /// <summary>
        /// giá hàng lúc mua coupon khi chưa thỏa điều kiện giảm giá
        /// </summary>
        string _giaHangKhiChuaGiam;

        public string GiaHangKhiChuaGiam
        {
            get { return _giaHangKhiChuaGiam; }
            set { _giaHangKhiChuaGiam = value; }
        }

        /// <summary>
        /// già hàng đã được giảm giá lúc mua coupon
        /// </summary>
        string _giaHangSauKhiGiam;

        public string GiaHangSauKhiGiam
        {
            get { return _giaHangSauKhiGiam; }
            set { _giaHangSauKhiGiam = value; }
        }

        /// <summary>
        /// đơn vị tiền tệ sử dụng
        /// </summary>
        string _donViTien;

        public string DonViTien
        {
            get { return _donViTien; }
            set { _donViTien = value; }
        }

        /// <summary>
        /// số lượng đặt mua cần thiết để thỏa coupon
        /// </summary>
        int _soLuongThoaCoupon;

        public int SoLuongThoaCoupon
        {
            get { return _soLuongThoaCoupon; }
            set { _soLuongThoaCoupon = value; }
        }

        /// <summary>
        /// số lượng mua cao nhất của coupon
        /// </summary>
        int _soLuongMuaLonNhat;

        public int SoLuongMuaLonNhat
        {
            get { return _soLuongMuaLonNhat; }
            set { _soLuongMuaLonNhat = value; }
        }

        /// <summary>
        /// số lượng đã đặt mua coupon
        /// </summary>
        int _soLuongDaDat;

        public int SoLuongDaDat
        {
            get { return _soLuongDaDat; }
            set { _soLuongDaDat = value; }
        }

        /// <summary>
        /// ngày bắt đầu bán coupon
        /// </summary>
        DateTime _ngayBatDau;

        public DateTime NgayBatDau
        {
            get { return _ngayBatDau; }
            set { _ngayBatDau = value; }
        }

        /// <summary>
        /// ngày kết thúc bán coupon
        /// </summary>
        DateTime _ngayKetThuc;

        public DateTime NgayKetThuc
        {
            get { return _ngayKetThuc; }
            set { _ngayKetThuc = value; }
        }

        /// <summary>
        /// ngày coupon bắt đầu có thể sử dụng
        /// </summary>
        DateTime _ngayCouponBatDauDuocSuDung;

        public DateTime NgayCouponBatDauDuocSuDung
        {
            get { return _ngayCouponBatDauDuocSuDung; }
            set { _ngayCouponBatDauDuocSuDung = value; }
        }

        /// <summary>
        /// ngày hết hạn sử dụng coupon
        /// </summary>
        DateTime _ngayCouponHetHan;

        public DateTime NgayCouponHetHan
        {
            get { return _ngayCouponHetHan; }
            set { _ngayCouponHetHan = value; }
        }

        /// <summary>
        /// thông tin mô tả về coupon
        /// </summary>
        string _thongTinMoTa;

        public string ThongTinMoTa
        {
            get { return _thongTinMoTa; }
            set { _thongTinMoTa = value; }
        }

        /// <summary>
        /// điều kiện sử dụng coupon
        /// </summary>
        string _dieuKienSuDung;

        public string DieuKienSuDung
        {
            get { return _dieuKienSuDung; }
            set { _dieuKienSuDung = value; }
        }

        /// <summary>
        /// danh sách các đường link hình ảnh của coupon
        /// </summary>
        string[] _linkHinhAnh;

        public string[] LinkHinhAnh
        {
            get { return _linkHinhAnh; }
            set { _linkHinhAnh = value; }
        }
    
    }
}
