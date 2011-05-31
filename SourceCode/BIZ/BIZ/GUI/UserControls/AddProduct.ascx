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
                <br />
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" ValidationGroup="product" ControlToValidate="txtMaSP" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th><label>Nhóm Loại Sản Phẩm</label></th>
            <td>
                <asp:DropDownList CssClass="txtBox" ID="ddlNhomLSP" runat="server" 
                    DataTextField = "TenNhomLoaiSanPham" DataValueField = "MaNhomLoaiSanPham" 
                    AutoPostBack="True" onselectedindexchanged="ddlNhomLSP_SelectedIndexChanged">
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
                <asp:TextBox CssClass="txtBox textbox" ID="txtTenSP" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" ValidationGroup="product" ControlToValidate="txtTenSP" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th><label>Mô Tả: </label></th>
            <td>
                <textarea class="createObject" id="txtRreaMoTa" runat="server" cols="34" rows="5"></textarea>
                <br />
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" ValidationGroup="product" ControlToValidate="txtRreaMoTa" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th><label>Link Hình Ảnh: </label></th>
            <td>
                <asp:FileUpload CssClass="txtBox" ID="fuLinkHinhAnh" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="fuLinkHinhAnh"
	             ErrorMessage="Không phải file ảnh!" ValidationGroup="product" Display="Dynamic"
                 ValidationExpression = "^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <th><label>Chất Lượng: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox textbox" ID="txtChatLuong" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" ValidationGroup="product" ControlToValidate="txtChatLuong" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th><label>Giá Gốc: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox textbox" ID="txtGiaGoc" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" ValidationGroup="product" ControlToValidate="txtGiaGoc" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th><label>Số Lượng: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox textbox" ID="txtSoLuong" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator6" ValidationGroup="product" ControlToValidate="txtSoLuong" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th><label>Đơn Vị Tính: </label></th>
            <td>
                <asp:TextBox CssClass="txtBox textbox" ID="txtDVTinh" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ValidationGroup="product" ControlToValidate="txtDVTinh" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
    </table>
    <table>
        <tr align="center">
            <td>
                <asp:Button ID="bttDangSanPham" CssClass="button" ValidationGroup="product"  Text="Đăng Sản Phẩm" runat="server" 
                    onclick="bttDangSanPham_Click" />
            </td>
            <td>
                <asp:Button ID="bttHuyBo" CssClass="button"  Text="Hủy Bỏ" runat="server" 
                    onclick="bttHuyBo_Click" />
                    
            </td>
            <tr align="center">
                <td colspan="2">
                    <asp:Label ID="lbresult" runat="server" Text="" ></asp:Label>
                </td>
            </tr>
        </tr>
    </table>
</div>