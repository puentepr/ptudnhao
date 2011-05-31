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

namespace BIZ
{
    public partial class SoLuongGiaoDichDonHangCoupon1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Manager")
                {
                    //nếu thông tin không null thì đẩy vào textbox
                    //giữ lại ngày tháng trong textbox
                    //
                    if (IsPostBack == false && !string.IsNullOrEmpty(Request.QueryString["Day1"]))
                    {
                        //bỏ vào textbox để giữ lại
                        txtTuNgay.Text = DateTime.ParseExact(Request.QueryString["Day1"], "MM/dd/yyyy", null).ToString("dd/MM/yyyy");
                        txtDenNgay.Text = DateTime.ParseExact(Request.QueryString["Day2"], "MM/dd/yyyy", null).ToString("dd/MM/yyyy");
                        //có query string thì mới hiện crystal report lên
                        CrystalReportViewer1.Visible = true;

                    }
                    else
                    {
                        //lúc đầu không có query string thì ko có visible crystal report lên
                        CrystalReportViewer1.Visible = false;
                    }
                }
                else
                    Response.Redirect("Shared/Default.aspx");
            }
            else
                Response.Redirect("Shared/Default.aspx");
        }

        protected void btThongKe_Click(object sender, EventArgs e)
        {
            DateTime day1 = DateTime.Parse(txtTuNgay.Text);
            DateTime day2 = DateTime.Parse(txtDenNgay.Text);
            Response.Redirect("SoLuongGiaoDichDonHangCoupon.aspx?Day1=" + day1.ToString("MM/dd/yyyy") + "&Day2=" + day2.ToString("MM/dd/yyyy"));
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            this.Calendar1.Visible = !this.Calendar1.Visible;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            this.Calendar2.Visible = !this.Calendar2.Visible;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtTuNgay.Text = Calendar1.SelectedDate.ToString();
            this.Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtDenNgay.Text = Calendar2.SelectedDate.ToString();
            this.Calendar2.Visible = false;
        }
    }
}
