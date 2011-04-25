﻿using System;
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
    public partial class AddProduct : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //ddlLoaiSP.DataSource = ProductBUS.SelectingAllProduct();

                ddlNhomLSP.DataSource = ProductTypeGroupBUS.SelectingAllProductTypeGroup();
                ddlNhomLSP.DataBind();

                ddlLoaiSP.DataSource = ProductTypeBUS.SelectingAllProductType();
                ddlLoaiSP.DataBind();
            }

        }

        protected void bttDangSanPham_Click(object sender, EventArgs e)
        {
            SAN_PHAM_DTO proDTO = new SAN_PHAM_DTO();
            proDTO.MaSanPham = txtMaSP.Text;
            proDTO.MaLoaiSanPham = int.Parse(ddlLoaiSP.DataValueField);
            proDTO.MoTaSanPham = txtRreaMoTa.Value;
            proDTO.HinhAnh = "../Content/images/products/" + fuLinkHinhAnh.FileName;
            proDTO.NgayXoa = DateTime.Parse(null);
            proDTO.SoLuong = float.Parse(txtSoLuong.Text);
            proDTO.SoLuongConLai = float.Parse(txtSLTon.Text);
            proDTO.TenSanPham = txtTenSP.Text;
            proDTO.TinhTrangSanPham = txtTinhTrang.Text;
            proDTO.Gia = float.Parse(txtGiaGoc.Text);
            proDTO.DonViTinh = txtDVTinh.Text;
            proDTO.ChatLuong = txtChatLuong.Text;
            proDTO.NgayDangSanPham = DateTime.Today;
            proDTO.NgaySuaDoi = DateTime.Today;
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
            txtRreaMoTa.Value = "";
            txtSLTon.Text = "";
            txtSoLuong.Text = "";
            txtTenSP.Text = "";
            txtTinhTrang.Text = "";
        }
    }
}