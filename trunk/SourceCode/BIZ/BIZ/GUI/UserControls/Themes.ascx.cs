using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIZ.GUI.UserControls
{
    public partial class Themes : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DrThemesDatabound(object sender, EventArgs e)
        {
            drThemes.SelectedValue = Page.Theme;
        }

        protected void drThemesSelectedIndexChange(object sender, EventArgs e)
        {
            Session.Add("MyTheme", drThemes.SelectedValue);
            Server.Transfer(Request.FilePath);
        }
    }
}