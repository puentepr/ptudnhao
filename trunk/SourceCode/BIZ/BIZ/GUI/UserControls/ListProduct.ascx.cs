﻿using System;
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
    public partial class ListProduct : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropTinhtrang_SelectedIndexChanged(null, null);
            }
            
        }
        protected void dropTinhtrang_SelectedIndexChanged(object sender, EventArgs e)
        {

            //int trangthai = int.Parse(dropTinhtrang.SelectedValue.ToString());
            string trangthai = dropTinhtrang.SelectedValue.ToString();
            //show danh sách sản phẩm
            gvXemDSSanPham.DataSource = ProductBUS.LayDanhSachSanPhamTheoTinhTrang(trangthai);
            gvXemDSSanPham.DataBind();
            //reset
            gvXemDSSanPham.SelectedIndex = -1;

        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string masp = ((LinkButton)sender).CommandArgument;
            Response.Redirect("../Manager/ViewDetailProduct.aspx?masp=" + masp);
        }
    }
}