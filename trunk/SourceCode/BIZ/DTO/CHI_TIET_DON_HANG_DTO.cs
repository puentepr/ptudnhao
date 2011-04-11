using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class CHI_TIET_DON_HANG_DTO
    {
        private int _maDonHang;
        private string _maSanPham;
        private float _soLuong;
        private float _donGia;
        private string _donViTinh;

        public CHI_TIET_DON_HANG_DTO()
        {
            this._maDonHang = 0;
            this._maSanPham = "";
            this._soLuong = 0;
            this._donGia = 0;
            this._donViTinh = "";
        }

        public CHI_TIET_DON_HANG_DTO(int order, string product, float quantity, float price, string unit)
        {
            this._maDonHang = order;
            this._maSanPham = product;
            this._soLuong = quantity;
            this._donGia = price;
            this._donViTinh = unit;
        }
        
        public int maDonHang
        {
            get{ return this._maDonHang; }
            set{ this._maDonHang = value; }
        }
        public string maSanPham
        {
            get{ return this._maSanPham; }
            set{ this._maSanPham = value; }
        }
        public float soLuong
        {
            get{ return this._soLuong; }
            set{ this._soLuong = value; }
        }
        public float donGia
        {
            get{ return this._donGia; }
            set{ this._donGia = value; }
        }
        public string donViTinh
        {
            get{ return this._donViTinh; }
            set{ this._donViTinh = value; }
        }
    }
}
