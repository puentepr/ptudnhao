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
    public partial class ViewProduct : System.Web.UI.UserControl
    {
        string ma = "";
      //  private Button button;

      /*  public Button Button
        {
            get {
                return (Button)FormView1.FindControl("Button1"); 
            }
          
        }
    */
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string masp = Request.QueryString["masp"];
                if (masp == null)
                    masp = "VL001";
                ma = masp;
                SAN_PHAM_DTO sp = ProductBUS.GetProductInfor(masp);
                List<SAN_PHAM_DTO> list = new List<SAN_PHAM_DTO>();
                list.Add(sp);
                FormView1.DataSource = list;
                FormView1.DataBind();
              /*  GridView1.DataSource = list;
               GridView1.DataBind();*/
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label lb = (Label)FormView1.FindControl("lbResult");
            Label lbdvtinh = (Label)FormView1.FindControl("lbDvTinh");
            TextBox soluong=(TextBox)FormView1.FindControl("TextBox1");
            GioHang cart = new GioHang();
            int s = 0;
            if (soluong.Text == "")
            {
                return;
            }
            else
            {
                
                bool test = int.TryParse(soluong.Text, out s);
                if (test == false || s < 1)
                {
                    lb.Text = "Số lượng mua phải là số lương nguyên , lớn hơn 0";
                    lb.Visible = true;
                    return;
                }

            }
            lb.Visible = false;
            cart.MaSanPham = FormView1.DataKey.Value.ToString();
            cart.SoLuong = s;
            cart.DonViTinh = lbdvtinh.Text;
            cart.TenSanPham = ((Label)FormView1.FindControl("lbTen")).Text;
            float price = 0;
            float.TryParse(((Label)FormView1.FindControl("lbGia")).Text, out price);
            cart.TienTe = "VNĐ";
            cart.DonGia = price;
            cart.SoTien = price * s;

            List<GioHang> carts;
            if (Session["Cart"] == null)
            {
                carts = new List<GioHang>();
            }
            else
            {
                carts = (List<GioHang>)Session["Cart"];
            }
            int flag = 0;
            foreach (GioHang gh in carts)
            {
                if (gh.MaSanPham == cart.MaSanPham)
                {
                    flag = 1;
                    gh.SoLuong += cart.SoLuong;
                    gh.SoTien += cart.SoTien;
                    break;
                }
            }
            if(flag==0)
                carts.Add(cart);
            Session["Cart"] = carts;

        }
       

    }
}