<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="XetDuyetYeuCauWS.aspx.cs" Inherits="BIZ.GUI.Manager.XetDuyetYeuCauWS" %>
<%@ Register src="../UserControls/AddProduct.ascx" TagName="AddProduct" TagPrefix="ucAddPro" %>
<%@ Register Src="../UserControls/Cart.ascx" TagName="Cart" TagPrefix="ucCart" %>
<%@ Register Src="../UserControls/Catalogs.ascx" TagName="Catalogs" TagPrefix="ucCtlogs" %>
<%@ Register Src="../UserControls/Payment.ascx" TagName="Payment" TagPrefix="ucPay" %>
<%@ Register Src="../UserControls/NewProduce.ascx" TagName="NewProduce" TagPrefix="ucNPro" %>
<%@ Register Src="../UserControls/AdvertisementLeft.ascx" TagName="AdvertisementLeft" TagPrefix="ucAdsLeft" %>

<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc1" %>
<%@ Register src="../UserControls/CatalogManager.ascx" tagname="CatalogManager" tagprefix="uc2" %>
<%@ Register src="../UserControls/CapNhatYCWebservice.ascx" tagname="CapNhatYCWebservice" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Quản lý yêu cầu sử dụng webservice
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="first-secondary">
        
        <uc2:catalogmanager ID="CatalogManager1" runat="server" />
       
        <ucctlogs:catalogs ID="Catalogs1" runat="server" />
    </div>
    <div class="primary">
        
        <uc3:CapNhatYCWebservice ID="CapNhatYCWebservice1" runat="server" />
        
    </div>
    <div class="second-secondary">
        
        <uc1:login ID="Login1" runat="server" />
        
       
        
    </div>
</asp:Content>
