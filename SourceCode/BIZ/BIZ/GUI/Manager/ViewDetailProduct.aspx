<%@ Page Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewDetailProduct.aspx.cs" Inherits="BIZ.GUI.Manager.ViewDetailProduct" Title="Untitled Page" %>
<%@ Register src="../UserControls/Catalogs.ascx" tagname="Catalogs" tagprefix="uc1" %>
<%@ Register src="../UserControls/Cart.ascx" tagname="Cart" tagprefix="uc3" %>
<%@ Register src="../UserControls/NewProduce.ascx" tagname="NewProduce" tagprefix="uc4" %>
<%@ Register src="../UserControls/AdvertisementLeft.ascx" tagname="AdvertisementLeft" tagprefix="uc5" %>
<%@ Register src="../UserControls/Payment.ascx" tagname="Payment" tagprefix="uc8" %>
<%@ Register src="../UserControls/ConsumerRegister.ascx" tagname="ConsumerRegister" tagprefix="uc2" %>
<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc6" %>
<%@ Register src="../UserControls/ActiveAcount.ascx" tagname="ActiveAcount" tagprefix="uc7" %>

<%@ Register src="../UserControls/CatalogManager.ascx" tagname="CatalogManager" tagprefix="uc9" %>


<%@ Register src="../UserControls/XemCapNhatSanPham.ascx" tagname="XemCapNhatSanPham" tagprefix="uc10" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Xem chi tiết sản phẩm</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="first-secondary">
        <!-- begin catalog-box -->                        
        
        <!-- end catalog-box -->
        <uc9:CatalogManager ID="CatalogManager1" runat="server" />   
         <uc1:Catalogs ID="Catalogs1" runat="server" />     
    </div>
    <!-- end first-secondary -->
    
    <!-- begin primary -->
    <div class="primary">

        <uc10:XemCapNhatSanPham ID="XemCapNhatSanPham1" runat="server" />

    </div>
    <!-- end primary -->
    
    <!-- begin second-secondary -->
    <div class="second-secondary">        
        <uc6:Login ID="Login1" runat="server" />        
        <uc4:NewProduce ID="NewProduce1" runat="server" />
        <!-- begin advleft-box -->
        
        <uc5:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        <!-- end advleft-box -->
        <uc8:Payment ID="Payment1" runat="server" />
    </div>

</asp:Content>
