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
    public partial class UpdateCoupon : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Manager" && Request.QueryString["macp"] != "")
                {
                    if (!IsPostBack)
                    {
                        string macp = Request.QueryString["macp"];
                        COUPON_DTO cp = CouponBUS.GetCouponInfor1(macp);
                        txtGiaGoc.Text = cp.GiaGoc.ToString();
                        txtGiaSauKhiGiam.Text = cp.GiaSauGiam.ToString();
                        txtMaCP.Text = cp.MaCoupon;
                        txtRreaDKSU.Value = cp.DieuKienSuDung;
                        txtSLCPMinGiamGia.Text = cp.SoLuongCouponMin.ToString();
                        txtSLSPmin.Text = cp.SoLuongSanPhamMin.ToString();
                        DateTimePicker1.setDate(cp.ThoiGianBD.ToShortDateString());
                         DateTimePicker2.setDate(cp.ThoiGianKT.ToShortDateString());
                        TextBox1.Text = cp.TenSanPham;
                        /*
                        List<Coupon> list = CouponBUS.GetCouponInfor(macp);
                        txtGiaGoc.Text = list[0].GiaHangKhiChuaGiam.ToString();
                        txtGiaSauKhiGiam.Text = list[0].GiaHangSauKhiGiam.ToString();
                        txtMaCP.Text = list[0].MaCoupon;
                        txtRreaDKSU.Value = list[0].DieuKienSuDung;
                        txtSLCPMinGiamGia.Text=list[0].s*/
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        protected void bttDangSP_Click(object sender, EventArgs e)
        {
            if (DateTimePicker1.getDate() == "" && DateTimePicker2.getDate() == "")
            {
                lbResultInfo.Text = "Chưa điền ngày";
                return;
            }
            DateTime batdau;
            DateTime ketthuc;
            if (!DateTime.TryParse(DateTimePicker1.getDate(), out batdau))
            {
                lbResultInfo.Text = "Trường ngày bắt đầu không đúng dịnh dạng ngày";
                return;
            }
            if (!DateTime.TryParse(DateTimePicker2.getDate(), out ketthuc))
            {
                lbResultInfo.Text = "Trường ngày kết thúc không đúng dịnh dạng ngày";
                return;
            }
            COUPON_DTO couDTO = new COUPON_DTO();
            couDTO.MaCoupon = txtMaCP.Text;
           // couDTO.MaSanPham = ddlTenSP.SelectedValue.ToString();
            couDTO.GiaSauGiam = float.Parse(txtGiaSauKhiGiam.Text);
            couDTO.ThoiGianBD = batdau;
            couDTO.ThoiGianKT = ketthuc;
            couDTO.SoLuongSanPhamMin = int.Parse(txtSLSPmin.Text);
           // couDTO.TinhTrangCoupon = "1";
            couDTO.DieuKienSuDung = txtRreaDKSU.Value.ToString();
            couDTO.GiaGoc = float.Parse(txtGiaGoc.Text);
           // couDTO.DonViTienTe = ddlDVTienTe.Text;
            couDTO.SoLuongCouponMin = int.Parse(txtSLCPMinGiamGia.Text);
            try
            {
                CouponBUS.UpdateCoupon(couDTO); ;
                lbResultInfo.Text = "Đã cập nhật thành công";
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}