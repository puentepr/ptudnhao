<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewDetailCart.ascx.cs" Inherits="BIZ.GUI.UserControls.ViewDetailCart" %>
<div align="center">
    <h3 id="h3" runat="server">Xem chi tiết giỏ hàng</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaSanPham" onrowdeleting="GridView1_RowDeleting" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:TemplateField HeaderText="Sản phẩm">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        CommandArgument='<%# Eval("MaSanPham") %>' onclick="LinkButton1_Click" 
                        Text='<%# Eval("TenSanPham") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
            <asp:BoundField DataField="DonViTinh" HeaderText="Đơn vị tính" />
            <asp:CommandField DeleteImageUrl="~/Content/images/delete.gif" HeaderText="Xóa" 
                ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</div>
