﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="ServiceTransfer.aspx.cs" Inherits="BIZ.GUI.Manager.ServiceTransfer" %>
<%@ Register src="../UserControls/AddProduct.ascx" TagName="AddProduct" TagPrefix="ucAddPro" %>
<%@ Register Src="../UserControls/Cart.ascx" TagName="Cart" TagPrefix="ucCart" %>
<%@ Register Src="../UserControls/Catalogs.ascx" TagName="Catalogs" TagPrefix="ucCtlogs" %>
<%@ Register Src="../UserControls/Payment.ascx" TagName="Payment" TagPrefix="ucPay" %>
<%@ Register Src="../UserControls/NewProduce.ascx" TagName="NewProduce" TagPrefix="ucNPro" %>
<%@ Register Src="../UserControls/AdvertisementLeft.ascx" TagName="AdvertisementLeft" TagPrefix="ucAdsLeft" %>

<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc1" %>

<%@ Register src="../UserControls/AddServiceTrans.ascx" tagname="AddServiceTrans" tagprefix="uc3" %>

<%@ Register src="../UserControls/CatalogAdmin.ascx" tagname="CatalogAdmin" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Quản lý webservice vận chuyển</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="first-secondary">

        <ucctlogs:catalogs ID="Catalogs1" runat="server" />
        
        <uc2:CatalogAdmin ID="CatalogAdmin1" runat="server" />
        
        <ucnpro:newproduce ID="NewProduce1" runat ="server" />
        
        <ucadsleft:advertisementleft ID="AdvertisementLeft1" runat="server" />
        
    </div>
    <div class="primary">
       
        <uc3:AddServiceTrans ID="AddServiceTrans1" runat="server" />
       
    </div>
    <div class="second-secondary">
        
        <uc1:login ID="Login1" runat="server" />
        
        <uccart:cart ID="Cart1" runat="server" />
        
        <ucpay:payment ID="Payment1" runat="server" />
        
    </div>
</asp:Content>
