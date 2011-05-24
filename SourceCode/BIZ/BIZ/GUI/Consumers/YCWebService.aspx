<%@ Page Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="YCWebService.aspx.cs" Inherits="BIZ.GUI.Consumers.YCWebService" Title="Untitled Page" %>

<%@ Register src="../UserControls/AddProduct.ascx" TagName="AddProduct" TagPrefix="ucAddPro" %>
<%@ Register Src="../UserControls/Cart.ascx" TagName="Cart" TagPrefix="ucCart" %>
<%@ Register Src="../UserControls/Catalogs.ascx" TagName="Catalogs" TagPrefix="ucCtlogs" %>
<%@ Register Src="../UserControls/Payment.ascx" TagName="Payment" TagPrefix="ucPay" %>
<%@ Register Src="../UserControls/NewProduce.ascx" TagName="NewProduce" TagPrefix="ucNPro" %>
<%@ Register Src="../UserControls/AdvertisementLeft.ascx" TagName="AdvertisementLeft" TagPrefix="ucAdsLeft" %>

<%@ Register src="../UserControls/YeuCauSuDungWebService.ascx" tagname="YeuCauSuDungWebService" tagprefix="uc1" %>

<%@ Register src="../UserControls/CatalogManager.ascx" tagname="CatalogManager" tagprefix="uc2" %>

<%@ Register src="../UserControls/CatalogAdmin.ascx" tagname="CatalogAdmin" tagprefix="uc3" %>

<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc4" %>

<%@ Register src="../UserControls/CatalogConsumer.ascx" tagname="CatalogConsumer" tagprefix="uc5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Đăng ký sử dụng webservice
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="first-secondary">
        
        <ucCtlogs:Catalogs ID="Catalogs1" runat="server" />
        
        <uc2:CatalogManager ID="CatalogManager1" runat="server" />
        
        <uc3:CatalogAdmin ID="CatalogAdmin1" runat="server" />
        
        <uc5:CatalogConsumer ID="CatalogConsumer1" runat="server" />
        
        <ucNPro:NewProduce ID="NewProduce1" runat ="server" />
        
        
        
    </div>
    <div class="primary">

        <uc1:YeuCauSuDungWebService ID="YeuCauSuDungWebService1" runat="server" />

    </div>
    <div class="second-secondary">
        
        <uc4:Login ID="Login1" runat="server" />
        
        <ucCart:Cart ID="Cart1" runat="server" />
        <ucAdsLeft:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        <ucPay:Payment ID="Payment1" runat="server" />
        
    </div>
</asp:Content>

