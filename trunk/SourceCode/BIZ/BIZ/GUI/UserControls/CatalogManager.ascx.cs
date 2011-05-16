using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIZ.GUI.UserControls
{
    public partial class CatalogManager : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LoaiUser"].ToString() == "Manager")
                {
                    manager.Visible = true;
                }
                else
                    manager.Visible = false;
               
            }
        }
    }
}