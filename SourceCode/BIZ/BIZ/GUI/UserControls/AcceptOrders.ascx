<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AcceptOrders.ascx.cs" Inherits="BIZ.GUI.UserControls.AcceptOrders" %>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
<ContentTemplate>
<div align="center">

    <h3 id="cph3" runat="server">Danh sách Coupon hết hạn chưa xử lý</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="MaCoupon" HeaderText="Mã Coupon" />
                <asp:BoundField DataField="ThoiGianKT" HeaderText="Thời gian kết thúc" />
                <asp:BoundField DataField="SoLuongCouponMin" HeaderText="SLCoupon cần thiết" />
                <asp:TemplateField HeaderText="Xem và xử lý">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("MaCoupon") %>' onclick="LinkButton1_Click" 
                            Text='<%# Eval("Title") %>' CommandName='<%# Eval("SoLuongCouponMin") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    <asp:HiddenField ID="hdfSLCP" runat="server" />
    <asp:HiddenField ID="hdfCouponId" runat="server" />
       
</div>
<hr />

<div align="center" id="divDetail" runat="server" visible="false">
    <h3 id="h3" runat="server"></h3>
    <h4 id="h41" runat="server"></h4>
    <h4 id="h42" runat="server" style="color:Red"></h4>
    <asp:GridView ID="grDetail" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="TenDN" HeaderText="Mua chung" />
            <asp:BoundField DataField="MaDonHangCoupon" HeaderText="Mã đơn hàng" />
            <asp:BoundField DataField="NgayDat" HeaderText="Ngày đặt" />
            <asp:BoundField DataField="SoLuongCoupon" HeaderText="Số lượng Coupon" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:DropDownList ID="drPrice" runat="server" AutoPostBack="True" 
        onselectedindexchanged="drPrice_SelectedIndexChanged">
        <asp:ListItem Selected="True" Value="0">Hãy chọn giá bạn muốn bán Coupon</asp:ListItem>
        <asp:ListItem Value="1">Giá gốc</asp:ListItem>
        <asp:ListItem Value="2">Giá giảm</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="btnSale" CssClass="button" runat="server" Text="Đồng ý bán" Visible="false" 
        onclick="btnSale_Click" /><br />
        <asp:Label ID="lbresult" runat="server" Visible="false"></asp:Label>
</div>

</ContentTemplate>
</asp:UpdatePanel>