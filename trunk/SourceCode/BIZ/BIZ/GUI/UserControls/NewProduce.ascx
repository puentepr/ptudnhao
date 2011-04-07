<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewProduce.ascx.cs" Inherits="BIZ.GUI.UserControls.NewProduce" %>
<div class="newpr box-right">
    <div class="top-box">
        <img id="new" src="../../Content/images/new_red.gif" />
        <label>SẢN PHẨM MỚI</label>
    </div>
    <div class="content-box" style="text-align:center">
        <marquee behavior="alternate" direction="up" scrollamount="3" scrolldelay="-1">
        	<div>
        	    <asp:LinkButton ID="new1" runat="server">
        	        <img src="../../Content/images/giay-dan-tuong.jpeg" id="slide1" runat="server"  /><br />
        	        <asp:Label ID="Name1" runat="server">Giấy gián tường</asp:Label><br />
                    <asp:Label ID="price1" runat="server">Giá : 2600000 VNĐ</asp:Label>
        	    </asp:LinkButton>
            </div>
            <div>
        	    <asp:LinkButton ID="new2" runat="server">
                    <img src="../../Content/images/giay-dan-tuong2.jpeg" runat="server" id="slide2"/><br />
                    <asp:Label ID="Name2" runat="server">Giấy gián tường</asp:Label><br />
                    <asp:Label ID="price2" runat="server">Giá : 2600000 VNĐ</asp:Label>
        	    </asp:LinkButton>
            </div>
            <div>
        	    <asp:LinkButton ID="new3" runat="server">
                    <img src="../../Content/images/binh-nuoc-nong-olympic-sieu-toc.jpeg" runat="server" id="slide3"/>
                     <asp:Label ID="Name3" runat="server">Giấy gián tường</asp:Label><br />
                    <asp:Label ID="price3" runat="server">Giá : 2600000 VNĐ</asp:Label>
        	    </asp:LinkButton>
            </div>
        </marquee>
    </div>
    <div class="bottom-box">
    </div>
</div>