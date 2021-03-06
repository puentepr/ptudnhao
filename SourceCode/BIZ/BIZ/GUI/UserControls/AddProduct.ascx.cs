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
           

            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Manager")
                {
                    if (!IsPostBack)
                    {

                        //ddlLoaiSP.DataSource = ProductBUS.SelectingAllProduct();

                        ddlNhomLSP.DataSource = ProductTypeGroupBUS.SelectingAllProductTypeGroup();
                        ddlNhomLSP.DataBind();

                        if (ddlNhomLSP.SelectedValue.Length != 0)
                        {
                            ddlLoaiSP.DataSource = ProductTypeBUS.SelectingAllProductTypeByGroup(int.Parse(ddlNhomLSP.SelectedValue));
                            ddlLoaiSP.DataBind();
                        }
                        /*ddlLoaiSP.DataSource = ProductTypeBUS.SelectingAllProductType();
                        ddlLoaiSP.DataBind();*/
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        protected void bttDangSanPham_Click(object sender, EventArgs e)
        {
            SAN_PHAM_DTO proDTO = new SAN_PHAM_DTO();
            proDTO.MaSanPham = txtMaSP.Text;
            proDTO.MaLoaiSanPham = int.Parse(ddlLoaiSP.SelectedValue.ToString());
            proDTO.MoTaSanPham = txtRreaMoTa.Value;
            proDTO.HinhAnh = fuLinkHinhAnh.FileName;
            //proDTO.NgayXoa = DateTime.Parse("");
            proDTO.SoLuong = float.Parse(txtSoLuong.Text);
            proDTO.SoLuongConLai = float.Parse(txtSoLuong.Text);
            proDTO.TenSanPham = txtTenSP.Text;
            proDTO.TinhTrangSanPham = "1";
            proDTO.Gia = float.Parse(txtGiaGoc.Text);
            proDTO.DonViTinh = txtDVTinh.Text;
            proDTO.ChatLuong = txtChatLuong.Text;
            proDTO.NgayDangSanPham = DateTime.Today;
            proDTO.NgaySuaDoi = DateTime.Today;
            try
            {
                ProductBUS.AddProduct(proDTO);
                fuLinkHinhAnh.SaveAs(Server.MapPath("../../Content/images/products/"+proDTO.HinhAnh));
                lbresult.Text = "Đã thêm thành công";
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
            txtSoLuong.Text = "";
            txtTenSP.Text = "";
        }

        protected void ddlNhomLSP_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlNhomLSP.SelectedValue.Length != 0)
            {
                ddlLoaiSP.DataSource = ProductTypeBUS.SelectingAllProductTypeByGroup(int.Parse(ddlNhomLSP.SelectedValue));
                ddlLoaiSP.DataBind();
            }
        }
    }
}