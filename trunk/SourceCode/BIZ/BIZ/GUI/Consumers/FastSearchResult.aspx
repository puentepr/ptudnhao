<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Shared/MasterPage.Master" AutoEventWireup="true" CodeBehind="FastSearchResult.aspx.cs" Inherits="BIZ.GUI.Consumers.FastSearchResult" %>
<%@ Register src="../UserControls/Catalogs.ascx" tagname="Catalogs" tagprefix="uc1" %>
<%@ Register src="../UserControls/Cart.ascx" tagname="Cart" tagprefix="uc3" %>
<%@ Register src="../UserControls/NewProduce.ascx" tagname="NewProduce" tagprefix="uc4" %>
<%@ Register src="../UserControls/AdvertisementLeft.ascx" tagname="AdvertisementLeft" tagprefix="uc5" %>
<%@ Register src="../UserControls/Payment.ascx" tagname="Payment" tagprefix="uc8" %>
<%@ Register src="../UserControls/ConsumerRegister.ascx" tagname="ConsumerRegister" tagprefix="uc2" %>
<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc6" %>
<%@ Register src="../UserControls/ActiveAcount.ascx" tagname="ActiveAcount" tagprefix="uc7" %>
<%@ Register src="../UserControls/AdvanceSearch.ascx" tagname="AdvanceSearch" tagprefix="uc9" %>
<%@ Register src="../UserControls/CatalogManager.ascx" tagname="CatalogManager" tagprefix="uc10" %>
<%@ Register src="../UserControls/CatalogAdmin.ascx" tagname="CatalogAdmin" tagprefix="uc11" %>


<%@ Register src="../UserControls/CatalogConsumer.ascx" tagname="CatalogConsumer" tagprefix="uc12" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Tìm Kiếm Cơ Bản
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="include" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="first-secondary">
         
         <uc1:Catalogs ID="Catalogs1" runat="server" />
        
        <uc11:CatalogAdmin ID="CatalogAdmin1" runat="server" />
        
        <uc10:CatalogManager ID="CatalogManager1" runat="server" />
        
         <uc12:CatalogConsumer ID="CatalogConsumer1" runat="server" />
        
        <uc4:NewProduce ID="NewProduce1" runat="server" />
        
        <uc5:AdvertisementLeft ID="AdvertisementLeft1" runat="server" />
        
    </div>
    
    <div class="primary">
    
        <div class="middle-box">
            <div class="middle-top-box">
                <div class="left">
                </div>
                <div class="center">
                    <img src=""  />
                    <label >Kết Quả Tìm Kiếm Nhanh</label>
                </div>
                <div class="right">
                </div>
            </div>
            <br />
            <hr />
            <h3 id="resultSearch" runat="server" ></h3>
            <asp:DataList ID="dlResult" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" >
                <ItemTemplate>
                    <table class="tbproduct">
                    <tr>
                        <td class='produce'>
                            
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                                <asp:Image Width="80px" Height="80px" ID="Image1" runat="server" ImageUrl='<%#Eval("HinhAnh") %>' />
                                <br />                            
                            </asp:HyperLink>
                             
                            
                            <asp:Label ID="lbTen" CssClass="lbname" runat="server" 
                                 Text='<%# Eval("TenSanPham") %>'></asp:Label>
                           
                            <br />
                            <label class="lbname">Số lượng Còn: </label>
                            <asp:Label ID="lbSoLuong" runat="server" Text='<%# Eval("SoLuongConLai") %>'></asp:Label> 
                            <asp:Label ID="Label1" CssClass="label" runat="server" 
                                 Text='<%# Eval("DonViTinh") %>'></asp:Label>
                            <br />
                            <label class="lbname">Giá: </label>
                            <asp:Label ID="lbGia" CssClass="label" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                             <label>VND / </label><asp:Label ID="lbDvTinh" CssClass="label" runat="server" 
                                 Text='<%# Eval("DonViTinh") %>'></asp:Label>
                            
                            
                             <br />
                             <!--
                            <label class="lbname">Mô Tả: </label>
                            <asp:Label ID="lbMoTa" CssClass="lable" runat="server" 
                                Text='<%# Eval("MoTaSanPham") %>'></asp:Label>
                                <br /> -->
                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                            <img src='../../Content/images/xemchitiet_but.gif' />
                          </asp:HyperLink>
                        <br />
                       
                          
                        </td>
                    </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
 
           </div>
    
            <div class="middle-bottom-box">
            </div>
        
    </div>

    <div class="second-secondary">
        
        <uc6:Login ID="Login1" runat="server" />
        
        <uc3:Cart ID="Cart1" runat="server" />
        
        <uc8:Payment ID="Payment1" runat="server" />
        
    </div>
</asp:Content>
