using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace BIZ.GUI.Consumers
{
    public partial class YCWebService : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!IsPostBack)
            {
                if (Session["LoaiUser"].ToString() == "Manager")
                {
                    CatalogManager1.Visible = true;
                }
                else
                    CatalogManager1.Visible = false;
                if (Session["LoaiUser"].ToString() == "Admin")
                {
                    CatalogAdmin1.Visible = true;
                }
                else
                    CatalogAdmin1.Visible = false;
            */
        }
    }
}
