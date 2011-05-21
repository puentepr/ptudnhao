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
            //dropTinhtrang_SelectedIndexChanged(null,null);
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
            gvDSBank.DataSource = ServiceBankBUS.LayDanhSachServiceBank(trangthai);
            gvDSBank.DataBind();
            //reset
            gvDSBank.SelectedIndex = -1;            
        }

        protected void ShowHidePanel(object sender, EventArgs e)
        {
            panelDSBank.Visible = !(panelDSBank.Visible);
            panelChiTietBank.Visible = !(panelChiTietBank.Visible);
        }
     
        protected void gvDSBank_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lấy mã bank;
            string mabank = gvDSBank.SelectedDataKey.Value.ToString();
            //lấy webservice bank theo mã bank
            SERVICE_BANK_DTO bank = ServiceBankBUS.LayServiceBankTheoMaBank(mabank);
            //show thông tin Bank
            txtMaBank.Text= bank.MaBank;
            txtTenBank.Text=bank.TenBank;
            txtwebsite.Text = bank.Website;
            txtAreaWebservice.Value = bank.LinkWebService;
            txtUsername.Text = bank.UserName;
            txtpass.Text=bank.PassWord;
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
            //ẩn kết quả thông báo
            lbResult.Enabled=false ;
            //ẩn thông danh sách bank
            ShowHidePanel(null, null);
            
            
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            SERVICE_BANK_DTO bank = new SERVICE_BANK_DTO();
            //lấy thông tin từ giao diện
            bank.MaBank= txtMaBank.Text;
            bank.TenBank= txtTenBank.Text;
            bank.Website=txtwebsite.Text;
            bank.UserName=txtUsername.Text;
            bank.PassWord=txtpass.Text;
            bank.Website=txtwebsite.Text;
            bank.LinkWebService=txtAreaWebservice.Value;
            //lấy trạng thái 
            bank.TinhTrangWS = int.Parse( radiobtnTinhTrang.SelectedValue.ToString());
            try
            {
                //gọi hàm cập nhật webservice bank
                int result = ServiceBankBUS.CapNhatServiceBank(bank);
                if (result == 1)
                {
                    //show thông báo
                    lbResult.Enabled = true;
                    lbResult.ForeColor = Color.Green;
                    lbResult.Text = "Đã cập nhật thành công";
                }
                else
                {
                    lbResult.Enabled = true;
                    lbResult.ForeColor = Color.Red;
                    lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                }
            }
            catch (Exception ex)
            {
                lbResult.Enabled = true;
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
                int result = ServiceBankBUS.XoaServiceBank(mabank,tinhtrang);
                if (result == 1)
                {
                    //show thông báo
                    lbResult.Enabled = true;
                    lbResult.ForeColor = Color.Green;
                    lbResult.Text = "Đã xóa thành công";
                }
                else
                {
                    //show thông báo
                    lbResult.Enabled = true;
                    lbResult.ForeColor = Color.Red;
                    lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                }
            }
            catch (Exception ex)
            {
                //show thông báo
                lbResult.Enabled = true;
                lbResult.ForeColor = Color.Red;
                lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                throw ex;
            }
        }
    }
}