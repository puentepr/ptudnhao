<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.ascx.cs" Inherits="BIZ.GUI.UserControls.AddProduct" %>

<div align="center" class="createObject">
    <h3>THÔNG TIN SẢN PHẨM</h3>
    <br/>
    <table>
        <tr>
            <th><label>Mã Sản Phẩm: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtMaSP" runat="server"></asp:TextBox>
                <label id="lbCodeproductReportInfo" runat="server"></label>
            </td>
        </tr>
        <tr>
            <th><label>Nhóm Loại Sản Phẩm</label></th>
            <td>
                <asp:DropDownList CssClass="txtBox" ID="ddlNhomLSP" runat="server" 
                    DataTextField = "TenNhomLoaiSanPham" DataValueField = "MaNhomLoaiSanPham">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <th><label>Loại Sản Phẩm</label></th>
            <td>
                <asp:DropDownList CssClass="txtBox" ID="ddlLoaiSP" runat="server" 
                    DataTextField="TenLoaiSanPham" DataValueField="MaLoaiSanPham">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <th><label>Tên Sản Phẩm: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtTenSP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Mô Tả: </label></th>
            <td>
                <textarea class="createObject" id="txtRreaMoTa" runat="server" cols="34" rows="5"></textarea>
            </td>
        </tr>
        <tr>
            <th><label>Link Hình Ảnh: </label></th>
            <td>
                <asp:FileUpload CssClass="txtBox" ID="fuLinkHinhAnh" runat="server" />
            </td>
        </tr>
        <tr>
            <th><label>Chất Lượng: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtChatLuong" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Giá Gốc: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtGiaGoc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Số Lượng: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtSoLuong" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Đơn Vị Tính: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtDVTinh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th><label>Tình Trạng: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox" ID="txtTinhTrang" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr align="center">
            <td>
                <asp:Button ID="bttDangSanPham"  Text="Đăng Sản Phẩm" runat="server" 
                    onclick="bttDangSanPham_Click" />
            </td>
            <td>
                <asp:Button ID="bttHuyBo"  Text="Hủy Bỏ" runat="server" 
                    onclick="bttHuyBo_Click" />
            </td>
        </tr>
    </table>
</div>