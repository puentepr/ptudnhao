<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YeuCauSuDungWebService.ascx.cs" Inherits="BIZ.GUI.UserControls.YeuCauSuDungWebService" %>
<style type="text/css">
    .style1
    {
        width: 457px;
        height: 203px;
        margin-left: 0px;
    }
    .style2
    {
        text-align: center;
    }
    .style4
    {
        width: 145px;
    }
    .style6
    {
        text-align: left;
        width: 198px;
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
            <td class="style4">
                <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lbMatKhau" runat="server" Text="Mật khẩu"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="txtPass" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="txtEmail"  runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lbTenHeThongMuaChung" runat="server" 
                    Text="Tên hệ thống mua chung"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="txtTenHeThongMuaChung" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lbWebsite" runat="server" 
                    Text="Website"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="txtLink"  runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:Button ID="btYeuCau" runat="server" onclick="btYeuCau_Click" 
                    Text="Yêu cầu" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:Label ID="lbthongbao" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</div>