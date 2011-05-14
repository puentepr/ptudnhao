using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;
using BIZ.DTO;

namespace BIZ.GUI.UserControls
{
    public partial class ViewDetailCoupon : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string macp = Request.QueryString["macp"];
                if (macp != "")
                {
                    List<Coupon> coupons = CouponBUS.GetCouponInfor(macp);
                    FormView1.DataSource = coupons;
                    FormView1.DataBind();


                    int numberOrder = 0;
                    int numberWS = 0;
                    
                    GridView grDetail = (GridView)FormView1.FindControl("grDetail");
                    grDetail.DataSource = CouponBUS.GetOrderExCoupons(macp, ref numberOrder, ref numberWS);
                    grDetail.DataBind();
                }
            }
        }
    }
}