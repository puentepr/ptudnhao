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
    public partial class XemCapNhatSanPham : System.Web.UI.UserControl
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
                    #region hiển thị thông tin sản phẩm
                    if (!IsPostBack)
                    {
                        //lấy mã sản phẩm
                        string masp = Request.QueryString["masp"];
                        if (masp != "")
                        {
                            SAN_PHAM_DTO sp = ProductBUS.LayThongTinSanPhamTheoMaSP(masp);

                           
                            lbMaSP.Text = sp.MaSanPham;
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
                            lbNgayDangSP.Text = sp.NgayDangSanPham.ToString("dd/MM/yyyy");
                            lbNgaySuaDoi.Text = sp.NgaySuaDoi.ToString("dd/MM/yyyy");

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

                            //không hiển thị ngày xóa

                            txtSoNguoiMua.Text = sp.SoNguoiMua.ToString();                         

                        }
                    }
                    #endregion
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
            
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            SAN_PHAM_DTO sp = new SAN_PHAM_DTO();

            #region lấy thông thay đổi
            
            sp.TenSanPham = lbTenSP.Text;
            int soNguoiMua = int.Parse(txtSoNguoiMua.Text);
            
            sp.SoNguoiMua = soNguoiMua;
            sp.Gia = float.Parse(txtGiaBan.Text);
            sp.DonViTinh = txtDonVi.Text;
            sp.ChatLuong = txtChatLuong.Text;
            
            sp.MaSanPham= lbMaSP.Text;
            sp.MoTaSanPham=txtareMota.Value;
            
            //chưa xử lý hình ảnh
            //sp.HinhAnh;                       
            
            //begin xử lý số lượng còn lại
            float soLuongMoi = float.Parse(txtSoLuong.Text);
            float slConLai = float.Parse(lbSoLuongConLai.Text);                       
            sp.SoLuong = soLuongMoi;
            sp.SoLuongConLai = soLuongMoi - soNguoiMua;
            //end xử lý số lượng còn lại
           
            //ngày sửa đổi : lấy ngày hiện tại
            sp.NgaySuaDoi= DateTime.Today;

            sp.TinhTrangSanPham = radiobtnTinhTrang.SelectedValue.ToString();
            #endregion
            try
            {
                //gọi hàm cập nhật sản phẩm
                int result = ProductBUS.CapNhatSanPham(sp);
                if (result == 1)
                {                 
                    //cập nhật thành công thì quay trở về trang danh sách sản phẩm
                    Response.Redirect("ListProduct.aspx");
                }
                else
                {                    
                    lbResult.ForeColor = Color.Red;
                    lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                }
            }
            catch (Exception ex)
            {                
                lbResult.ForeColor = Color.Red;
                lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                throw ex;                
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {            
            string maSP = lbMaSP.Text;
            //-1 : xóa
            string tinhTrang = "-1";
            DateTime ngayXoa = DateTime.Today;

            try
            {
                //gọi hàm xóa sản phẩm
                int result = ProductBUS.XoaSanPham(maSP,tinhTrang,ngayXoa);
                if (result == 1)
                {
                    //Xóa thành công thì quay trở về trang danh sách sản phẩm
                    Response.Redirect("ListProduct.aspx");  
                }
                else
                {                    
                    lbResult.ForeColor = Color.Red;
                    lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                }
            }
            catch (Exception ex)
            {                
                lbResult.ForeColor = Color.Red;
                lbResult.Text = "Đã có lỗi , xin vui lòng thử lại sau";
                throw ex;
            }
        }
    }
}