<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FastSearch.ascx.cs" Inherits="BIZ.GUI.UserControls.FastSearch" %>
<div class="search">
    <label>Từ khóa</label>
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Tìm" />
</div>