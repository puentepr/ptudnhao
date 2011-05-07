using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    /// <summary>
    /// Version 2.1
    /// Interface web service của hệ thống doanh nghiệp Biz
    /// </summary>
    interface CouponWebService
    {
        /// <summary>
        /// Chứng thực sử dụng web service
        /// </summary>
        /// <param name="username">tên tài khoản trong hệ thống</param>
        /// <param name="password">mật khẩu sử dụng tài khoản trong hệ thống</param>
        /// <returns>sid (session id)</returns>
        string Authenticate(string username, string password);

        /// <summary>
        /// Lấy danh sách tất cả coupon
        /// </summary>
        /// <param name="sid">session id</param>
        /// <returns>Danh sách coupon</returns>
        Coupon[] FindAllCoupons(string sid);

        /// <summary>
        /// Tìm kiếm coupon dựa trên 1 số điều kiện tên sản phẩm, ngày bắt đầu, kết thúc sử dụng coupon, giá coupon
        /// </summary>
        /// <param name="sid">session id</param>
        /// <param name="productName">tên sản phẩm trong coupon</param>
        /// <param name="startDate">ngày bắt đầu sử dụng coupon</param>
        /// <param name="endDate">ngày coupon hết hạn</param>
        /// <param name="minPrice">giá coupon nhỏ nhất</param>
        /// <param name="maxPrice">giá coupon lớn nhất</param>
        /// <returns>Danh sách coupon thỏa tiêu chí tìm kiếm</returns>
        Coupon[] FindCoupons(string sid, string productName,        
                            DateTime startDate, DateTime endDate,
                            int minPrice, int maxPrice);

        /// <summary>
        /// Tìm kiếm dựa trên danh sách các tham số bất kỳ
        /// </summary>
        /// <param name="parameterNames">danh sách các tên tham số</param>
        /// <param name="parameterValues">danh sách các giá trị tham số tương ứng</param>
        /// <returns>Danh sách coupon thỏa tiêu chí tìm kiếm</returns>
        Coupon[] FindCoupons(string[] parameterNames, string[] parameterValues);

        /// <summary>
        /// Hàm tìm kiếm cụ thể thông tin 1 coupon
        /// </summary>
        /// <param name="sid">session id</param>
        /// <param name="couponId">mã coupon</param>
        /// <returns>Coupon cần lấy thông tin</returns>
        Coupon FindCouponInfo(string sid, string couponId);

        /// <summary>
        /// Đăng ký được phép sử dụng coupon
        /// </summary>
        /// <param name="sid">session id</param>
        /// <param name="couponId">mã coupon</param>        
        /// <returns>giá trị cho biết có đặt thành công không
        ///     true: thành công
        ///     false: thất bại
        /// </returns>
        bool RegisterCoupon(string sid, string couponId);

        /// <summary>
        /// Đặt mua coupon
        /// </summary>
        /// <param name="sid">session id</param>
        /// <param name="couponId">coupon id</param>
        /// <param name="count">số lượng coupon đặt mua</param>
        /// <returns>validation code</returns>
        string OrderCoupon(string sid, string couponId, int count);

        /// <summary>
        /// Xác nhận đặt mua coupon
        /// </summary>
        /// <param name="sid">session id</param>
        /// <param name="validationCode">mã chứng thực</param>
        /// <returns>giá trị cho biết có xác nhận thành công không
        ///     true: thành công
        ///     false: thất bại
        /// </returns>
        bool ValidateOrder(string sid, string validationCode);

        /// <summary>
        /// Hủy đặt mua coupon
        /// </summary>
        /// <param name="sid">session id</param>
        /// <param name="validationCode">validation code đại diện cho 1 đơn đặt mua coupon</param>
        /// <returns>giá trị cho biết có hủy đặt thành công không
        ///     true: thành công
        ///     false: thất bại
        /// </returns>
        bool CancelOrder(string sid, string validationCode);

        /// <summary>
        /// Lấy tất cả các công ty vận chuyển mà doanh nghiệp Biz đang sử dụng
        /// </summary>
        /// <returns>Danh sách các công ty vận chuyển</returns>
        TransportCompany[] GetTranports();

        /// <summary>
        /// Xác nhận lại lựa chọn vận chuyển của khách hàng
        /// </summary>
        /// <param name="sid">session id</param>
        /// <param name="transCompanyId">mã công ty vận chuyển</param>
        /// <param name="transTypeId">mã hình thức vận chuyển</param>
        /// <param name="validationCode">mã chứng thực ứng với 1 người đặt mua Coupon</param>
        /// <param name="contact">địa chỉ gởi hàng</param>
        /// <returns>link đến trang xem quá trình vận chuyển</returns>
        string ConfirmOrder(string sid, string transCompanyId, string transTypeId, string validationCode, ContactInfo contact);
    }

}
