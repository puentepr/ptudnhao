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
    public partial class FastSearchResult : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string keyWord = Request.QueryString["keyWord"];
                dlResult.DataSource = ProductBUS.FastSearchingByKeyWord(keyWord);
                dlResult.DataBind();
            }
        }
    }
}