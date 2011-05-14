using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;

namespace BIZ.GUI.UserControls
{
    public partial class ListCoupon : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridCouponDataBind();
            }
        }

        private void GridCouponDataBind()
        {
            GridView1.DataSource = CouponBUS.SelectAnyCoupon();
            GridView1.DataBind();
        }

     

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridCouponDataBind();
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string mcp = ((LinkButton)sender).CommandArgument;
            Response.Redirect("../Manager/ViewDetailCoupon.aspx?macp=" + mcp);
        }
    }
}