using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;

namespace BIZ.GUI.UserControls
{
    public partial class ActiveAcount : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request["username"]!=null && Request["id"]!=null)
            {
                string username = Request["username"];
                string id = Request["id"];
                if (id == MD5.encryptPassword(username))
                {
                    int result= UserBUS.UpdateStatusUser(username, 1);
                    if (result == 0)
                    {
                        string response = "<b style='color:blue'>Tài khoản của bạn đã được kích hoạt thành công, bây giờ bạn đã có thể đăng nhập vào hệ thống hoặc quay về </b><a href='../Shared/Default.aspx'><b style='color:green'>Trang chủ</b></a>";
                        pInfor.InnerHtml = response;
                    }
                    else
                    {
                        pInfor.InnerHtml = "<b style='color:red'>Hệ thống đang có sự cố , tài khoản của bạn chưa được active, vui lòng thử lại sau !</b>";
                    }
                }
                else
                {
                    pInfor.InnerHtml = "Thông tin kích hoạt không hợp lệ";
                }
            }
            else
            {
                pInfor.InnerHtml = "Thông tin kích hoạt không hợp lệ";
            }
        }
    }
}