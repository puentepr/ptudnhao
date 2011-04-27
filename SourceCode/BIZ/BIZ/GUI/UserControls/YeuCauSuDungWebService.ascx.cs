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

namespace BIZ.GUI.UserControls
{
    public partial class YeuCauSuDungWebService : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btYeuCau_Click(object sender, EventArgs e)
        {
            YC_WEBSERVICE_DTO yc = new YC_WEBSERVICE_DTO();

            yc.UserName = txtUsername.Text;
            string pass = MD5.encryptPassword(txtPass.Text);
            yc.Tendn = txtTenHeThongMuaChung.Text;
            yc.Email = txtEmail.Text;
            yc.LinkWebSite = txtLink.Text;

            try
            {
                int kq = YCWebServiceBUS.ValidateUserName(yc.UserName, pass);
                if (kq == 1)
                {
                    try
                    {
                        YCWebServiceBUS.InsertYCWebService(yc);
                        Panel1.Visible = false;
                        Button1.Visible = true;
                        lbThongBao.Text = "<b style='color:red ' ><br />Yêu cầu của bạn đã được gửi đi thành công!</b>";
                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }
                else
                {
                    lbThongBao.Text = "<b style='color:red ' ><br/> Không thành công! username, pass không đúng hoặc trạng thái của bạn chưa active!</b>";
                    Panel1.Visible = true;
                    Button1.Visible = false;
                }
            }
            catch (Exception ex)
            {

                throw ex;
              
            }    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/");
        }

       
       
    }
}