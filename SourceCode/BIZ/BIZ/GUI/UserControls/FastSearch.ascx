<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FastSearch.ascx.cs" Inherits="BIZ.GUI.UserControls.FastSearch" %>
<div class="search">
    <label>Từ khóa</label>
    <asp:TextBox ID="txtSearch" CssClass="textbox" runat="server" 
        ontextchanged="txtSearch_TextChanged"></asp:TextBox>
    <asp:Button ID="btnSearch" CssClass="button" runat="server" Text="Tìm" 
        onclick="btnSearch_Click" />
</div>