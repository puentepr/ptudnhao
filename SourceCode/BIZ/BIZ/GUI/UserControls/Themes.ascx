<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Themes.ascx.cs" Inherits="BIZ.GUI.UserControls.Themes" %>
<asp:ObjectDataSource ID="themeDS" SelectMethod="GetThemes" TypeName="BIZ.ThemeManager" runat="server">
</asp:ObjectDataSource>
<asp:DropDownList ID="drThemes" CssClass="themes" DataValueField="Name"
 OnDataBound="DrThemesDatabound" OnSelectedIndexChanged="drThemesSelectedIndexChange" DataSourceID="themeDS" runat="server">
</asp:DropDownList>