<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cart.ascx.cs" Inherits="BIZ.GUI.UserControls.Cart" %>
<div class="cart box-right" id="cartid" runat="server">
    <div class="top-box">
        <img src="../../App_Themes/Blue/cart.gif" />
        <label>GIỎ HÀNG</label>
    </div>
    <div class="content-box" align="center" style="text-align:center">
        <asp:Label ID="lbSoLuong" runat="server" Visible="false"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px" 
            CellPadding="0" ForeColor="Black" GridLines="Horizontal" 
            ShowHeader="False" DataKeyNames="MaSanPham" 
            onrowdeleting="GridView1_RowDeleting">
            <RowStyle BorderStyle="None" BorderWidth="0px" />
            <EmptyDataRowStyle BorderStyle="None" BorderWidth="0px" />
            <Columns>
                <asp:CommandField ButtonType="Image" 
                    DeleteImageUrl="~/Content/images/list_remove_btn.gif" ShowDeleteButton="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                        x <asp:LinkButton ID="LinkButton1" runat="server" 
                            Text='<%# Eval("TenSanPham") %>' 
                            CommandArgument='<%# Eval("MaSanPham") %>' Font-Underline="false" onclick="LinkButton1_Click" 
                            ToolTip="Xem chi tiết"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <div id="divcart" runat="server">
            <label>Tổng tiền :</label>
            <asp:Label ID="lbsumMoney" runat="server"></asp:Label><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/GUI/Consumers/ViewDetailCart.aspx">Xem giỏ hàng</asp:HyperLink> | 
            <asp:LinkButton ID="lbtPayment" runat="server" onclick="lbtPayment_Click">Thanh toán</asp:LinkButton>
        </div>
    </div>
    <div class="bottom-box">
    </div>
</div>