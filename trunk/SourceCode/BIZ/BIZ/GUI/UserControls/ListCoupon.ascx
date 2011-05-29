<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListCoupon.ascx.cs" Inherits="BIZ.GUI.UserControls.ListCoupon" %>
<div align="center">
    <h3>Danh sách coupon trong hệ thống</h3>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" 
        onpageindexchanging="GridView1_PageIndexChanging" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Vertical" DataKeyNames="MaCoupon" 
        onrowdeleting="GridView1_RowDeleting">
        <PagerSettings NextPageText="Next" 
            PreviousPageText="Previous" />
        <RowStyle BackColor="#F7F7DE" />
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
            <asp:TemplateField HeaderText="Cập nhật">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2"  NavigateUrl='<%# "~/GUI/Manager/UpdateCoupon.aspx?macp="+Eval("MaCoupon")%>' Target="_blank" runat="server">Cập nhật</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Image" 
                DeleteImageUrl="~/Content/images/Delete.png" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</div>