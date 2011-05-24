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
                DataList1.DataSource = ProductBUS.GetProductsSameType(sp.MaLoaiSanPham,sp.MaSanPham);
                DataList1.DataBind();
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
            float slCon = 0;
            float.TryParse(((Label)FormView1.FindControl("lbSoLuong")).Text, out slCon);
            cart.DonViTinh = lbdvtinh.Text;
            cart.TenSanPham = ((Label)FormView1.FindControl("lbTen")).Text;
            float price = 0;
            float.TryParse(((Label)FormView1.FindControl("lbGia")).Text, out price);
            cart.TienTe = "VNĐ";
            cart.DonGia = price;
            cart.SoTien = price * s;
            if (cart.SoLuong > slCon)
            {
                lb.Text = "Số lượng bạn mua vượt khả năng đáp ứng của chúng tôi, cảm ơn bạn đã đặt hàng!";
                lb.Visible = true;
                return;
            }
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
                    if (cart.SoLuong > slCon)
                    {
                        lb.Text = "Số lượng bạn mua vượt khả năng đáp ứng của chúng tôi, cảm ơn bạn đã đặt hàng!";
                        lb.Visible = true;
                        return;
                    }
                    break;
                }
            }
            if(flag==0)
                carts.Add(cart);
            Session["Cart"] = carts;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int index = 0;
            int.TryParse(((Button)sender).CommandName, out index);
            Label lb = (Label)DataList1.Items[index].FindControl("lbResult");

            Label lbdvtinh = (Label)DataList1.Items[index].FindControl("lbDvTinh");
            TextBox soluong = (TextBox)DataList1.Items[index].FindControl("TextBox1");
            float slCon = 0;
            float.TryParse(((Label)DataList1.Items[index].FindControl("lbSoLuong")).Text, out slCon);
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
            // cart.MaSanPham = DataList1.DataKey.Value.ToString();
            cart.MaSanPham = ((Button)sender).CommandArgument;
            cart.SoLuong = s;
            cart.DonViTinh = lbdvtinh.Text;
            cart.TenSanPham = ((Label)DataList1.Items[index].FindControl("lbTen")).Text;
            float price = 0;
            float.TryParse(((Label)DataList1.Items[index].FindControl("lbGia")).Text, out price);
            cart.TienTe = "VNĐ";
            cart.DonGia = price;
            cart.SoTien = price * s;

            if (cart.SoLuong > slCon)
            {
                lb.Text = "Số lượng bạn mua vượt khả năng đáp ứng của chúng tôi, cảm ơn bạn đã đặt hàng!";
                lb.Visible = true;
                return;
            }
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
                    if (cart.SoLuong > slCon)
                    {
                        lb.Text = "Số lượng bạn mua vượt khả năng đáp ứng của chúng tôi, cảm ơn bạn đã đặt hàng!";
                        lb.Visible = true;
                        return;
                    }
                    break;
                }
            }
            if (flag == 0)
                carts.Add(cart);
            Session["Cart"] = carts;
        }

       
       

    }
}