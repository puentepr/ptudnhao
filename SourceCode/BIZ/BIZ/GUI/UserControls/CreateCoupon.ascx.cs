using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BIZ.DTO;
using BIZ.BUS;

namespace BIZ.GUI.UserControls
{
    public partial class CreateCoupon : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlTenSP.DataSource = ProductBUS.SelectingAllProduct();
                ddlTenSP.DataBind();
            }
        }

        protected void BindingProductIntoDropDownList()
        {
            //Du Tinh Lam Nhung Chua Lam Duoc, Thoi De No Do Di
            //DataSet ds = new DataSet();
            //string sqlCommand = "";
            //SqlDataSource sourcce = new SqlDataSource();
            //ddlTenSP.DataSource = sourcce;

        }

        protected void bttDangSP_Click(object sender, EventArgs e)
        {
            COUPON_DTO couDTO = new COUPON_DTO();
            couDTO.MaCoupon = txtMaCP.Text;
            couDTO.MaSanPham = ddlTenSP.DataValueField;
            couDTO.GiaSauGiam = float.Parse(txtGiaSauKhiGiam.Text);
            couDTO.ThoiGianBD = DateTime.Today;
            couDTO.ThoiGianKT = couDTO.ThoiGianBD.Add(TimeSpan.Parse(txtThoiGianApDung.Text));
            couDTO.SoLuongSanPhamMin = int.Parse(txtSLSPmin.Text);
            couDTO.TinhTrangCoupon = txtTinhTrangCP.Text;
            couDTO.DieuKienSuDung = txtRreaDKSU.ToString();
            couDTO.GiaGoc = float.Parse(txtGiaGoc.Text);
            couDTO.DonViTienTe = ddlDVTienTe.Text;
            couDTO.SoLuongCouponMin = int.Parse(txtSLCPMinGiamGia.Text);
            try
            {
                CouponBUS.CreateCoupon(couDTO);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void bttHuyBo_Click(object sender, EventArgs e)
        {
            txtMaCP.Text = "";
            txtGiaGoc.Text = "";
            txtGiaSauKhiGiam.Text = "";
            txtRreaDKSU.InnerText = "";
            txtSLCPMinGiamGia.Text = "";
            txtSLSPmin.Text = "";
            txtThoiGianApDung.Text = "";
            txtTinhTrangCP.Text = "";
        }
    }
}