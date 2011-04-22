<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YeuCauSuDungWebService.ascx.cs" Inherits="BIZ.GUI.UserControls.YeuCauSuDungWebService" %>
<style type="text/css">
    .style1
    {
        width: 457px;
        height: 212px;
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
        width: 191px;
    }
    .style7
    {
        width: 18px;
        text-align: center;
    }
</style>
<div>
<h3 class="style2">Yêu cầu webservice</h3>
    <table cellpadding="0" cellspacing="0" class="style1" align="center">
        <tr>
            <td class="style6">
                <asp:Label ID="Label1" runat="server" Text="Tên hệ thống mua chung"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Text="Link đến hệ thống mua chung"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label4" runat="server" Text="Tên tài khoản"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style7">
                :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Yêu cầu" />
            </td>
        </tr>
    </table>
</div>