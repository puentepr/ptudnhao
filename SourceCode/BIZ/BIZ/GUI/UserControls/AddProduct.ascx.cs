using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DTO;
using BUS;

namespace BIZ.GUI.UserControls
{
    public partial class AddProduct : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttDangSanPham_Click(object sender, EventArgs e)
        {
            SAN_PHAM_DTO proDTO = new SAN_PHAM_DTO();
            proDTO.MaSanPham = txtMaSP.Text;
            proDTO.MaLoaiSanPham = int.Parse(txtMaLSP.Text);
            proDTO.MoTaSanPham = txtRreaMoTa.Value;
            proDTO.HinhAnh = fuLinkHinhAnh.FileName;
            proDTO.NgayXoa = DateTime.Parse(txtNgayXoa.Text);
            proDTO.SoLuong = float.Parse(txtSoLuong.Text);
            proDTO.SoLuongConLai = float.Parse(txtSLTon.Text);
            proDTO.TenSanPham = txtTenSP.Text;
            proDTO.TinhTrangSanPham = txtTinhTrang.Text;
            proDTO.Gia = float.Parse(txtGiaGoc.Text);
            proDTO.DonViTinh = txtDVTinh.Text;
            proDTO.ChatLuong = txtChatLuong.Text;
            try
            {
                ProductBUS.AddProduct(proDTO);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void bttHuyBo_Click(object sender, EventArgs e)
        {
            txtChatLuong.Text = "";
            txtDVTinh.Text = "";
            txtGiaGoc.Text = "";
            txtMaSP.Text = "";
            txtNgayXoa.Text = "";
            txtRreaMoTa.Value = "";
            txtSLTon.Text = "";
            txtSoLuong.Text = "";
            txtTenSP.Text = "";
            txtTinhTrang.Text = "";
        }
    }
}