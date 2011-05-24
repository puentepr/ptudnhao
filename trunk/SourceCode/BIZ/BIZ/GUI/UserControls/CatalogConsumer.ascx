<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CatalogConsumer.ascx.cs" Inherits="BIZ.GUI.UserControls.CatalogConsumer" %>
<div class="catalogs box" id="consumer" runat="server">
    <div class="top-box">
        <img src="../../App_Themes/Blue/information.png" />
        <label>KHÁCH HÀNG</label>
    </div>
    <div class="content-box">
        <a class="parent" href="#">
            <img src="../../App_Themes/Blue/bestsellers.png" />Thông tin cá nhân
        </a>
        <ul>
            <li>
                <a href="../Consumers/XemThongTinTaiKhoan.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Thông tin tài khoản
                </a>
            </li>
           
            
        </ul>
        <a class="parent" href="#">
            <img src="../../App_Themes/Blue/bestsellers.png" />Quản lý đơn hàng
        </a>
        <ul>
            <li>
                <a href="../Consumers/QuanLyDonHang.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Những đơn hàng đã mua
                </a>
            </li>
           
           
        </ul>
        
    </div>
    <div class="bottom-box">
    </div>
</div>