using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;
using BIZ.DTO;

namespace BIZ.GUI.UserControls
{
    public partial class CapNhatYCWebservice : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Manager")
                {
                    if (!IsPostBack)
                    {
                        GridView1.DataSource = YCWebServiceBUS.SelectNewRequest();
                        GridView1.DataBind();
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<YC_WEBSERVICE_DTO> list = new List<YC_WEBSERVICE_DTO>();
            int n = GridView1.Rows.Count;
            for (int i = 0; i < n; i++)
            {
                YC_WEBSERVICE_DTO yc = new YC_WEBSERVICE_DTO();
                yc.Ma =int.Parse( GridView1.DataKeys[i].Value.ToString());
                DropDownList drop=(DropDownList )GridView1.Rows[i].FindControl("DropDownList1");
                yc.TinhTrangYeuCau = int.Parse(drop.SelectedValue);
                yc.Email = GridView1.Rows[i].Cells[2].Text;
                list.Add(yc);
            }
            YCWebServiceBUS.UpdateStatusRequest(list);
            GridView1.DataSource = YCWebServiceBUS.SelectNewRequest();
            GridView1.DataBind();
        }
    }
}