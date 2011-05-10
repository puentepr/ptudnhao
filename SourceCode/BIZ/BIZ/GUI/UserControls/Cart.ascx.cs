using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BIZ.DTO;

namespace BIZ.GUI.UserControls
{
    public partial class Cart : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCart();
            }
        }

        public void LoadCart()
        {
            if (Session["Cart"] == null)
            {
                lbSoLuong.Text = "0 sản phẩm";
              //  tbCart.Visible = false;
                lbSoLuong.Visible = true;
                divcart.Visible = false;
            }
            else
            {
                //tbCart.Visible = true;
                lbSoLuong.Visible = true;
                divcart.Visible = true;
                List<GioHang> carts = (List<GioHang>)Session["Cart"];
                float totalPrice = 0;
                foreach (GioHang cart in carts)
                {
                    totalPrice += cart.SoTien;
                }
                lbsumMoney.Text = totalPrice.ToString() + " VNĐ";
                GriptCartsDataBind(carts);
                lbSoLuong.Text = carts.Count.ToString()+" sản phẩm";
                if (carts.Count == 0)
                {
                    lbSoLuong.Text = "0 sản phẩm";
                    //  tbCart.Visible = false;
                    lbSoLuong.Visible = true;
                    divcart.Visible = false;
                }

            }
        }

        private void GriptCartsDataBind(List<GioHang> carts)
        {
            GridView1.DataSource = carts;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string masp = ((LinkButton)sender).CommandArgument;
            Response.Redirect("../Consumers/ViewProduct.aspx?masp="+masp);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (Session["Cart"] != null)
            {
                List<GioHang> list = (List<GioHang>)Session["Cart"];
                foreach (GioHang cart in list)
                {
                    if (cart.MaSanPham == GridView1.DataKeys[e.RowIndex].Value.ToString())
                    {
                        list.Remove(cart);
                        break;
                    }
                }

                LoadCart();
                
            }
        }
    }
}