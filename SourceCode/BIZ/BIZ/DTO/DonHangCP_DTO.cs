using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BIZ.DTO
{
    public class DonHangCP_DTO
    {
        string _maSP;

        public string MaSP
        {
            get { return _maSP; }
            set { _maSP = value; }
        }
        string _tenSP;

        public string TenSP
        {
            get { return _tenSP; }
            set { _tenSP = value; }
        }
        int _madh;

        public int Madh
        {
            get { return _madh; }
            set { _madh = value; }
        }
        DateTime _ngayDat;

        public DateTime NgayDat
        {
            get { return _ngayDat; }
            set { _ngayDat = value; }
        }
        float _tongTien;

        public float TongTien
        {
            get { return _tongTien; }
            set { _tongTien = value; }
        }
        string _tinhTrang;

        public string TinhTrang
        {
            get { return _tinhTrang; }
            set { _tinhTrang = value; }
        }
        string _dvTien;

        public string DvTien
        {
            get { return _dvTien; }
            set { _dvTien = value; }
        }
        int _soLuong;

        public int SoLuong
        {
            get { return _soLuong; }
            set { _soLuong = value; }
        }
        string _title;

        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }

       
    }
}
