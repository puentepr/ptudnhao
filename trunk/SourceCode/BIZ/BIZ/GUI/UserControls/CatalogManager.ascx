<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CatalogManager.ascx.cs" Inherits="BIZ.GUI.UserControls.CatalogManager" %>
<div class="catalogs box" id="manager" runat="server">
    <div class="top-box">
        <img src="../../App_Themes/Blue/information.png" />
        <label>MANAGER</label>
    </div>
    <div class="content-box">
        <a class="parent" href="#">
            <img src="../../App_Themes/Blue/bestsellers.png" />WebserVice
        </a>
        <ul>
            <li>
                <a href="../Manager/XetDuyetYeuCauWS.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Xét duyệt yêu cầu
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Cập nhật yêu cầu
                </a>
            </li>
            
        </ul>
        <a class="parent" href="#">
            <img src="../../App_Themes/Blue/bestsellers.png" />Quản lý Coupon
        </a>
        <ul>
            <li>
                <a href="../Manager/AcceptCoupons.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Duyệt Coupon hết hạn
                </a>
            </li>
            <li>
                <a href="../Manager/ListCoupon.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Danh sách Coupon,xóa,cập nhật
                </a>
            </li>
            <li>
                <a href="../Manager/CreateCoupon.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Thêm Coupon
                    </a>
            </li>
           
        </ul>
         <a class="parent" href="#">
            <img src="../../App_Themes/Blue/bestsellers.png" />Quản lý sản phẩm
        </a>
        <ul>
            <li>
                <a href="#">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Danh sách sản phẩm,xóa,cập nhật
                </a>
            </li>
            <li>
                <a href="../Manager/AddProduct.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Thêm sản phẩm
                    </a>
            </li>
            <li>
                <a href ="../Manager/ListProduct.aspx">
                <img src="../../App_Themes/Blue/dotlist.gif" />Xem, cập nhật sản phẩm
                </a>
            </li>
           
        </ul>
    </div>
    <div class="bottom-box">
    </div>
</div>
