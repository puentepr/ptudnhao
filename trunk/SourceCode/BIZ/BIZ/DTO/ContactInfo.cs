using System;

/// <summary>
/// Version 1.0
/// Thông tin liên lạc của khách hàng
/// </summary>
/// 
namespace BIZ.DTO
{
    public class ContactInfo
    {
        /// <summary>
        /// Địa chỉ liên lạc
        /// </summary>
        private string _diaChi;

        /// <summary>
        /// Địa chỉ liên lạc
        /// </summary>
        public string DiaChi
        {
            get { return _diaChi; }
            set { _diaChi = value; }
        }

        /// <summary>
        /// Số điện thoại
        /// </summary>
        private string _soDienThoai;

        /// <summary>
        /// Số điện thoại
        /// </summary>
        public string SoDienThoai
        {
            get { return _soDienThoai; }
            set { _soDienThoai = value; }
        }

        /// <summary>
        /// Email
        /// </summary>
        private string _email;

        /// <summary>
        /// Email
        /// </summary>
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
    }
}