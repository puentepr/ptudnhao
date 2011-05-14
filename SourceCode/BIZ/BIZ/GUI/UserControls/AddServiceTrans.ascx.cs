using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using BIZ.BUS;
using BIZ.DTO;

namespace BIZ.GUI.UserControls
{
    public partial class AddServiceTrans : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int isLogIn;
            int.TryParse(Session["IsLogin"].ToString(), out isLogIn);
            if (isLogIn == 1)
            {
                string typeUser = Session["LoaiUser"].ToString();
                if (typeUser == "Admin")
                {
                    if (!IsPostBack)
                    {
                        GridServiceTransDataBind();
                       /* List<hinhthuc> types = new List<hinhthuc>();
                        hinhthuc h1 = new hinhthuc();
                        h1.HinhThuc = "Vận chuyển thường";
                        hinhthuc h2 = new hinhthuc();
                        h2.HinhThuc = "Vận chuyển gấp";
                        types.Add(h1);
                        types.Add(h2);
                        grTransType.DataSource = types;
                        grTransType.DataBind();*/
                    }
                }
                else
                    Response.Redirect("../Shared/Default.aspx");
            }
            else
                Response.Redirect("../Shared/Default.aspx");
        }

        private void GridServiceTransDataBind()
        {
            grWebservice.DataSource = ServiceTransBUS.SelectServiceTrans();
            grWebservice.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SERVICE_TRANS_DTO service = new SERVICE_TRANS_DTO();
            service.TenCongTy = txtName.Text;
            service.LinkWebService = txtLink.Text;
            service.UserName = txtUserName.Text;
            service.PassWord = txtPass.Text;
            service.Website = txtWebsite.Text;
            service.BizAddress = txtBizAddress.Text;
            try
            {
              /*  List<TransportType> transtypes = new List<TransportType>();
                for (int i = 0; i < grTransType.Rows.Count; i++)
                {
                    TransportType trans = new TransportType();
                    trans.MaHinhThucVanChuyen = i.ToString();
                    trans.TenHinhThucVanChuyen = grTransType.Rows[i].Cells[0].Text;
                    float price;
                    float.TryParse(((TextBox)grTransType.Rows[i].FindControl("txtPrice")).Text, out price);
                    trans.Gia = price;
                    trans.DonViTien = ((TextBox)grTransType.Rows[i].FindControl("txtMoney")).Text;
                    transtypes.Add(trans);
                }*/
                int result = ServiceTransBUS.InsertServiceTrans(service);
                if (result == 1)
                {
                    lbResult.ForeColor = Color.Green;
                    lbResult.Text = "Đã thêm thành công";
                }
                else
                {
                    lbResult.ForeColor = Color.Red;
                    lbResult.Text = "Lỗi hệ thống, vui lòng thử lại sau!";
                }
            }
            catch (Exception ex)
            {
                lbResult.ForeColor = Color.Red;
                lbResult.Text = "Lỗi hệ thống, vui lòng thử lại sau!";
            }
        }

        protected void grWebservice_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int madv;
            int.TryParse(grWebservice.DataKeyNames[e.RowIndex],out madv);
            try
            {
                int result = ServiceTransBUS.DeleteServiceTrans(madv);
                if (result == 1)
                {
                    GridServiceTransDataBind();
                    lbsvresult.Text = "Đã xóa thành công";
                    lbsvresult.ForeColor = Color.Green;
                }
                else
                {
                    lbsvresult.Text = "Đã xảy ra lỗi , vui lòng thử lại sau";
                    lbsvresult.ForeColor = Color.Red;
                }
            }
            catch (Exception ex)
            {

                lbsvresult.Text = "Đã xảy ra lỗi , vui lòng thử lại sau";
                lbsvresult.ForeColor = Color.Red;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int madv;
            int.TryParse(((LinkButton)sender).CommandArgument, out madv);
            Response.Redirect("../Admin/UpdateServiceTrans.aspx?madv="+madv.ToString());
        }

      
    }
}