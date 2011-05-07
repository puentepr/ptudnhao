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
    public partial class ConsumerRegister : System.Web.UI.UserControl
    {
        private string message = "Bạn đã đăng ký thành công . Một email đã được gởi tới mail của bạn để kích hoạt tài khoản tại hệ thống của chúng tôi.<br/>Bạn hãy check mail và thực hiện kích hoạt tài khoản để có thể đăng nhập vào hệ thống. Chú ý mail có thể bị đưa vào thư mục spam :)";
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
                USERS_DTO user = new USERS_DTO();
                KHACH_HANG_DTO consumer = new KHACH_HANG_DTO();
                user.UserName = txtusername.Value;
                user.PassWord = txtPass.Text;
                user.MaLoaiUser = 3;
                user.EMail = txtEmail.Text;
                user.TrangThai = 0;

                consumer.DiaChi = txtAddress.Text;
                consumer.TenDoanhNghiep = txtBusinessName.Text;
                consumer.SoDienThoai = txtPhone.Text;
                consumer.WebSite = txtWebAdress.Text;
                consumer.NguoiDaiDien = txtPersonName.Text;

                try
                {
                    int result= UserBUS.InsertConsumer(user, consumer);
                    if (result == 1)
                    {
                        string body = "<h4>Hi,"+user.UserName+"</h4><b>Doanh nghiệp bạn đã đăng ký thành công tại beatifulHouseGroup</b><br/>";
                        body += "<b style='color:red'>Hãy click link bên dưới để hoàn tất việc đăng ký </b><br/>";
                        string fullpath = Request.Url.AbsoluteUri;
                        int index = fullpath.LastIndexOf("/");
                        fullpath = fullpath.Remove(index);
                        body += "<a href='" + fullpath + "/Active.aspx?username="+user.UserName+"&id="+MD5.encryptPassword(user.UserName)+"'><b>" + fullpath + "/Active.aspx</b></a>";//chỗ này khi code sẽ kèm tham số là username+ băm gì đó
                        string subject = "Kich hoat tai khoan";
                        bool test = Email.sendMail(user.EMail, body, subject);
                        
                        lbCaptcha.Visible = false;
                        showMessage(message);
                    }
                }
                catch (Exception ex)
                {
                    //Chưa xử lý
                }

            }
            else
            {
                lbCaptcha.Text = "Mã an toàn không đúng !";
                lbCaptcha.Visible = true;
                return;
            }
            
        }

        protected void txtCaptcha_TextChanged(object sender, EventArgs e)
        {
            lbCaptcha.Visible = false;
        }


        protected void MyValidate(object source, ServerValidateEventArgs args)
        {
            if (txtPass.Text.Length < 5)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

 
    }
}