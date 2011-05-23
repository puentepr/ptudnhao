using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using BIZ.DTO;
using BIZ.BUS;

namespace BIZ.GUI.UserControls
{
    public partial class FastSearch : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyWord = txtSearch.Text.Trim();
            try
            {
                Response.Redirect("~/GUI/Consumers/FastSearchResult.aspx?@keyWord=" + keyWord);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}