<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.ascx.cs" Inherits="BIZ.GUI.UserControls.AddProduct" %>

<div align="center" class="addproduct">
    <h3>THÔNG TIN SẢN PHẨM</h3>
    <br/>
    <table>
        <tr>
            <th><label>Mã Sản Phẩm: </label></th>
            <td>
                <input id="txtMaSP" type="text" runat="server" />
                <label id="lbCodeproductReportInfo" runat="server"></label>
            </td>
        </tr>
    </table>
</div>