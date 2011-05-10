using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.DTO;

namespace BIZ.GUI.UserControls
{
    public partial class ViewDetailCart : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowCartsToGridView();
            }
        }

        public void ShowCartsToGridView()
        {
            if (Session["Cart"] != null)
            {
                List<GioHang> carts = (List<GioHang>)Session["Cart"];
                if (carts.Count <= 0)
                    h3.InnerHtml = "<b style='color:blue'>Bạn chưa chọn mua sản phẩm nào cả!</b>";
                GridCartsDataBind(carts);
            }
            else
                h3.InnerHtml = "<b style='color:blue'>Bạn chưa chọn mua sản phẩm nào cả!</b>";
        }

        private void GridCartsDataBind(List<GioHang> carts)
        {
            GridView1.DataSource = carts;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string masp = ((LinkButton)sender).CommandArgument;
            Response.Redirect("../Consumers/ViewProduct.aspx?masp=" + masp);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           // GridView1.DeleteRow(e.RowIndex);
            string masp = GridView1.DataKeys[e.RowIndex].Value.ToString();
            List<GioHang> carts =(List<GioHang>) Session["Cart"];
            foreach (GioHang cart in carts)
            {
                if (cart.MaSanPham == masp)
                {
                    carts.Remove(cart);
                    break;
                }
            }
            GridView1.DataSource = carts;
            GridView1.DataBind();
            Session["Cart"] = carts;
        }
    }
}