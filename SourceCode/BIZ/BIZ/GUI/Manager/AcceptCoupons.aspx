<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptCoupons.aspx.cs" Inherits="BIZ.GUI.Manager.AcceptCoupons" %>
<%@ Register src="../UserControls/AddProduct.ascx" TagName="AddProduct" TagPrefix="ucAddPro" %>
<%@ Register Src="../UserControls/Cart.ascx" TagName="Cart" TagPrefix="ucCart" %>
<%@ Register Src="../UserControls/Catalogs.ascx" TagName="Catalogs" TagPrefix="ucCtlogs" %>
<%@ Register Src="../UserControls/Payment.ascx" TagName="Payment" TagPrefix="ucPay" %>
<%@ Register Src="../UserControls/NewProduce.ascx" TagName="NewProduce" TagPrefix="ucNPro" %>
<%@ Register Src="../UserControls/AdvertisementLeft.ascx" TagName="AdvertisementLeft" TagPrefix="ucAdsLeft" %>

<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc1" %>
<%@ Register src="../UserControls/CatalogManager.ascx" tagname="CatalogManager" tagprefix="uc2" %>

<%@ Register src="../UserControls/AcceptOrders.ascx" tagname="AcceptOrders" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Quản lý coupon tới hạn
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="first-secondary">

        <ucCtlogs:Catalogs ID="Catalogs1" runat="server" />
        <uc2:CatalogManager ID="CatalogManager1" runat="server" />
        
        
    </div>
    <div class="primary">
        
        <uc3:AcceptOrders ID="AcceptOrders1" runat="server" />
        
    </div>
    <div class="second-secondary">
        
        <uc1:Login ID="Login1" runat="server" />
        
        <ucNPro:NewProduce ID="NewProduce1" runat ="server" />
        
        <ucAdsLeft:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        <ucPay:Payment ID="Payment1" runat="server" />
        
    </div>
</asp:Content>
