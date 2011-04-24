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

        }

        protected void bttDangSP_Click(object sender, EventArgs e)
        {
            /*COUPON_DTO couDTO = new COUPON_DTO();
            couDTO.MaCoupon = txtMaCP.Text;
            couDTO.MaSanPham = txtMaSP.Text;
            couDTO.GiaSauGiam = float.Parse(txtGiaSauKhiGiam.Text);
            couDTO.ThoiGianBD = DateTime.Today;
            couDTO.ThoiGianKT = couDTO.ThoiGianBD.Add(TimeSpan.Parse(txtTHCHL.Text));
            couDTO.SoLuongSanPhamMin = int.Parse(txtSLSPmin.Text);
            couDTO.TinhTrangCoupon = txtTinhTrangCP.Text;
            couDTO.DieuKienSuDung = txtRreaDKSU.ToString();
            couDTO.GiaGoc = float.Parse(txtGiaGoc.Text);
            couDTO.DonViTienTe = txtDVTienTe.Text;
            couDTO.SoLuongCouponMin = int.Parse(txtSLCPMinGiamGia.Text);
            try
            {
                CouponBUS.CreateCoupon(couDTO);
                /*if (Result == true)
                {
                    HtmlTextWriterTag.Label.ToString("Tao Thanh Cong");

                }
                else
                {
                    HtmlTextWriterTag.Label.ToString("Tao That Bai");
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }*/
        }

        protected void bttHuyBo_Click(object sender, EventArgs e)
        {
            /*txtMaCP.Text = "";
            txtMaSP.Text = "";
            txtDVTienTe.Text = "";
            txtGiaGoc.Text = "";
            txtGiaSauKhiGiam.Text = "";
            txtRreaDKSU.InnerText = "";
            txtSLCPMinGiamGia.Text = "";
            txtSLSPmin.Text = "";
            txtTHCHL.Text = "";
            txtTinhTrangCP.Text = "";*/
        }
    }
}