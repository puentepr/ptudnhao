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
    public partial class Products : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ml"] != null)
                {
                    int type = 0;
                    int.TryParse(Request.QueryString["ml"].ToString(), out type);
                    List<SAN_PHAM_DTO> list = ProductBUS.GetProductsFollowType(type);
                    if (list.Count <= 0)
                        idh4.InnerHtml = "Chưa có sản phẩm nào!";
                    DataList1.DataSource = list;
                    DataList1.DataBind();
                    switch (type)
                    {
                        case 1:
                            lb.InnerHtml = "VẬT LIỆU THÔ";
                            break;
                        case 2:
                            lb.InnerHtml = "VẬT LIỆU HOÀN THIỆN";
                            break;
                        case 3:
                            lb.InnerHtml = "HỆ THỐNG ỐNG VÀ PHỤ KIỆN";
                            break;
                        case 4:
                            lb.InnerHtml = "VẬT LIỆU ĐẶT BIỆT";
                            break;
                        case 5:
                            lb.InnerHtml = "ĐỒ NỘI THẤT TRONG NHÀ";
                            break;
                        case 6:
                            lb.InnerHtml = "THIẾT BỊ NHÀ TẮM - VỆ SINH";
                            break;
                        case 7:
                            lb.InnerHtml = "THIẾT BỊ NHÀ BẾP";
                            break;
                        
                    }
                }
            }
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