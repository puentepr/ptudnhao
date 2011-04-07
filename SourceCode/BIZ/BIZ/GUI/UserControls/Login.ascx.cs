using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        protected void lbtDangKi_Click(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {

        }
    }
}