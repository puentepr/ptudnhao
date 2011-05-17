<%@ Page Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="XemDanhSachTaiKhoan.aspx.cs" Inherits="BIZ.GUI.Admin.XemDanhSachTaiKhoan" Title="Untitled Page" %>

<%@ Register src="../UserControls/AddProduct.ascx" TagName="AddProduct" TagPrefix="ucAddPro" %>
<%@ Register Src="../UserControls/Cart.ascx" TagName="Cart" TagPrefix="ucCart" %>
<%@ Register Src="../UserControls/Catalogs.ascx" TagName="Catalogs" TagPrefix="ucCtlogs" %>
<%@ Register Src="../UserControls/Payment.ascx" TagName="Payment" TagPrefix="ucPay" %>
<%@ Register Src="../UserControls/NewProduce.ascx" TagName="NewProduce" TagPrefix="ucNPro" %>
<%@ Register Src="../UserControls/AdvertisementLeft.ascx" TagName="AdvertisementLeft" TagPrefix="ucAdsLeft" %>

<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc1" %>

<%@ Register src="../UserControls/AddServiceTrans.ascx" tagname="AddServiceTrans" tagprefix="uc3" %>

<%@ Register src="../UserControls/CatalogAdmin.ascx" tagname="CatalogAdmin" tagprefix="uc2" %>

<%@ Register src="../UserControls/XemDanhSachTaiKhoan.ascx" tagname="XemDanhSachTaiKhoan" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Xem danh sách tài khoản</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%-- menu trái--%>
     <div class="first-secondary">

        <ucctlogs:catalogs ID="Catalogs1" runat="server" />
        
        <uc2:CatalogAdmin ID="CatalogAdmin1" runat="server" />
        
        <ucnpro:newproduce ID="NewProduce1" runat ="server" />
        
        <ucadsleft:advertisementleft ID="AdvertisementLeft1" runat="server" />
        
    </div>
    
    <div class="primary">
                   
        <uc4:XemDanhSachTaiKhoan ID="XemDanhSachTaiKhoan1" runat="server" />
                   
    </div>
    <%--menu phải--%>
    <div class="second-secondary">
        
        <uc1:login ID="Login1" runat="server" />
        
        <uccart:cart ID="Cart1" runat="server" />
        
        <ucpay:payment ID="Payment1" runat="server" />
        
    </div>

</asp:Content>
