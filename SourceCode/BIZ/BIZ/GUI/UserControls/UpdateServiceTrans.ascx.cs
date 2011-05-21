using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIZ.BUS;
using BIZ.DTO;
using System.Drawing;

namespace BIZ.GUI.UserControls
{
    public partial class UpdateServiceTrans : System.Web.UI.UserControl
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
                        string query = Request.QueryString["madv"];
                        if (query != null)
                        {
                            int madv;
                            int.TryParse(query, out madv);
                            hdfId.Value = madv.ToString();
                            SERVICE_TRANS_DTO service = ServiceTransBUS.GetServiceTransInfor(madv);
                            txtName.Text = service.TenCongTy;
                            txtLink.Text = service.LinkWebService;
                            txtWebsite.Text = service.Website;
                            txtUserName.Text = service.UserName;
                            //txtPass.TextMode = TextBoxMode.SingleLine;
                            txtPass.Text = service.PassWord;
                            //  txtPass.AutoPostBack = false;
                            //  txtPass.TextMode = TextBoxMode.Password;
                            if (service.TinhTrang == 1)
                            {
                                DropDownList1.Items[0].Selected = true;
                            }
                            else
                                DropDownList1.Items[1].Selected = true;


                        }
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
            SERVICE_TRANS_DTO service = new SERVICE_TRANS_DTO();
            service.TenCongTy = txtUserName.Text;
            service.LinkWebService = txtLink.Text;
            service.MaDV = int.Parse(hdfId.Value);
           // service.PassWord = txtPass.Text;
           // service.UserName = txtUserName.Text;
            service.TinhTrang = int.Parse(DropDownList1.SelectedValue);
            service.Website = txtWebsite.Text;
            try
            {
                int result = ServiceTransBUS.UpdateServiceTrans(service);
                if (result == 1)
                {
                    lbResult.ForeColor = Color.Green;
                    lbResult.Text = "Đã cập nhật thành công";
                }
                else
                {
                    lbResult.ForeColor = Color.Red;
                    lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                }
            }
            catch (Exception ex)
            {

                lbResult.ForeColor = Color.Red;
                lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string username = txtName.Text;
            string password = txtPass.Text;
            int madv;
            if (int.TryParse(hdfId.Value, out madv))
            {
                int result = ServiceTransBUS.UpdateAccountServiceTrans(madv, username, password);
                if (result == 1)
                {
                    Label1.ForeColor = Color.Green;
                    Label1.Text = "Đã cập nhật thành công";

                }
                else
                {
                    Label1.ForeColor = Color.Green;
                    Label1.Text = "Đã cập nhật thành công";
                }
            }
        }

      
    }
}