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
    public partial class TenNewProduce : System.Web.UI.UserControl
    {
        private int j=0;
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
                List<SAN_PHAM_DTO> list = ProductBUS.SelectTopNewProducts();
                string strProduct = "<table class='tbproduct'>";
                int n = list.Count;
                int m=Min(3,n);
                strProduct += AddListProducts(0,list, m);
                m = Min(6, n);
                strProduct += AddListProducts(3,list, m);
                m = Min(9, n);
                strProduct += AddListProducts(6,list, m);
                strProduct += "</table>";
                divNewProduce.InnerHtml = strProduct;
          /*      
            
                <td class='produce'>
                    <asp:LinkButton ID='lbtProduce' runat='server'>
                        <img src='../../Content/images/bep-karador.jpg' />
                        <img src='../../Content/images/new.gif' />
                        <br />
                       
                    </asp:LinkButton>
                        <label id='lbName' class='lbname' runat='server'>Bếp ga Karador</label><br />
                        <label id='lbSaleOff' runat='server'>Giảm giá : 0%</label><br />
                        <label class='label' id='lbPrice' runat='server'>Giá : 5000000 VNĐ/sp</label>
                    
                      <asp:LinkButton ID='LinkButton3' runat='server'>
                        <img src='../../Content/images/xemchitiet_but.gif' />
                    </asp:LinkButton>
                    
                </td>
                 
                    </asp:LinkButton>  
                        
                    
                </td>
            */
            }
        }

        private string AddListProducts(int a,List<SAN_PHAM_DTO> list, int m)
        {
            string str= "<tr>";
            for (int i = a; i < m; i++)
            {
                str += AddProduct(list[i]);
            }
            str+= "</tr>";
            return str;
        }
        protected string AddProduct(SAN_PHAM_DTO sp)
        {
            string str="<td class='produce'><a href='../Consumers/ViewProduct.aspx?masp="+sp.MaSanPham+"'>";
            str+="<img src='"+sp.HinhAnh+"'/>";
            str+="<img src='../../Content/images/new.gif' /></a>";
            str+="<label  class='lbname' >"+sp.TenSanPham+" </label><br />";
            str+="<label class='label' >Giá : "+sp.Gia+" VND/"+sp.DonViTinh+"</label>";
            str+="<a href='../Consumers/ViewProduct.aspx?masp="+sp.MaSanPham+"'>";
            str+="<img src='../../Content/images/xemchitiet_but.gif' /></a></td>";
            return str;
        }
    }
}