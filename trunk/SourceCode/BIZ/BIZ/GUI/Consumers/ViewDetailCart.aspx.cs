using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIZ.GUI.Consumers
{
    public partial class ViewDetailCart : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected override void OnLoadComplete(EventArgs e)
        {
            base.OnLoadComplete(e);
            Cart1.LoadCart();
            ViewDetailCart1.ShowCartsToGridView();
        }
    }
}
