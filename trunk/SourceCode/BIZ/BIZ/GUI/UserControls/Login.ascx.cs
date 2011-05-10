using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;

namespace BIZ.GUI.UserControls
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int isLogin = int.Parse(Session["IsLogin"].ToString());
                string userName = Session["User"].ToString();
                lblStatus.Text = "Hi, " + userName;
                if (isLogin == 0)
                {
                    login.Visible = true;
                    lbtLogout.Visible = false;
                }
                else
                {
                    
                    login.Visible = false;
                    lbtLogout.Visible = true;
                }
            }
        }
        public void showMessage(string content)
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script language='javascript'>alert('" + content + "');</script>");
        }
        protected void lbtDangKi_Click(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "")
            {
                showMessage("Chưa điền username");
            }
            else if (txtPassWord.Text == "")
            {
                showMessage("Chưa điền password");
            }
            else
            {
                string username = txtUserName.Text;
                string pass = MD5.encryptPassword(txtPassWord.Text);
                int typeUser = UserBUS.IsAvaliableAcount(username, pass);
                
                if (typeUser == 0)
                {
                    showMessage("Tài khoản chưa được kích hoạt");
                }
                else if (typeUser == -1)
                {
                    showMessage("Username và pass không đúng");
                }
                else
                {
                    Session["IsLogin"] = 1;
                    Session["User"] = username;
                    switch (typeUser)
                    {
                        case 1:
                            Session["LoaiUser"] = "Admin";
                            Response.Redirect("../Admin/ServiceTransfer.aspx");
                            break;
                        case 2:
                            Session["LoaiUser"] = "Manager";
                            Response.Redirect("../Manager/AddProduct.aspx");
                            break;
                        case 3:
                            Session["LoaiUser"] = "Consumer";
                            Response.Redirect("../Consumers/QuanLyDonHang.aspx");
                            break;
                    }
                }

            }
        }

        protected void lbtLogout_Click(object sender, EventArgs e)
        {
            Session["IsLogin"] = 0;
            Session["LoaiUser"] = "";
            Session["User"] = "Guest";
            Response.Redirect("../Shared/Default.aspx");
        }
    }
}