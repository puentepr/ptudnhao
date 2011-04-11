using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace BIZ.GUI.UserControls
{
    public partial class ConsumerRegister : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void showMessage(string content)
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script language='javascript'>alert('" + content + "');</script>");   
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
           /* showMessage("cureenExFilPath" + Request.CurrentExecutionFilePath.ToString());
            //GUI/Register.aspx
           // showMessage("Filepa " + Request.FilePath);
           // showMessage("path " + Request.Path);
            //showMessage("pathinf " + Request.PathInfo); hong co
           // showMessage("physicapp " + Request.PhysicalApplicationPath);
           // showMessage("phsicpath " + Request.PhysicalPath);//dia chi day du
            //showMessage("rawurl " + Request.RawUrl);*/
           // showMessage("absolutepath " + Request.Url.AbsolutePath);//BUI/Consumer
           // showMessage("absoluteuri " + Request.Url.AbsoluteUri);// http://localhost:1155/GUI/Consumers/Register.aspx
           // showMessage("hostname " + Request.UserHostName);//127.1.1
           // showMessage(Request.UserHostAddress);
           captcha.ValidateCaptcha(txtCaptcha.Text);

            if (captcha.UserValidated)
            {
                string body = "<h4>Hi,username</h4><b>Doanh nghiệp bạn đã đăng ký thành công tại beatifulHouseGroup</b><br/>";
                body += "<b style='color:blue'>Hãy click link bên dưới để hoàn tất việc đăng ký </b><br/>";
                string fullpath= Request.Url.AbsoluteUri;
                int index=fullpath.LastIndexOf("/");
                fullpath= fullpath.Remove(index);
                body+="<b>"+fullpath+"/Active.aspx"+"</b>";//chỗ này khi code sẽ kèm tham số là username+ băm gì đó
                string subject="Kich hoat tai khoan";
                bool test = Email.sendMail("forgetforgive1986@gmail.com", body,subject);
                lbCaptcha.Text = test.ToString();
                lbCaptcha.Visible = true;

            }
            else
            {
                lbCaptcha.Text = "Mã an toàn không đúng !";
                lbCaptcha.Visible = true;
                return;
            }
            
        }
    }
}