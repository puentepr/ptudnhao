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
    public partial class AdvanceSearch : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataSource = ProductTypeBUS.SelectingAllProductType();
                DropDownList1.DataBind();
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string tensp = "%" + txtSP.Text + "%" ;
           // string tensp =txtSP.Text;
            int lsp = 0;
            int.TryParse(DropDownList1.SelectedValue, out lsp);
            string chatluong = "%" + txtCL.Text + "%";
            float minprice = 0;
            float maxprice = 0;
            float.TryParse(TextBox2.Text, out minprice);
            float.TryParse(TextBox3.Text, out maxprice);

            try
            {
                List<SAN_PHAM_DTO> list = ProductBUS.AdvanceSearch(tensp, lsp, chatluong, minprice, maxprice);
                if (list.Count > 0)
                {
                    resultSearch.InnerHtml = "KẾT QUẢ : có " + list.Count.ToString() + " sản phẩm phù hợp";
                    
                }
                else
                {
                    resultSearch.InnerHtml = "Không tìm thấy sản phẩm nào phù hợp";
                }

                DataList1.DataSource = list; 
                DataList1.DataBind();
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

     

       

       

       
    }
}