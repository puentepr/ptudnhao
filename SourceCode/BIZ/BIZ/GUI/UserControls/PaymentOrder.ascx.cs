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
    public partial class PaymentOrder : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
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
                            type.TenHinhThucVanChuyen ="<a href='"+tran.Website+"' target=_'blank'>"+ tr.TenCongTyVanChuyen + "</a> - ";
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

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            string ma=rdvc.SelectedValue;
            string[]arr=ma.Split(new char[]{','});
            int madv = 0;
            int.TryParse(arr[0], out madv);
            string bank = rdbank.SelectedValue;
            string[] bankarr=bank.Split(new char[]{'+'});
            string bankid = bankarr[0];
            string stk = bankarr[1];
            /* tao don hang , va xoa gio hang */

            /* dang ky van chuyen */
        }

       

        

        
    }
}