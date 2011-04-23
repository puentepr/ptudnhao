using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BizWebservice.DTO
{
    public class NHOM_LOAISP_DTO
    {
        private int _maNhomLoaiSanPham;

        public int MaNhomLoaiSanPham
        {
            get { return _maNhomLoaiSanPham; }
            set { _maNhomLoaiSanPham = value; }
        }
        private string _tenNhomLoaiSanPham;

        public string TenNhomLoaiSanPham
        {
            get { return _tenNhomLoaiSanPham; }
            set { _tenNhomLoaiSanPham = value; }
        }

        public NHOM_LOAISP_DTO()
        {
            this._maNhomLoaiSanPham = 0;
            this._tenNhomLoaiSanPham = "";
        }
        public NHOM_LOAISP_DTO(int ma, string ten)
        {
            this._maNhomLoaiSanPham = ma;
            this._tenNhomLoaiSanPham = ten;
        }
    }
}
