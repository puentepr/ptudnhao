using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using BIZ.BUS;
using BIZ.DTO;
using System.Drawing;

namespace BIZ.GUI.UserControls
{
    public partial class XemThongTinTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int isLogin=0;
                /*kiểm tra xem khách hàng đăng nhập hay chưa */
                if (Session["IsLogin"] != null)
                {
                    isLogin = int.Parse(Session["IsLogin"].ToString());
                }
                if (isLogin == 1)
                {
                    string username = Session["User"].ToString();
                    /*lấy thông tin tài khoản*/
                    KHACH_HANG_DTO kh = UserBUS.XemThongTinTaiKhoan(username);
                    /*hiển thị thông tin tài khoản*/
                    txtUserName.Text = kh.UserName;
                    txtTenDN.Text=kh.TenDoanhNghiep;
                    txtDiaChi.Text=kh.DiaChi;
                    txtSDT.Text=kh.SoDienThoai;
                    txtTenDaiDien.Text=kh.NguoiDaiDien;
                    txtWebsite.Text=kh.WebSite;
                }
            }
        }

        protected void btCapNhat_Click(object sender, EventArgs e)
        {
            KHACH_HANG_DTO kh = new KHACH_HANG_DTO();
            /*lấy thông tin từ giao diện*/
            kh.UserName= txtUserName.Text;
            kh.TenDoanhNghiep=txtTenDN.Text;
            kh.DiaChi=txtDiaChi.Text;
            kh.SoDienThoai=txtSDT.Text;
            kh.NguoiDaiDien=txtTenDaiDien.Text;
            kh.WebSite=txtWebsite.Text;

            try
            {
                int result = UserBUS.CapNhatTaiKhoanKhachHang(kh);
                if (result == 1)
                {
                    lbResult.ForeColor = Color.Green;
                    lbResult.Text = "Đã cập nhật thành công";
                }
                else
                {
                    lbResult.ForeColor = Color.Red;
                    lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                }
            }
            catch (Exception ex)
            {                
                lbResult.ForeColor = Color.Red;
                lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
            }
        }

        protected void btHuyBo_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Shared/Default.aspx");
        }

        protected void txtWebsite_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}