<%@ Page Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="XemThongTinTaiKhoan.aspx.cs" Inherits="BIZ.GUI.XemThongTinTaiKhoan" Title="Untitled Page" %>

<%@ Register src="../UserControls/Catalogs.ascx" tagname="Catalogs" tagprefix="uc1" %>
<%@ Register src="../UserControls/Cart.ascx" tagname="Cart" tagprefix="uc3" %>
<%@ Register src="../UserControls/NewProduce.ascx" tagname="NewProduce" tagprefix="uc4" %>
<%@ Register src="../UserControls/AdvertisementLeft.ascx" tagname="AdvertisementLeft" tagprefix="uc5" %>
<%@ Register src="../UserControls/Payment.ascx" tagname="Payment" tagprefix="uc8" %>
<%@ Register src="../UserControls/ConsumerRegister.ascx" tagname="ConsumerRegister" tagprefix="uc2" %>
<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc6" %>

<%@ Register src="../UserControls/XemThongTinTaiKhoan.ascx" tagname="XemThongTinTaiKhoan" tagprefix="uc7" %>

<%@ Register src="../UserControls/CatalogConsumer.ascx" tagname="CatalogConsumer" tagprefix="uc9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<!-- menu phải -->
    <div class="first-secondary">
        <!-- begin catalog-box -->
         
         <uc1:Catalogs ID="Catalogs1" runat="server" />
        <!-- end catalog-box -->
        <uc9:CatalogConsumer ID="CatalogConsumer1" runat="server" />
        <uc4:NewProduce ID="NewProduce1" runat="server" />
        <!-- begin advleft-box -->
        
        <uc5:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        <!-- end advleft-box -->
        
    </div>
<!-- end menu phai -->

<!-- begin primary -->
    <div class="primary">
 
        

        <uc7:XemThongTinTaiKhoan ID="XemThongTinTaiKhoan1" runat="server" />
 
        

    </div>
<!-- end primary -->  

<!-- menu trai -->
    <div class="second-secondary">
        
        <uc6:Login ID="Login1" runat="server" />
        
        <uc3:Cart ID="Cart1" runat="server" />
        <uc8:Payment ID="Payment1" runat="server" />
    </div>
<!-- end menu trai -->  
</asp:Content>
