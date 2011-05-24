using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using BIZ.BUS;
using BIZ.DTO;
using System.Drawing;

namespace BIZ.GUI.UserControls
{
    public partial class PaymentOrder : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (/*typeUser == "Consumer" && */Request.QueryString["payment"]!=null)
                {
                    if (!IsPostBack)
                    {
                        List<SERVICE_TRANS_DTO> trans = ServiceTransBUS.SelectServiceTrans();
                        List<TransportType> types = new List<TransportType>();
                        foreach (SERVICE_TRANS_DTO tran in trans)
                        {
                            VanChuyen.FedexWebService1 proxy = new BIZ.VanChuyen.FedexWebService1();
                            proxy.Url = tran.LinkWebService;
                            //string sid = proxy.Authenticate(sv.UserName, sv.PassWord);
                            VanChuyen.TransportCompany tr = proxy.GetTranports();

                            int n = 0;

                            if (tr != null)
                            {
                                n = tr.HinhThucVanChuyen.Length;

                                for (int i = 0; i < n; i++)
                                {
                                    TransportType type = new TransportType();
                                    type.Madv = tran.MaDV;
                                    type.TenHinhThucVanChuyen = "<a href='" + tran.Website + "' target=_'blank'>" + tr.TenCongTyVanChuyen + "</a> - ";
                                    type.MaHinhThucVanChuyen = tran.MaDV + ",";
                                    type.MaHinhThucVanChuyen += tr.HinhThucVanChuyen[i].MaHinhThucVanChuyen;
                                    type.TenHinhThucVanChuyen += tr.HinhThucVanChuyen[i].TenHinhThucVanChuyen;
                                    type.Gia = tr.HinhThucVanChuyen[i].Gia;
                                    type.DonViTien = tr.HinhThucVanChuyen[i].DonViTien;
                                    types.Add(type);
                                }
                            }
                        }
                        rdvc.DataSource = types;
                        rdvc.DataBind();

                        /* lay danh sach ngan hang dang su dung */
                        List<SERVICE_BANK_DTO> banks = ServiceBankBUS.LayDanhSachServiceBankAndEdit(1);
                        rdbank.DataSource = banks;
                        rdbank.DataBind();
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            string ma=rdvc.SelectedValue;
            string[]arr=ma.Split(new char[]{','});
            int madv = 0;
            int.TryParse(arr[0], out madv);
            int type=0;
            int.TryParse(arr[1],out type);
            string bank = rdbank.SelectedValue;
            string[] bankarr=bank.Split(new char[]{'+'});
            string bankid = bankarr[0];
            string stk = bankarr[1];
            /* tao don hang , va xoa gio hang */
            if (Session["Cart"] != null)
            {
                List<GioHang> carts = (List<GioHang>)Session["Cart"];
                if (carts.Count > 0)
                {

                    DON_HANG_DTO dh = new DON_HANG_DTO();
                    dh.DiaChiNhan = txtAddress.Text;
                    dh.DonViTienTe = carts[0].TienTe;
                    dh.NgayGiao = DateTime.Now;
                    dh.UserName = Session["User"].ToString();
                    dh.TongTien=0;
                     foreach (GioHang cart in carts)
                    {
                        dh.TongTien+=(cart.DonGia*cart.SoLuong);
                    }
                    int madh=0;
                    madh=DonHangBUS.InsetOrder(dh);
                    dh.ChiTiet = new List<CHI_TIET_DON_HANG_DTO>();
                    foreach (GioHang cart in carts)
                    {
                        CHI_TIET_DON_HANG_DTO ct = new CHI_TIET_DON_HANG_DTO();
                        ct.donGia = cart.DonGia;
                        ct.donViTinh = cart.DonViTinh;
                        ct.maDonHang = madh;
                        ct.maSanPham = cart.MaSanPham;
                        ct.soLuong = cart.SoLuong;
                        try
                        {
                            DonHangBUS.InsertCTOrder(ct);
                        }
                        catch (Exception ex)
                        {
                            continue;
                        }
                    }
                    /* thanh toan */
                    SERVICE_BANK_DTO svbank = ServiceBankBUS.LayServiceBankTheoMaBank(bankid);
                    NganHang.KhachHangWS proxy1 = new BIZ.NganHang.KhachHangWS();
                    string sid = proxy1.Authenticate(svbank.UserName, svbank.PassWord);
                    int result= proxy1.TransferMoney(sid, txtId.Text, bankid, svbank.Stk, svbank.MaBank, dh.TongTien, "VND");
                    if (result == 1)
                    {
                        /* dang ky van chuyen */
                        SERVICE_TRANS_DTO svtran = ServiceTransBUS.GetServiceTransInfor(madv);
                        VanChuyen.FedexWebService1 proxy2 = new BIZ.VanChuyen.FedexWebService1();
                        sid = proxy2.Authenticate(svtran.UserName, svtran.PassWord);
                        string url = proxy2.TransportGoods(sid, madh.ToString(), carts.Count, DateTime.Now.AddDays(1), txtAddress.Text, type, svtran.BizAddress);
                        if (url.IndexOf(".aspx?") >= 0 || url.IndexOf("http://") >= 0 || url.IndexOf("https://") >= 0)
                        {
                            PACKAGEINFO_DTO pac=new PACKAGEINFO_DTO();
                            pac.URL=url;
                            pac.MaServiceTrans=svtran.MaDV;
                            pac.PackageInfo=madh.ToString();
                            try
                            {
                                DonHangBUS.InsertPackage(pac, madh);
                                lbresult.ForeColor = Color.Green;
                                lbresult.Text = "Quá trình mua đã thành công";
                            }
                            catch (Exception ex)
                            {
                                throw ex;
                            }
                            

                        }
                        else
                        {
                            lbresult.ForeColor = Color.Red;
                            lbresult.Text = "Đã thanh toán nhưng đặt vận chuyển thất bại";
                        }
                    }
                    else
                    {
                        switch (result)
                        {
                            case 2:
                                lbresult.ForeColor = Color.Red;
                                lbresult.Text = "Tài khoản chuyển không đủ tiền";
                                break;
                            case 3:
                                lbresult.ForeColor = Color.Red;
                                lbresult.Text = "Tài khoản chuyển không tồn tại";
                                break;
                            case 4:
                                lbresult.ForeColor = Color.Red;
                                lbresult.Text = "Tài khoản nhận không tồn tại";
                                break;
                            case 5:
                                lbresult.ForeColor = Color.Red;
                                lbresult.Text = "Mã ngân hàng chuyển tiền/Mã ngân hàng nhận tiền không tồn tại ";
                                break;
                            case 6:
                                lbresult.ForeColor = Color.Red;
                                lbresult.Text = "Lỗi khác";
                                break;
                        }
                    }

                    
                }
            }

            
        }

       

        

        
    }
}