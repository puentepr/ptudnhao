using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIZ.GUI.Consumers
{
    public partial class ViewProduct : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // int a = 0;
        }
        protected override void OnLoadComplete(EventArgs e)
        {
            base.OnLoadComplete(e);
            Cart1.LoadCart();
        }
        
    }
}
