<%@ Page Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="BIZ.GUI.Manager.ListProduct" Title="Untitled Page" %>

<%@ Register Src="../UserControls/Cart.ascx" TagName="Cart" TagPrefix="ucCart" %>
<%@ Register Src="../UserControls/Catalogs.ascx" TagName="Catalogs" TagPrefix="ucCtlogs" %>
<%@ Register Src="../UserControls/Payment.ascx" TagName="Payment" TagPrefix="ucPay" %>
<%@ Register Src="../UserControls/NewProduce.ascx" TagName="NewProduce" TagPrefix="ucNPro" %>
<%@ Register Src="../UserControls/AdvertisementLeft.ascx" TagName="AdvertisementLeft" TagPrefix="ucAdsLeft" %>
<%@ Register Src="../UserControls/CreateCoupon.ascx" TagName="CreateCoupon" TagPrefix="ucCCoupon" %>

<%@ Register src="../UserControls/CatalogManager.ascx" tagname="CatalogManager" tagprefix="uc1" %>
<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc3" %>

<%@ Register src="../UserControls/ListProduct.ascx" tagname="ListProduct" tagprefix="uc2" %>

<%@ Register src="../UserControls/XemCapNhatSanPham.ascx" tagname="XemCapNhatSanPham" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Danh sách sản phẩm</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="first-secondary">        
        <ucCtlogs:Catalogs ID="Catalogs1" runat="server" />
        <uc1:CatalogManager ID="CatalogManager1" runat="server" />               
    </div>
    <div class="primary">
        <uc2:ListProduct ID="ListProduct1" runat="server" />        
    </div>
    <div class="second-secondary">               
        <uc3:Login ID="Login1" runat="server" />        
        <ucNPro:NewProduce ID="NewProduce1" runat ="server" />              
        <ucAdsLeft:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        <ucPay:Payment ID="Payment1" runat="server" />
    </div>

</asp:Content>
