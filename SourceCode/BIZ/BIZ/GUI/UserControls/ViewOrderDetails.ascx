<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewOrderDetails.ascx.cs" Inherits="BIZ.GUI.UserControls.ViewOrderDetails" %>
<div class="middle-box">
    
    <div class="middle-top-box">
        <div class="left">
        </div>
        
        <div align="center" class="center">
            <img src="#"  />
            <label>Thông Tin Chi Tiết Đơn Hàng</label>
        </div>
        
        <div class="right">
        </div>
    </div>
    
    <div class="middle-content-box" id="oddInfo" runat="server">
              
              <asp:Repeater runat="server" ID="rpDH">
                <ItemTemplate>
                    <table align="center" class="middle-content-box" style="color:Blue;">
                        <tr>
                            <th>Đơn Hàng: </th>
                            <td><%#Eval("MaDH") %></td>
                        </tr>
                        <tr>
                            <th>Ngày Đặt: </th>
                            <td><%#Eval("NgayDat") %></td>
                        </tr>
                        <tr>
                            <th>Tổng Tiền: </th>
                            <td><%#Eval("TongTien") %> <%#Eval("DVTienTe") %></td>
                        </tr>
                        <tr>
                            <th>Tình Trạng: </th>
                            <td><%#Eval("TinhTrangDH") %></td>
                        </tr>
                        <tr>
                            <th>Link Vận Chuyển: </th>
                            <td><a href='<%#Eval("URL") %>'><%#Eval("URL") %></a></td>
                        </tr>
                        <tr>
                            <th>Khách Hàng: </th>
                            <td><%#Eval("TenNDaiDien") %></td>
                        </tr>
                        <tr>
                            <th>WebSite Doanh Nghiệp: </th>
                            <td><a href='<%#Eval("Website") %>'><%#Eval("Website")%></a></td>
                        </tr>
                    </table>
                </ItemTemplate>
              </asp:Repeater>
                                   
            <asp:GridView ID="gvOrderDetail" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="Azure" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" ForeColor="Blue" GridLines="Horizontal" HorizontalAlign="Center">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                
                <asp:TemplateField HeaderText = "Thông Tin Sản Phẩm">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                            <%#Eval("MaSanPham") %>
                             (Xem Chi Tiết)
                        </asp:HyperLink>
                    </ItemTemplate>
                    </asp:TemplateField>
                <asp:BoundField DataField="soLuong" HeaderText="Số Lượng" />
                <asp:BoundField DataField="donViTinh" HeaderText="Đơn Vị Tính" />  
                <asp:BoundField DataField="donGia" HeaderText="Đơn Giá" />
                
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