<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="XemChiTietDonHang.aspx.cs" Inherits="BIZ.GUI.Consumers.XemChiTietDonHang" %>
<%@ Register src="../UserControls/AddProduct.ascx" TagName="AddProduct" TagPrefix="ucAddPro" %>
<%@ Register Src="../UserControls/Cart.ascx" TagName="Cart" TagPrefix="ucCart" %>
<%@ Register Src="../UserControls/Catalogs.ascx" TagName="Catalogs" TagPrefix="ucCtlogs" %>
<%@ Register Src="../UserControls/Payment.ascx" TagName="Payment" TagPrefix="ucPay" %>
<%@ Register Src="../UserControls/NewProduce.ascx" TagName="NewProduce" TagPrefix="ucNPro" %>
<%@ Register Src="../UserControls/AdvertisementLeft.ascx" TagName="AdvertisementLeft" TagPrefix="ucAdsLeft" %>
<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc1" %>
<%@ Register src="../UserControls/XemThongTinTaiKhoan.ascx" tagname="XemThongTinTaiKhoan" tagprefix="uc2" %>
<%@ Register src="../UserControls/ViewOrderDetails.ascx" TagName="ViewOrderDetails" TagPrefix="ucDetail"%>
<%@ Register src="../UserControls/CatalogConsumer.ascx" tagname="CatalogConsumer" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Xem Chi Tiết Đơn Hàng
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="first-secondary">
        
        <ucCtlogs:Catalogs ID="Catalogs1" runat="server" />
        
        <uc4:CatalogConsumer ID="CatalogConsumer1" runat="server" />
        
        <ucNPro:NewProduce ID="NewProduce1" runat ="server" />
        
        <ucAdsLeft:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        
    </div>
    <div class="primary">

        <ucDetail:ViewOrderDetails ID="ViewOrderDetails1" runat="server" />

    </div>
    <div class="second-secondary">
        
        <uc1:Login ID="Login1" runat="server" />
        
        <ucCart:Cart ID="Cart1" runat="server" />
        
        <ucPay:Payment ID="Payment1" runat="server" />
        
    </div>

</asp:Content>
