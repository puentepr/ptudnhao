using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIZ.GUI.UserControls
{
    public partial class Cart : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Cart"] == null)
                {
                    lbSoLuong.Text = "0 sản phẩm";
                    tbCart.Visible = false;
                    lbSoLuong.Visible = true;
                    divcart.Visible = false;
                }
                else
                {
                    tbCart.Visible = true;
                    lbSoLuong.Visible = false;
                    divcart.Visible = true;
                }
            }
        }
    }
}