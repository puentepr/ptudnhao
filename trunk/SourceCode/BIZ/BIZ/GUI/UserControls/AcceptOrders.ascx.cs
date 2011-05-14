using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;
using System.Drawing;

namespace BIZ.GUI.UserControls
{
    public partial class AcceptOrders : System.Web.UI.UserControl
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
                    if (!IsPostBack)
                    {

                        GridExCouponDataBind();
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        private void GridExCouponDataBind()
        {
            GridView1.DataSource = CouponBUS.GetExCoupons();
            GridView1.DataBind();
            if (GridView1.Rows.Count <= 0 && grDetail.Rows.Count > 0 && btnSale.Visible == false)
            {
                cph3.InnerHtml = "Chúc mừng bạn đã hoàn thành công việc";
            }
            if (GridView1.Rows.Count == 0 && grDetail.Rows.Count == 0)
                cph3.InnerHtml = "Không có Coupon nào hết hạn cần xử lý cả";
            
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string macp = ((LinkButton)sender).CommandArgument;
            hdfSLCP.Value = ((LinkButton)sender).CommandName;
            hdfCouponId.Value = macp;
            h3.InnerText = "Thông tin chi tiết coupon " + macp;
            int numberOrder=0;
            int numberWS=0;
            grDetail.DataSource = CouponBUS.GetOrderExCoupons(macp,ref numberOrder,ref numberWS);
            grDetail.DataBind();
            int mincp;
            int.TryParse(hdfSLCP.Value,out mincp);
            
            h41.InnerHtml = "<b style='color:green'>Đã có tổng cộng " + numberOrder.ToString() + " Coupon được đặt từ " + numberWS.ToString() + " hệ thống mua chung</b>";
            if(numberOrder>=mincp)
                h42.InnerHtml = "<b style='color:blue'>Số lượng coupon cần thỏa để giảm giá là " + hdfSLCP.Value + " Coupons</b>";
            else
                h42.InnerHtml = "<b style='color:red'>Số lượng coupon cần thỏa để giảm giá là " + hdfSLCP.Value + " Coupons</b>";
            if (numberOrder <= 0)
            {
                btnSale.Text = "Đánh dấu Coupon hết hạn";
                btnSale.Visible = true;
                drPrice.Visible = false;
            }
            else
            {
                btnSale.Text = "Đồng ý bán";
                drPrice.Visible = true;
                btnSale.Visible = false;
            }
            lbresult.Visible = false;
            divDetail.Visible = true;
        }

        protected void drPrice_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drPrice.SelectedIndex > 0)
                btnSale.Visible = true;
            else
                btnSale.Visible = false;
        }

        protected void btnSale_Click(object sender, EventArgs e)
        {
            int typePrice;
            int.TryParse(drPrice.SelectedValue, out typePrice);
            string macp = hdfCouponId.Value;
            string error = "";
            try
            {
                
                int result = CouponBUS.AcceptOrdersCoupon(macp, typePrice,ref error);
                GridExCouponDataBind();
                if (result == 1)
                {
                    if (error != "")
                        lbresult.Text = "Đã xử lý thành công! Nhưng webservice của " + error + " chưa kết nối được";
                    else
                        lbresult.Text = "Đã xử lý thành công!";
                    lbresult.ForeColor = Color.Green;
                    btnSale.Visible = false;
                    drPrice.Visible = false;
                }
                else
                {
                    if(error!="")
                        lbresult.Text = "Đã xảy ra lỗi, vui lòng thử lại sau! Nhưng webservice của " + error + " chưa kết nối được";
                    else
                        lbresult.Text = "Đã xảy ra lỗi, vui lòng thử lại sau!";
                    lbresult.ForeColor = Color.Red;
                }
            }
            catch (Exception ex)
            {
                if (error != "")
                    lbresult.Text = "Đã xảy ra lỗi, vui lòng thử lại sau! Nhưng webservice của " + error + " chưa kết nối được";
                else
                    lbresult.Text = "Đã xảy ra lỗi, vui lòng thử lại sau!";
                lbresult.ForeColor = Color.Red;
            }
            lbresult.Visible = true;

        }

       
    }
}