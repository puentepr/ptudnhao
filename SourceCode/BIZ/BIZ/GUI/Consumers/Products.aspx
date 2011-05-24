<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BIZ.GUI.Consumers.Products" %>
<%@ Register src="../UserControls/Catalogs.ascx" tagname="Catalogs" tagprefix="uc1" %>
<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc2" %>
<%@ Register src="../UserControls/Cart.ascx" tagname="Cart" tagprefix="uc3" %>
<%@ Register src="../UserControls/NewProduce.ascx" tagname="NewProduce" tagprefix="uc4" %>
<%@ Register src="../UserControls/AdvertisementLeft.ascx" tagname="AdvertisementLeft" tagprefix="uc5" %>
<%@ Register src="../UserControls/TenNewProduce.ascx" tagname="TenNewProduce" tagprefix="uc6" %>
<%@ Register src="../UserControls/NewModifyProduce.ascx" tagname="NewModifyProduce" tagprefix="uc7" %>
<%@ Register src="../UserControls/Payment.ascx" tagname="Payment" tagprefix="uc8" %>
<%@ Register src="../UserControls/CatalogManager.ascx" tagname="CatalogManager" tagprefix="uc9" %>
<%@ Register src="../UserControls/CatalogAdmin.ascx" tagname="CatalogAdmin" tagprefix="uc10" %>
<%@ Register src="../UserControls/CatalogConsumer.ascx" tagname="CatalogConsumer" tagprefix="uc11" %>

<%@ Register src="../UserControls/Products.ascx" tagname="Products" tagprefix="uc12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Sản phẩm
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- begin first-secondary -->
    <div class="first-secondary">
        <!-- begin catalog-box -->
         
         <uc1:Catalogs ID="Catalogs1" runat="server" />
         
        <!-- end catalog-box -->
        <uc9:CatalogManager ID="CatalogManager1" runat="server" />
        <uc10:CatalogAdmin ID="CatalogAdmin1" runat="server" />
        
        
        
        <uc11:CatalogConsumer ID="CatalogConsumer1" runat="server" />
        
        
        
        <uc4:NewProduce ID="NewProduce1" runat="server" />
        <!-- begin advleft-box -->
        
        
        <!-- end advleft-box -->
        
    </div>
    <!-- end first-secondary -->
    
    <!-- begin primary -->
    <div class="primary">
    
        <uc12:Products ID="Products1" runat="server" />
    
        <uc6:TenNewProduce ID="TenNewProduce1" runat="server" />
        
    </div>
    <!-- end primary -->
    
    <!-- begin second-secondary -->
    <div class="second-secondary">
        <uc2:Login ID="Login1" runat="server" />
        <uc3:Cart ID="Cart1" runat="server" />
        <uc5:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        <uc8:Payment ID="Payment1" runat="server" />
    </div>
    <!-- begin second-secondary -->
</asp:Content>
