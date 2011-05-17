<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemDanhSachTaiKhoan.ascx.cs" Inherits="BIZ.GUI.UserControls.XemDanhSachTaiKhoan" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        text-align: left;
        font-weight: bold;
    }
    .style3
    {
        text-align: left;
        font-weight: bold;
        color: #3333FF;
    }
</style>
<table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td class="style3">
            XEM DANH SÁCH TÀI KHOẢN</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
            <asp:GridView ID="gvDSTaiKhoan" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                style="text-align: left" onrowcreated="gvDSTaiKhoan_RowCreated" 
                AllowPaging="True">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:TemplateField HeaderText="Vai trò">
                        <ItemTemplate>
                            <asp:Label ID="lbVaiTro" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Trạng thái">
                        <ItemTemplate>
                            <asp:Label ID="lbTrangThai" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td>
    </tr>
</table>
