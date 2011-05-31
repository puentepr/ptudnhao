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
    public partial class DanhSachDonHang : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Consumer" )
                {
                    if (!IsPostBack)
                    {
                        GridView1.DataSource = DonHangBUS.GetAllOrderKH(Session["User"].ToString());
                        GridView1.DataBind();

                        if (Session["mc"] != null)
                        {
                            muachung.Visible = true;
                            string username = Session["User"].ToString();
                            GridView2.DataSource = CouponBUS.GetDHCoupon(username);
                            GridView2.DataBind();
                            if (GridView2.Rows.Count <= 0)
                                muachung.Visible = false;

                        }
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

    }
}