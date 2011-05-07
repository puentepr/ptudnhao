using System;

/// <summary>
/// Version 1.0
/// Thông tin của một công ty vận chuyển
/// </summary>
public class TransportCompany
{
    /// <summary>
    /// Tên công ty vận chuyển
    /// </summary>
    private string _tenCongTyVanChuyen;

    /// <summary>
    /// Mã công ty vận chuyển
    /// </summary>
    public string TenCongTyVanChuyen
    {
        get { return _tenCongTyVanChuyen; }
        set { _tenCongTyVanChuyen = value; }
    }

    /// <summary>
    /// Mã công ty vận chuyển
    /// </summary>
    private string _maCongTyVanChuyen;

    /// <summary>
    /// Mã công ty vận chuyển
    /// </summary>
    public string MaCongTyVanChuyen
    {
        get { return _maCongTyVanChuyen; }
        set { _maCongTyVanChuyen = value; }
    }

    /// <summary>
    /// Danh sách các hình thức vận chuyển của công ty
    /// </summary>
    private TransportType[] _hinhThucVanChuyen;

    /// <summary>
    /// Danh sách các hình thức vận chuyển của công ty
    /// </summary>
    public TransportType[] HinhThucVanChuyen
    {
        get { return _hinhThucVanChuyen; }
        set { _hinhThucVanChuyen = value; }
    }
}
