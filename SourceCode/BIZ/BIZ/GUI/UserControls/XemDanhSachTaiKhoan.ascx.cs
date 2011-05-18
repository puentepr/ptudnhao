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

namespace BIZ.GUI.UserControls
{
    public partial class XemDanhSachTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                dropVaiTro.DataSource = UserBUS.LayDanhSachLoaiUser();
                dropVaiTro.DataBind();
                dropVaiTro_SelectedIndexChanged(null,null);                
            }
        }

        protected void gvDSTaiKhoan_RowCreated(object sender, GridViewRowEventArgs e)
        {
            //e.Row.RowIndex != -1 : không chỉnh bất kỳ dòng nào
           
            //if (e.Row.DataItem != null)
            //{
            //    GridViewRow newRow = e.Row;
            //    USERS_DTO user = (USERS_DTO)newRow.DataItem;

            //    #region hiển thị text cho vai trò
            //    //Label lb1 = (Label)newRow.Cells[2].FindControl("lbVaiTro");
            //    //int vaitro = user.MaLoaiUser;
            //    //switch (vaitro)
            //    //{
            //    //    case 1:
            //    //        lb1.Text = "Admin";
            //    //        break;
            //    //    case 2:
            //    //        lb1.Text = "Manager";
            //    //        break;

            //    //    case 3:
            //    //        lb1.Text = "Consumer";
            //    //        break;
            //    //    default:
            //    //        break;
            //    //}
            //    #endregion
                                
            //    #region hiển thị text cho trạng thái
            //    Label lb2 = (Label)newRow.Cells[3].FindControl("lbTrangThai");
            //    int trangthai = user.TrangThai;
            //    switch (trangthai)
            //    {
            //        case 0:
            //            lb2.Text = "chưa active";
            //            break;
            //        case 1:
            //            lb2.Text = "đã active";
            //            break;
            //        default:
            //            break;
            //    }
            //    #endregion             
                
            //}
        }
        protected void ShowHidePanel(object sender, EventArgs e)
        {
            panelDSUser.Visible=!(panelDSUser.Visible);
            panelChiTietUser.Visible=!(panelChiTietUser.Visible);
        }

        protected void gvDSTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lấy tên loại user
            string tenloai = dropVaiTro.SelectedItem.Text;
            //lấy username
            string id = gvDSTaiKhoan.SelectedDataKey.Value.ToString();
            //lấy thông tin username
            USERS_DTO user = UserBUS.LayThongTinUserTheoUserName(id);
            int trangthai = user.TrangThai;

            if (tenloai == "Consumer")
            {
                //ẩn thông tin quản trị
                panelQuanTri.Visible = false;
                //hiện thông tin khách hàng
                panelKhachHang.Visible = true;
                #region Xem thông tin khách hàng
                //lấy thông tin khách hàng
                KHACH_HANG_DTO kh = UserBUS.XemThongTinTaiKhoan(id);
                //gán
                txtUserName.Text = kh.UserName;
                txtTenDN.Text = kh.TenDoanhNghiep;
                txtDiaChi.Text = kh.DiaChi;
                txtSDT.Text = kh.SoDienThoai;
                txtTenDaiDien.Text = kh.NguoiDaiDien;
                txtWebsite.Text = kh.WebSite;
                              
                switch (trangthai)
                {
                    case 0:
                        txtTrangThai.Text = "chưa active";
                        break;
                    case 1:
                        txtTrangThai.Text = "đã active";
                        break;
                    default:
                        break;
                }
                #endregion
            }
            else
            {
                //ẩn thông tin khách hàng
                panelKhachHang.Visible = false;
                #region Xem thông tin quản tri
                //lấy thông tin admin hoặc Manager
                QUAN_TRI_DTO qt = UserBUS.LayThongTinQuanTriTheoUserName(id);
                //gán
                txtUserNameQT.Text=qt.UserName;
                txtHoTenQT.Text=qt.HoTen;
                txtDiaChiQT.Text=qt.DiaChi;
                txtSDTQT.Text=qt.SoDienThoai;
                              
                switch (trangthai)
                {
                    case 0:
                        txtTrangThaiQT.Text = "chưa active";
                        break;
                    case 1:
                        txtTrangThaiQT.Text = "đã active";
                        break;
                    default:
                        break;
                }
                #endregion
            }        
           
            ShowHidePanel(null,null);
        }             

        protected void dropVaiTro_SelectedIndexChanged(object sender, EventArgs e)
        {
            string tenloai = dropVaiTro.SelectedItem.Text;
            gvDSTaiKhoan.DataSource = UserBUS.LayDanhSachUserTheoLoaiUser(tenloai);
            gvDSTaiKhoan.DataBind();
            //reset
            gvDSTaiKhoan.SelectedIndex = -1;
        }

        

             
    }
}