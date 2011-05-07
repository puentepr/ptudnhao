using System;

/// <summary>
/// Version 1.1
/// interface cho web service của hệ thống mua chung
/// </summary>
public interface MuaChungWebService
{
    /// <summary>
    /// Chứng thực sử dụng web service
    /// </summary>
    /// <param name="username">tên tài khoản trong hệ thống</param>
    /// <param name="password">mật khẩu sử dụng tài khoản trong hệ thống</param>
    /// <returns>sid (session id)</returns>
    string Authenticate(string username, string password);

    /// <summary>
    /// Xác nhận lại giá mua cuối cùng của coupon sau khi đã được duyệt
    /// </summary>
    /// <param name="sid">session id</param>
    /// <param name="cid">mã coupon</param>
    /// <param name="price">giá coupon sau khi duyệt</param>
    /// <param name="unit">đơn vị tiền của giá coupon</param>
    /// <returns></returns>
    bool ConfirmCoupon(string sid, string cid, float price, string unit);
    
}
