<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListProduct.ascx.cs" Inherits="BIZ.GUI.UserControls.ListProduct" %>
<div align="center">
    <h3>DANH SÁCH SẢN PHẨM TRONG HỆ THỐNG</h3>
    
    <p>
    Tình trạng:
        <asp:DropDownList ID="dropTinhtrang" runat="server" AutoPostBack="True" 
            onselectedindexchanged="dropTinhtrang_SelectedIndexChanged">
              <asp:ListItem Value="1" >Đang sử dụng</asp:ListItem>
              <asp:ListItem Value="0" >Chưa sử dụng</asp:ListItem>
        </asp:DropDownList>
    </p>
    
    <asp:GridView ID="gvXemDSSanPham" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <PagerSettings Mode="NextPrevious" NextPageText="Next" 
            PreviousPageText="Previous" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="MaSanPham" HeaderText="Mã sản phẩm" />
            <asp:BoundField DataField="TenSanPham" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
            <asp:BoundField DataField="SoLuongConLai" HeaderText="Số lượng còn lại" />
            <asp:TemplateField HeaderText="Xem chi tiết">
                <ItemTemplate>
                    <asp:HyperLink ID="hyperlinkXemChiTiet" runat="server" 
                        NavigateUrl='<%# "~/GUI/Manager/ViewDetailProduct.aspx?masp=" + Eval("MaSanPham")%>' 
                        Target="_blank">Xem chi 
                    tiết</asp:HyperLink>
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
</div>