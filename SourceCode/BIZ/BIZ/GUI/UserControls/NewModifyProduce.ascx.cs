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
                string strProduct = "<table class='tbproduct'>";
                int n = list.Count;
                int m = Min(3, n);
                strProduct += AddListProducts(0, list, m);
                m = Min(6, n);
                strProduct += AddListProducts(3, list, m);
                m = Min(9, n);
                strProduct += AddListProducts(6, list, m);
                strProduct += "</table>";
                divNewProduce.InnerHtml = strProduct;
                
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
    }
}