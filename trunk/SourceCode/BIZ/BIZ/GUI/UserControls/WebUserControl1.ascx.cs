using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;


namespace BIZ.GUI.UserControls
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Admin")
                {
                    if (!IsPostBack)
                    {
                       
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ma = TextBox1.Text;
            DateTime date = Calendar1.SelectedDate;
            CouponBUS.UpdateDate(ma, date);
        }
    }
}