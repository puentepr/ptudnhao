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
    public partial class CreateCoupon : System.Web.UI.UserControl
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
                        ddlTenSP.DataSource = ProductBUS.SelectingAllProduct();
                        ddlTenSP.DataBind();
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
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
            couDTO.MaSanPham = ddlTenSP.SelectedValue.ToString();
            couDTO.GiaSauGiam = float.Parse(txtGiaSauKhiGiam.Text);
            couDTO.ThoiGianBD = batdau;
            couDTO.ThoiGianKT = ketthuc;
            couDTO.SoLuongSanPhamMin = int.Parse(txtSLSPmin.Text);
            couDTO.TinhTrangCoupon = "1";
            couDTO.DieuKienSuDung = txtRreaDKSU.Value.ToString();
            couDTO.GiaGoc = float.Parse(txtGiaGoc.Text);
            couDTO.DonViTienTe = ddlDVTienTe.Text;
            couDTO.SoLuongCouponMin = int.Parse(txtSLCPMinGiamGia.Text);
            try
            {
                CouponBUS.CreateCoupon(couDTO);
                lbResultInfo.Text = "Đã tạo thành công";
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
            DateTimePicker1.setDate("");
            DateTimePicker2.setDate("");
        }
    }
}