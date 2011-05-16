<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemThongTinTaiKhoan.ascx.cs" Inherits="BIZ.GUI.UserControls.XemThongTinTaiKhoan" %>
<style type="text/css">
    .style3
    {
        width: 88%;
        height: 360px;
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
    .style7
    {
        text-align: center;
        height: 39px;
        width: 184px;
    }
    .style8
    {
        height: 39px;
    }
    .style9
    {
        text-align: center;
        width: 184px;
    }
</style>
<table class="style3">
    <tr>
        <td colspan="3" style="text-align: center">
            <span class="style6">THÔNG TIN KHÁCH HÀNG</span>
        </td>
    </tr>
    <tr>
        <td class="style9" style="text-align: right">
            <asp:Label ID="Label6" runat="server" Text="UserName :"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtUserName" runat="server" Width="260px" BackColor="#F0F0F0" 
                ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style9" style="text-align: right">
            <asp:Label ID="Label1" runat="server" style="text-align: left" 
                Text="Tên doanh nghiệp :"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtTenDN" runat="server" Width="260px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtTenDN" ErrorMessage="(*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7" style="text-align: right">
            <asp:Label ID="Label2" runat="server" Text="Địa chỉ :"></asp:Label>
        </td>
        <td colspan="2" class="style8">
            <asp:TextBox ID="txtDiaChi" runat="server" Width="260px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtDiaChi" ErrorMessage="(*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9" style="text-align: right">
            <asp:Label ID="Label3" runat="server" Text="Số điện thoại :"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtSDT" runat="server" Width="260px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtSDT" ErrorMessage="(*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9" style="text-align: right">
            <asp:Label ID="Label4" runat="server" Text="Tên đại diện :"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtTenDaiDien" runat="server" Width="260px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtTenDaiDien" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9" style="text-align: right">
            <asp:Label ID="Label5" runat="server" Text="Website :"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtWebsite" runat="server" Width="260px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtWebsite" ErrorMessage="(*)"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtWebsite" ErrorMessage="Sai định dạng website !" 
                ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
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
