using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using BIZ.BUS;
using BIZ.DTO;
using System.Drawing;
namespace BIZ.GUI.UserControls
{
    public partial class XemDanhSachWebserviceBank : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Admin")
                {
                    if (!IsPostBack)
                    {
                        dropTinhtrang_SelectedIndexChanged(null, null);
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        protected void dropTinhtrang_SelectedIndexChanged(object sender, EventArgs e)
        {            
            int trangthai=int.Parse(dropTinhtrang.SelectedValue.ToString());
            //show list Service bank
            gvDSBank.DataSource = ServiceBankBUS.LayDanhSachServiceBank(trangthai);
            gvDSBank.DataBind();
            //reset
            gvDSBank.SelectedIndex = -1;            
        }                

        protected void gvDSBank_RowCreated(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("style", "background-color: #FFFFFF; color: black;");
                    e.Row.Attributes.Add("onmouseover", "style.backgroundColor='#B8DBFF'");
                    e.Row.Attributes.Add("onmouseout", "style.backgroundColor='#FFFFFF'");
                }
            }
            catch { }
        }

        protected void gvDSBank_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDSBank.PageIndex = e.NewPageIndex;
            dropTinhtrang_SelectedIndexChanged(null , null);
        }
    }
}