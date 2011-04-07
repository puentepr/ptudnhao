<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cart.ascx.cs" Inherits="BIZ.GUI.UserControls.Cart" %>
<div class="cart box-right">
    <div class="top-box">
        <img src="../../App_Themes/Blue/cart.gif" />
        <label>GIỎ HÀNG</label>
    </div>
    <div class="content-box" style="text-align:center">
        <asp:Label ID="lbSoLuong" runat="server" Visible="false"></asp:Label>
        <table id="tbCart" runat="server">
            <tr>
                <td>
                    <a href="#" ><img src="../../Content/images/list_remove_btn.gif" /></a>
                    <asp:Label ID="lbNumber" runat="server"></asp:Label>
                    <asp:LinkButton ID="produceId" runat="server" >fadfaf</asp:LinkButton>
                </td>
            </tr>
        </table>
        <div id="divcart" runat="server">
            <asp:Label ID="lbsumMoney" runat="server"></asp:Label><br />
            <asp:LinkButton ID="lbtViewCart" runat="server">Xem giỏ hàng</asp:LinkButton> | 
            <asp:LinkButton ID="lbtPayment" runat="server">Thanh toán</asp:LinkButton>
        </div>
    </div>
    <div class="bottom-box">
    </div>
</div>