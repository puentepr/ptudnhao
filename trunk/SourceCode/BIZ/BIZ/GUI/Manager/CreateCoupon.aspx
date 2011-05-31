<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateCoupon.aspx.cs" Inherits="BIZ.GUI.Manager.CreateCoupon" %>
<%@ Register Src="../UserControls/Cart.ascx" TagName="Cart" TagPrefix="ucCart" %>
<%@ Register Src="../UserControls/Catalogs.ascx" TagName="Catalogs" TagPrefix="ucCtlogs" %>
<%@ Register Src="../UserControls/Payment.ascx" TagName="Payment" TagPrefix="ucPay" %>
<%@ Register Src="../UserControls/NewProduce.ascx" TagName="NewProduce" TagPrefix="ucNPro" %>
<%@ Register Src="../UserControls/AdvertisementLeft.ascx" TagName="AdvertisementLeft" TagPrefix="ucAdsLeft" %>
<%@ Register Src="../UserControls/CreateCoupon.ascx" TagName="CreateCoupon" TagPrefix="ucCCoupon" %>

<%@ Register src="../UserControls/CatalogManager.ascx" tagname="CatalogManager" tagprefix="uc1" %>

<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Tạo Coupon
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="first-secondary">
        
        
        <uc1:CatalogManager ID="CatalogManager1" runat="server" />
        
        <ucCtlogs:Catalogs ID="Catalogs1" runat="server" />
    </div>
    <div class="primary">
        <ucCCoupon:CreateCoupon ID="CreateCoupon1" runat="server" />
    </div>
    <div class="second-secondary">
        
        
        <uc2:Login ID="Login1" runat="server" />
        
        
        <ucNPro:NewProduce ID="NewProduce1" runat ="server" />
                
        <ucAdsLeft:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        
        <ucPay:Payment ID="Payment1" runat="server" />
        
    </div>
</asp:Content>
