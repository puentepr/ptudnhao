using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIZ.GUI.Shared
{
    public partial class Default :BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
            }
        }
    }
}
