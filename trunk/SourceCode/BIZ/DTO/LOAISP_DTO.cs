using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class LOAISP_DTO
    {
        private int _maLoaiSanPham;

        public int MaLoaiSanPham
        {
            get { return _maLoaiSanPham; }
            set { _maLoaiSanPham = value; }
        }
        private int _maNhomSanPham;

        public int MaNhomSanPham
        {
            get { return _maNhomSanPham; }
            set { _maNhomSanPham = value; }
        }
        private string _tenLoaiSanPham;

        public string TenLoaiSanPham
        {
            get { return _tenLoaiSanPham; }
            set { _tenLoaiSanPham = value; }
        }

        public LOAISP_DTO()
        {
            this._maLoaiSanPham = 0;
            this._maNhomSanPham = 0;
            this._tenLoaiSanPham = "";
        }
        public LOAISP_DTO(int maLSP, int maNSP, string tenLSP)
        {
            this._maLoaiSanPham = maLSP;
            this._maNhomSanPham = maNSP;
            this._tenLoaiSanPham = tenLSP;
        }
    }
}
