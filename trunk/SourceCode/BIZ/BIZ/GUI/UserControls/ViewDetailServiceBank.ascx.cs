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
    public partial class ViewDetailServiceBank : System.Web.UI.UserControl
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
                    #region Hiển thị thông tin webservice bank
                    if (!IsPostBack)
                    {
                        //lấy mã mã bank
                        string maBank = Request.QueryString["maBank"];
                        if (maBank != "")
                        {
                            SERVICE_BANK_DTO bank = ServiceBankBUS.LayServiceBankTheoMaBank(maBank);
                            //show thông tin Bank
                            txtMaBank.Text = bank.MaBank;
                            txtTenBank.Text = bank.TenBank;
                            txtwebsite.Text = bank.Website;
                            txtAreaWebservice.Value = bank.LinkWebService;
                            txtUsername.Text = bank.UserName;
                            txtpass.Text = bank.PassWord;
                            //Xử lý hiển thị tình trạng
                            radiobtnTinhTrang.SelectedValue = bank.TinhTrangWS.ToString();
                            if (radiobtnTinhTrang.SelectedValue == "0")
                            {
                                radiobtnTinhTrang.Items[0].Enabled = true;
                            }
                            else
                            {
                                radiobtnTinhTrang.Items[1].Enabled = true;
                            }
                            txtSTK.Text = bank.Stk;
                        }
                    }
                    #endregion 
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");

           
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            SERVICE_BANK_DTO bank = new SERVICE_BANK_DTO();
            #region Lấy thông tin service bank
            //lấy thông tin từ giao diện
            bank.MaBank = txtMaBank.Text;
            bank.TenBank = txtTenBank.Text;
            bank.Website = txtwebsite.Text;
            bank.UserName = txtUsername.Text;
            bank.PassWord = txtpass.Text;
            bank.Website = txtwebsite.Text;
            bank.LinkWebService = txtAreaWebservice.Value;
            //lấy trạng thái 
            bank.TinhTrangWS = int.Parse(radiobtnTinhTrang.SelectedValue.ToString());
            bank.Stk = txtSTK.Text;
            #endregion
            try
            {
                //gọi hàm cập nhật webservice bank
                int result = ServiceBankBUS.CapNhatServiceBank(bank);
                if (result == 1)
                {
                    //cập nhật thành công thì quay về trang danh sách Service bank
                    //Response.Redirect("XemDanhSachWebserviceBank.aspx");
                    string strScript = "<script>";
                    strScript += "alert('Bạn đã cập nhật thành công!');";
                    strScript += "window.location='XemDanhSachWebserviceBank.aspx';";
                    strScript += "</script>";
                    Page.RegisterClientScriptBlock("strScript", strScript);
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
                throw ex;
            }           
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            string mabank = txtMaBank.Text;
            //-1: xóa
            int tinhtrang = -1;
            try
            {
                //gọi hàm xóa webservice bank
                int result = ServiceBankBUS.XoaServiceBank(mabank, tinhtrang);
                if (result == 1)
                {
                    //xóa thành công và quay về trang danh sách service bank
                    //Response.Redirect("XemDanhSachWebserviceBank.aspx");
                    string strScript = "<script>";
                    strScript += "alert('Bạn đã xóa thành công!');";
                    strScript += "window.location='XemDanhSachWebserviceBank.aspx';";
                    strScript += "</script>";
                    Page.RegisterClientScriptBlock("strScript", strScript);
                }
                else
                {
                    //show thông báo                    
                    lbResult.ForeColor = Color.Red;
                    lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                }
            }
            catch (Exception ex)
            {
                //show thông báo                
                lbResult.ForeColor = Color.Red;
                lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                throw ex;
            }
        }
    }
}