<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="BIZ.GUI.UserControls.WebUserControl1" %>
<div align="center">
    Mã Coupon : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    Ngày hết hạn : 
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
</div>