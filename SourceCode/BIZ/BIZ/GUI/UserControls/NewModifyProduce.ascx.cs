using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.DTO;
using BIZ.BUS;

namespace BIZ.GUI.UserControls
{
    public partial class NewModifyProduce : System.Web.UI.UserControl
    {
        private int Min(int a, int b)
        {
            if (a < b)
                return a;
            return b;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<SAN_PHAM_DTO> list = ProductBUS.SelectModifyNewProducts();
                DataList1.DataSource = list;
                DataList1.DataBind();
                /*  string strProduct = "<table class='tbproduct'>";
                int n = list.Count;
                int m = Min(3, n);
                strProduct += AddListProducts(0, list, m);
                m = Min(6, n);
                strProduct += AddListProducts(3, list, m);
                m = Min(9, n);
                strProduct += AddListProducts(6, list, m);
                strProduct += "</table>";
                divNewProduce.InnerHtml = strProduct*/
                
            }
        }
        private string AddListProducts(int a, List<SAN_PHAM_DTO> list, int m)
        {
            string str = "<tr>";
            for (int i = a; i < m; i++)
            {
                str += AddProduct(list[i]);
            }
            str += "</tr>";
            return str;
        }
        protected string AddProduct(SAN_PHAM_DTO sp)
        {
            string str = "<td class='produce'><a href='../Consumers/ViewProduct.aspx?masp=" + sp.MaSanPham + "'>";
            str += "<img src='" + sp.HinhAnh + "'/>";
            str += "<img src='../../Content/images/new.gif' /></a>";
            str += "<label  class='lbname'>" + sp.TenSanPham + " </label><br />";
            str += "<label class='label' >Giá : " + sp.Gia + " VND/" + sp.DonViTinh + "</label><br/>";
            str += "<label  class='lbname'>Ngày sửa đổi :</label>";
            str += "<label  class='label'>" + sp.NgaySuaDoi.ToShortDateString() + "</label><br/>";
            str += "<a href='../Consumers/ViewProduct.aspx?masp=" + sp.MaSanPham + "'>";
            str += "<img src='../../Content/images/xemchitiet_but.gif' /></a></td>";
            return str;
        }

        protected void Button1_Click(object sender, EventArgs e)
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