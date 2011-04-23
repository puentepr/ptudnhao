using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;

namespace BIZ.GUI.Consumers
{
    public partial class CheckAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["username"]!=null)
            {
                string username = Request["username"];
                int result = UserBUS.ValidateUserName(username);
                string response = "";
                if (result == 1)
                {
                    response = "<b style='color:red'>" + username + " đã tồn tại</b>";
                }
                else
                {
                    response = "<b style='color:blue'>" + username + " là hợp lệ</b>";
                }
                Response.Clear();
                Response.Write(response);
                Response.End();
            }
            
        }
    }
}
