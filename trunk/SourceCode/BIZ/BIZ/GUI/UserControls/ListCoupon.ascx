<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListCoupon.ascx.cs" Inherits="BIZ.GUI.UserControls.ListCoupon" %>
<div align="center">
    <h3>Danh sách coupon trong hệ thống</h3>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" onpageindexchanging="GridView1_PageIndexChanging">
        <PagerSettings Mode="NextPrevious" NextPageText="Next" 
            PreviousPageText="Previous" />
        <Columns>
            <asp:BoundField DataField="MaCoupon" HeaderText="Mã Coupon" />
            <asp:BoundField DataField="TenMatHang" HeaderText="Tên mặt hàng" />
            <asp:BoundField DataField="NgayKetThuc" DataFormatString="{0:dd/MM/yyyy}" 
                HeaderText="Ngày hết hạn" />
            <asp:BoundField DataField="SoLuongDaDat" HeaderText="Số lượng đã đặt" />
            <asp:BoundField DataField="TinhTrang" HeaderText="Tình trạng" />
            <asp:TemplateField HeaderText="Xem chi tiết">
                <ItemTemplate>
                    
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Title") %>' NavigateUrl='<%# "~/GUI/Manager/ViewDetailCoupon.aspx?macp="+Eval("MaCoupon")%>' Target="_blank"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>