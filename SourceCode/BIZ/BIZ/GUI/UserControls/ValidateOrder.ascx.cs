using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.DTO;

namespace BIZ.GUI.UserControls
{
    public partial class ValidateOrder : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Consumer")
                {
                    Label1.Visible = false;
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string code = txtCode.Text;
            if (Session["code"]!=null && Session["code"].ToString() == code)
            {
                if (Session["Cart"] != null && ((List<GioHang>)Session["Cart"]).Count > 0)
                {
                    Response.Redirect("../Consumers/Payment.aspx?payment=yes");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Bạn chưa có sản phẩm nào trong giỏ hàng nên mã xác nhận này vô giá trị";
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Mã xác nhận không đúng";
            }
        }
    }
}