using System;

/// <summary>
/// Version 1.0
/// Thông tin hình thức vận chuyển
/// </summary>
/// 
namespace BIZ.DTO
{
    public class TransportType
    {
        /// <summary>
        /// Mã hình thức vận chuyển
        /// </summary>
        private string _maHinhThucVanChuyen;

        public string MaHinhThucVanChuyen
        {
            get { return _maHinhThucVanChuyen; }
            set { _maHinhThucVanChuyen = value; }
        }

        /// <summary>
        /// Tên hình thức vận chuyển
        /// </summary>
        private string _tenHinhThucVanChuyen;

        public string TenHinhThucVanChuyen
        {
            get { return _tenHinhThucVanChuyen; }
            set { _tenHinhThucVanChuyen = value; }
        }

        /// <summary>
        /// Giá hình thức vận chuyển
        /// </summary>
        private float _gia;

        public float Gia
        {
            get { return _gia; }
            set { _gia = value; }
        }

        /// <summary>
        /// Đơn vị tiền của giá hình thức vận chuyển
        /// </summary>
        private string _donViTien;

        public string DonViTien
        {
            get { return _donViTien; }
            set { _donViTien = value; }
        }
        private int _madv;

        public int Madv
        {
            get { return _madv; }
            set { _madv = value; }
        }
    }
}
