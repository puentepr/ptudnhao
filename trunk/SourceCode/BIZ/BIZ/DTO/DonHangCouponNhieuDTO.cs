using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BIZ.DTO
{
    public class DonHangCouponNhieuDTO
    {
        private int _maDonHangCoupon;

        public int MaDonHangCoupon
        {
            get { return _maDonHangCoupon; }
            set { _maDonHangCoupon = value; }
        }
      
       
        private DateTime _ngayDat;

        public DateTime NgayDat
        {
            get { return _ngayDat; }
            set { _ngayDat = value; }
        }

      
        private int _soLuongCoupon;

        public int SoLuongCoupon
        {
            get { return _soLuongCoupon; }
            set { _soLuongCoupon = value; }
        }
        string _tenDN;

        public string TenDN
        {
            get { return _tenDN; }
            set { _tenDN = value; }
        }
        private string _tinhTrang;

        public string TinhTrang
        {
            get { return _tinhTrang; }
            set { _tinhTrang = value; }
        }

        public DonHangCouponNhieuDTO()
        {
            this._maDonHangCoupon = 0;

            this._ngayDat = DateTime.MaxValue;
 
            this._soLuongCoupon = 0;
        }
    }
}
