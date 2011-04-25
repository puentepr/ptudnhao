﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CreateCoupon.ascx.cs" Inherits="BIZ.GUI.UserControls.CreateCoupon" %>
<div class="createObject" align="center">
    <h3>THÔNG TIN COUPON</h3>
    <br/>
    <table>
        <tr>
            <th><lable>Mã Coupon: </lable></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtMaCP" runat="server"></asp:TextBox>
                <asp:Label ID="lbCodeCouponReportInfo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <th><label>Sản Phẩm: </label></th>
            <td>
                <asp:DropDownList CssClass="txtBox" ID="ddlTenSP" runat="server" 
                    DataTextField ="TenSanPham" DataValueField = "MaSanPham" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <th><label>Giá Gốc: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtGiaGoc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Giá Sau Khi Giảm: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtGiaSauKhiGiam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Thời Gian Áp Dụng: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtThoiGianApDung" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Số Lượng Sản Phẩm "Min" Thỏa Coupon: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtSLSPmin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Số Lượng Coupon Cần Thiết: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtSLCPMinGiamGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Điều Kiện Sử Dụng Coupon: </label></th>
            <td>
                <textarea class="createObject" id="txtRreaDKSU" runat="server" cols="34" rows="5"></textarea>
            </td>
        </tr>
        <tr>
            <th><label>Đơn Vị Tiền Tệ: </label></th>
            <td>
                <asp:DropDownList CssClass="txtBox" ID="ddlDVTienTe" runat="server">
                    <asp:ListItem>VND</asp:ListItem>
                    <asp:ListItem>USD</asp:ListItem>
                    <asp:ListItem>EUR</asp:ListItem>
                    <asp:ListItem>GBP</asp:ListItem>
                    <asp:ListItem>JPY</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <th><label>Tình Trạng Coupon: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtTinhTrangCP" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr align="center">
            <td>
                <asp:Button ID="bttDangSP" runat="server" Text="Tạo Coupon" 
                    onclick="bttDangSP_Click" />
            </td>
            <td>
                <asp:Button ID="bttHuyBo" runat="server" Text="Hủy Bỏ" 
                    onclick="bttHuyBo_Click" />
            </td>
        </tr>
    </table>
</div>