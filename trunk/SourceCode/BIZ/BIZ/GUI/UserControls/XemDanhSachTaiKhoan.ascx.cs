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

//using BIZ.DAO;
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
                gvDSTaiKhoan.DataSource = UserBUS.LayDanhSachUser();
                gvDSTaiKhoan.DataBind();
            }
        }

        protected void gvDSTaiKhoan_RowCreated(object sender, GridViewRowEventArgs e)
        {
            //e.Row.RowIndex != -1 : không chỉnh bất kỳ dòng nào
            if (e.Row.RowIndex != -1 && e.Row.DataItem != null)
            {
                GridViewRow newRow = e.Row;
                USERS_DTO user = (USERS_DTO)newRow.DataItem;

                #region hiển thị text cho vai trò
                Label lb1 = (Label)newRow.Cells[2].FindControl("lbVaiTro");
                int vaitro = user.MaLoaiUser;
                switch (vaitro)
                {
                    case 1:
                        lb1.Text = "Admin";
                        break;
                    case 2:
                        lb1.Text = "Manager";
                        break;

                    case 3:
                        lb1.Text = "Consumer";
                        break;
                    default:
                        break;
                }
                #endregion
                                
                #region hiển thị text cho trạng thái
                Label lb2 = (Label)newRow.Cells[3].FindControl("lbTrangThai");
                int trangthai = user.TrangThai;
                switch (trangthai)
                {
                    case 0:
                        lb2.Text = "chưa active";
                        break;
                    case 1:
                        lb2.Text = "đã active";
                        break;
                    default:
                        break;
                }
                #endregion             
                
            }
        }

        protected void gvDSTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    
       
    }
}