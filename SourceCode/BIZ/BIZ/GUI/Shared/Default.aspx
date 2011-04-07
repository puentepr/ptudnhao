<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BIZ.GUI.Shared.Default" %>
<%@ Register src="../UserControls/Catalogs.ascx" tagname="Catalogs" tagprefix="uc1" %>
<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc2" %>
<%@ Register src="../UserControls/Cart.ascx" tagname="Cart" tagprefix="uc3" %>
<%@ Register src="../UserControls/NewProduce.ascx" tagname="NewProduce" tagprefix="uc4" %>
<%@ Register src="../UserControls/AdvertisementLeft.ascx" tagname="AdvertisementLeft" tagprefix="uc5" %>
<%@ Register src="../UserControls/TenNewProduce.ascx" tagname="TenNewProduce" tagprefix="uc6" %>
<%@ Register src="../UserControls/NewModifyProduce.ascx" tagname="NewModifyProduce" tagprefix="uc7" %>
<%@ Register src="../UserControls/Payment.ascx" tagname="Payment" tagprefix="uc8" %>
<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
Trang chủ
</asp:Content>
<asp:Content ID="include" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <!-- begin first-secondary -->
    <div class="first-secondary">
        <!-- begin catalog-box -->
         
         <uc1:Catalogs ID="Catalogs1" runat="server" />
        <!-- end catalog-box -->
        <uc4:NewProduce ID="NewProduce1" runat="server" />
        <!-- begin advleft-box -->
        
        <uc5:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        <!-- end advleft-box -->
        
    </div>
    <!-- end first-secondary -->
    
    <!-- begin primary -->
    <div class="primary">
        <uc6:TenNewProduce ID="TenNewProduce1" runat="server" />
        <uc7:NewModifyProduce ID="NewModifyProduce1" runat="server" />
    </div>
    <!-- end primary -->
    
    <!-- begin second-secondary -->
    <div class="second-secondary">
        <uc2:Login ID="Login1" runat="server" />
        <uc3:Cart ID="Cart1" runat="server" />
        <uc8:Payment ID="Payment1" runat="server" />
    </div>
    <!-- begin second-secondary -->
</asp:Content>
