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
    public partial class ViewOrderDetails : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogIn"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string UserType = Session["LoaiUser"].ToString();
                if (UserType == "Consumer")
                {
                    if (!IsPostBack)
                    {
                        int maDonHang = int.Parse(Request.QueryString["madh"]);
                        List<CHI_TIET_DON_HANG_DTO> OrderDetail = new List<CHI_TIET_DON_HANG_DTO>();
                        OrderDetail = DonHangBUS.ViewOrderDetailsByOrderCode(maDonHang);

                        gvOrderDetail.DataSource = OrderDetail;
                        gvOrderDetail.DataBind();
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