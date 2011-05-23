using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BIZ.DTO;
using BIZ.BUS;

namespace BIZ.GUI.UserControls
{
    public partial class Cart : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
            
            if (!IsPostBack)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Admin" || typeUser == "Manager")
                    cartid.Visible = false;
                else
                    cartid.Visible = true;
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

        protected void lbtPayment_Click(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Consumer")
                {
                    string code=MD5.encryptPassword(DateTime.Now.ToString());
                    Session["code"]=code;
                    string username=Session["User"].ToString();
                    USERS_DTO user=UserBUS.LayThongTinUserTheoUserName(username);
                    string body="<b>Hi "+username+"</b><br/>Doanh nghiệp bạn vừa yêu cầu đặt mua hàng, chúng tôi gởi bạn mã xác nhận để bạn tiếp tục quy trình mua <b style='color:red'>"+code+"</b>. Hãy copy nó và điền vào trang xác nhận của chúng tôi";
                    Email.sendMail(user.EMail,body,"Xác nhận mua hàng");
                    Response.Redirect("../Consumers/ValidateCode.aspx");
                }
                else
               
                    showMessage("Chỉ có tài khoản dành cho khách hàng mới thực hiện được chức năng này");
            }
            else
                showMessage("Bạn cần đăng nhập mới thực hiện được chức năng này");
        }
        public void showMessage(string content)
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script language='javascript'>alert('" + content + "');</script>");
        }
    }
}