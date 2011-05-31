<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CatalogAdmin.ascx.cs" Inherits="BIZ.GUI.UserControls.CatalogAdmin" %>
<div class="catalogs box" id="admin" runat="server">
    <div class="top-box">
        <img src="../../App_Themes/Blue/information.png" />
        <label>Admin catalogs</label>
    </div>
    <div class="content-box">
        <a class="parent" href="#">
            <img src="../../App_Themes/Blue/bestsellers.png" />WebserVice ngân hàng
        </a>
        <ul>
            <li>
                <a href="../Admin/AddWebserviceBank.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Thêm webservice bank
                </a>
            </li>
            <li>
                <a href="../Admin/XemDanhSachWebserviceBank.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Xem, cập nhật, xóa webservice bank
                </a>
            </li>
            
        </ul>
        <a class="parent" href="#">
            <img src="../../App_Themes/Blue/bestsellers.png" />Webservice vận chuyển
        </a>
        <ul>
            <li>
                <a href="../Admin/ServiceTransfer.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Danh sách, thêm , xóa
                </a>
            </li>
            
           
        </ul>
         <a class="parent" href="#">
            <img src="../../App_Themes/Blue/bestsellers.png" />Quản lý tài khoản
        </a>
        <ul>
            <li>
                <a href ="../Admin/XemDanhSachTaiKhoan.aspx">
                    <img src="../../App_Themes/Blue/dotlist.gif" />Xem danh sách tài khoản
                </a>
            </li>
            
           
        </ul>
    </div>
    <div class="bottom-box">
    </div>
</div>