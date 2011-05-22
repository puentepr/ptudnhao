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

namespace BIZ.GUI.UserControls
{
    public partial class XemCapNhatSanPham : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lấy mã sản phẩm
                string masp= Request.QueryString["masp"];
                if (masp!="")
                {
                    SAN_PHAM_DTO sp = ProductBUS.LayThongTinSanPhamTheoMaSP(masp);
                    lbMaSP.Text= sp.MaSanPham;
                    //xử lý mã loại sp
                    //lbMaLSP.Text=sp.MaLoaiSanPham.ToString();
                    LOAISP_DTO lsp = ProductTypeBUS.LayLoaiSanPhamTheoMaLoaiSP(sp.MaLoaiSanPham);
                    lbMaLSP.Text = lsp.TenLoaiSanPham;

                    lbTenSP.Text = sp.TenSanPham;
                    txtareMota.Value = sp.MoTaSanPham;
                    
                    //xử lý hình ảnh
                    ImageSP.ImageUrl = sp.HinhAnh;

                    txtChatLuong.Text = sp.ChatLuong;
                    txtGiaBan.Text = sp.Gia.ToString();
                    txtSoLuong.Text = sp.SoLuong.ToString();
                    txtDonVi.Text = sp.DonViTinh;
                    lbSoLuongConLai.Text = sp.SoLuongConLai.ToString();
                    lbNgayDangSP.Text = sp.NgayDangSanPham.ToString();
                    lbNgaySuaDoi.Text = sp.NgaySuaDoi.ToString();
                    
                    //xử lý tình trạng
                    radiobtnTinhTrang.SelectedValue = sp.TinhTrangSanPham;
                    if (radiobtnTinhTrang.SelectedValue == "0")
                    {
                        radiobtnTinhTrang.Items[0].Enabled = true;
                    }
                    else
                    {
                        radiobtnTinhTrang.Items[1].Enabled = true;
                    }
                    
                    //chưa xử lý ngày xóa
                    lbSoNguoiMua.Text = sp.SoNguoiMua.ToString();                    

                }
            }
        }
    }
}