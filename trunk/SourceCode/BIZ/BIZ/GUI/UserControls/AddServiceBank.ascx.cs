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
    public partial class AddServiceBank : System.Web.UI.UserControl
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
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SERVICE_BANK_DTO bank = new SERVICE_BANK_DTO();
            //gán
            bank.MaBank=txtMaBank.Text;
            bank.TenBank=txtTenBank.Text;
            bank.UserName=txtUsername.Text;
            bank.PassWord=txtPassWord.Text;
            bank.LinkWebService=txtLinksv.Text;
            bank.AnhBank = fileuploadLinkHinhAnh.FileName;

            if (dropTinhtrang.Text.CompareTo("Đang sử dụng") == 0)
            {
                bank.TinhTrangWS = 1;
            }
            else
            {
                bank.TinhTrangWS = 0;
            }
            
            bank.Website=txtWebsiteBank.Text;
            try
            {
                ServiceBankBUS.InsertServiceBank(bank);
                fileuploadLinkHinhAnh.SaveAs(Server.MapPath("../../Content/images/banks/" + bank.AnhBank));
                lbResultInfo.Text="Thêm thành công!";
            }
            catch (Exception ex)
            {                
                throw ex;
            }
        }

        protected void bttHuyBo_Click(object sender, EventArgs e)
        {
            txtMaBank.Text = "";
            txtTenBank.Text = "";
            txtUsername.Text = "";
            txtPassWord.Text = "";
            txtLinksv.Text = "";
            txtWebsiteBank.Text = "";
        }
    }
}