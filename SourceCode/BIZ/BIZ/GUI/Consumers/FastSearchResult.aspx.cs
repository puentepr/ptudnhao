using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;
using BIZ.DTO;


namespace BIZ.GUI.Consumers
{
    public partial class FastSearchResult : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string keyWord = Request.QueryString["@keyWord"];
                    List<SAN_PHAM_DTO> dsProDTO = ProductBUS.FastSearchingByKeyWord(keyWord);
                    if (dsProDTO.Count > 0)
                    {
                        resultSearch.InnerHtml = "Có " + dsProDTO.Count.ToString() + " Sản Phẩm Phù Hợp Với Từ Khóa Tìm Kiếm";
                    }
                    else
                    {
                        resultSearch.InnerHtml = "Không Có Sản Phẩm Phù Hợp Với Từ Khóa Tìm Kiếm";
                    }
                    dlResult.DataSource = dsProDTO;
                    dlResult.DataBind();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
}
