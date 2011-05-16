<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemThongTinTaiKhoan.ascx.cs" Inherits="BIZ.GUI.UserControls.XemThongTinTaiKhoan" %>
<style type="text/css">
    .style3
    {
        width: 74%;
        height: 226px;
    }
    .style4
    {
        text-align: center;
    }
    .style5
    {
        width: 24px;
    }
    .style6
    {
        font-size: medium;
        font-weight: bold;
        color: #3333FF;
    }
</style>
<table class="style3">
    <tr>
        <td colspan="3" style="text-align: center">
            <span class="style6">THÔNG TIN KHÁCH HÀNG</span>
        </td>
    </tr>
    <tr>
        <td class="style4" style="text-align: right">
            <asp:Label ID="Label6" runat="server" Text="UserName"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtUserName" runat="server" Width="260px" BackColor="#F0F0F0" 
                ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4" style="text-align: right">
            <asp:Label ID="Label1" runat="server" style="text-align: left" 
                Text="Tên doanh nghiệp :"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtTenDN" runat="server" Width="260px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4" style="text-align: right">
            <asp:Label ID="Label2" runat="server" Text="Địa chỉ:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtDiaChi" runat="server" Width="260px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4" style="text-align: right">
            <asp:Label ID="Label3" runat="server" Text="Số điện thoại :"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtSDT" runat="server" Width="260px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4" style="text-align: right">
            <asp:Label ID="Label4" runat="server" Text="Tên đại diện :"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtTenDaiDien" runat="server" Width="260px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4" style="text-align: right">
            <asp:Label ID="Label5" runat="server" Text="Website:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtWebsite" runat="server" Width="260px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            </td>
        <td class="style5">
            <asp:Button ID="btCapNhat" runat="server" Text="Cập nhật" 
                onclick="btCapNhat_Click" />
            <br />
        </td>
        <td>
            <asp:Button ID="btHuyBo" runat="server" Text="Hủy bỏ" onclick="btHuyBo_Click" />
        </td>
    </tr>
    <tr>
        <td class="style4" colspan="3">
            <asp:Label ID="lbResult" runat="server"></asp:Label>
            </td>
    </tr>
</table>
