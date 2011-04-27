<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YeuCauSuDungWebService.ascx.cs" Inherits="BIZ.GUI.UserControls.YeuCauSuDungWebService" %>
<style type="text/css">
    .style1
    {
        width: 525px;
        height: 255px;
        margin-left: 0px;
    }
    .style2
    {
        text-align: center;
    }
    .style6
    {
        text-align: left;
        width: 146px;
    }
    .style7
    {
        width: 18px;
        text-align: center;
    }
    #txtusername
    {
        width: 198px;
    }
    .style8
    {
        width: 219px;
    }
    .style9
    {
        text-align: left;
        width: 146px;
        height: 29px;
    }
    .style10
    {
        width: 18px;
        text-align: center;
        height: 29px;
    }
    .style11
    {
        width: 219px;
        height: 29px;
    }
</style>
<div>
<h3 class="style2">Yêu cầu webservice</h3>
    <table cellpadding="0" cellspacing="0" class="style1" align="center">
        <tr>
            <td class="style6">
                <asp:Label ID="lbTenDangNhap" runat="server" Text="Tên đăng nhập"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style8">
                <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="(*)"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lbMatKhau" runat="server" Text="Mật khẩu"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style8">
                <asp:TextBox ID="txtPass" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="(*)"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style10">
                :</td>
            <td class="style11">
                <asp:TextBox ID="txtEmail"  runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Sai định dạng email!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lbTenHeThongMuaChung" runat="server" 
                    Text="Tên hệ thống mua chung"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style8">
                <asp:TextBox ID="txtTenHeThongMuaChung" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtTenHeThongMuaChung" ErrorMessage="(*)"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lbWebsite" runat="server" 
                    Text="Website"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style8">
                <asp:TextBox ID="txtLink"  runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtLink" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtLink" ErrorMessage="Sai định dạng websitel!" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:Button ID="btYeuCau" runat="server" onclick="btYeuCau_Click" 
                    Text="Yêu cầu" />
            </td>
        </tr>
        </table>
</div>