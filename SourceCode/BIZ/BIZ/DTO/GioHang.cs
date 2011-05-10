using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BIZ.DTO
{
    public class GioHang
    {
        private string _maSanPham;

        public string MaSanPham
        {
            get { return _maSanPham; }
            set { _maSanPham = value; }
        }
        private string _tenSanPham;

        public string TenSanPham
        {
            get { return _tenSanPham; }
            set { _tenSanPham = value; }
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
        private float _donGia;

        public float DonGia
        {
            get { return _donGia; }
            set { _donGia = value; }
        }
        private float _soTien;

        public float SoTien
        {
            get { return _soTien; }
            set { _soTien = value; }
        }
        private string _tienTe;

        public string TienTe
        {
            get { return _tienTe; }
            set { _tienTe = value; }
        }
    }
}
