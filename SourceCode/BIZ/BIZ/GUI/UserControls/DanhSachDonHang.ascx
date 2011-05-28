<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachDonHang.ascx.cs" Inherits="BIZ.GUI.UserControls.DanhSachDonHang" %>
<div class="middle-box">
    <div class="middle-top-box">
        <div class="left">
        </div>
        <div align="center" class="center">
            <img src="#"  />
            <label >DANH SÁCH ĐƠN HÀNG</label>
        </div>
        <div class="right">
        </div>
        
    </div>
    
    <!-- Đổ dữ liệu vào đây , dùng innerHTML cho thẻ div này thì phải -->
    <div class="middle-content-box" id="divNewProduce" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="MaDonHang" HeaderText="Mã đơn hàng" />
                <asp:BoundField HeaderText="Ngày đặt" DataField="NgayDat" 
                    DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="TongTien" HeaderText="Tổng tiền" />
                <asp:BoundField DataField="DonViTienTe" HeaderText="Đơn vị tiền tệ" />
                <asp:BoundField HeaderText="Tình trạng" DataField="TinhTrangDonHang" />
                <asp:TemplateField HeaderText="Xem vận chuyển">
                    <ItemTemplate>
                        <a href='<%#Eval("LinkVC")%>' runat="server" id="link" target="_blank"><%# Eval("TitleVC") %></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Xem chi tiết">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl='<%#"~/GUI/Consumers/XemChiTietDonHang.aspx?madh="+Eval("MaDonHang") %>' Text='<%# Eval("Title") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </div>
    <div class="middle-bottom-box">
        
    </div>
</div>