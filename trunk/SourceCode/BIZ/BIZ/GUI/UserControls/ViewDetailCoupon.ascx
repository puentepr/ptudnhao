<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewDetailCoupon.ascx.cs" Inherits="BIZ.GUI.UserControls.ViewDetailCoupon" %>
<div align="center">
    <h3 id="h3" runat="server"></h3>
    
   <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" CssClass="viewdetail"
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" GridLines="Both" DataKeyNames="MaCoupon" 
         >
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <table>
                <tbody>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("LinkHinhAnh[0]") %>' />
                    </td>
                    <td>
                        <table>
                            <tbody>
                             <tr>
                                <td>
                                    <label>Mã Coupon : </label>
                                    <asp:Label ID="lbMaCoupon" CssClass="productname" runat="server" Text='<%# Eval("MaCoupon") %>'></asp:Label>  
                                    
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <label>Tên mặt hàng : </label>
                                  
                                  <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenMatHang") %>' 
                                        NavigateUrl='<%# "~/GUI/Consumers/ViewProduct.aspx?masp="+Eval("MaMatHang") %>' 
                                        Target="_blank"></asp:HyperLink>
                                </td>
                                
                            </tr>
                            
                             <tr>
                                <td>
                                    <label>Giá gốc:</label>
                                    <asp:Label ID="lbGia" runat="server" Text='<%# Eval("GiaHangKhiChuaGiam") %>' ></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("DonViTien") %>'></asp:Label>
                                     
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>Giá giảm:</label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaHangSauKhiGiam") %>' ></asp:Label>
                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("DonViTien") %>'></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <label>Số lượng thỏa Coupon :</label>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("SoLuongThoaCoupon") %>' ></asp:Label>
                                    
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <label>Số lượng Coupon đã đặt :</label>
                                    <asp:Label ID="lbNguoi" runat="server" Text='<%# Eval("SoLuongDaDat") %>' ></asp:Label>
                                    
                                </td>
                            </tr>
                            
                            
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label>Mô tả chi tiết : </label>
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("ThongTinMoTa") %>'></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label>Điều kiện sử dụng : </label>
                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("DieuKienSuDung") %>'></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <h3 id="listh3" runat="server">Danh sách các đơn hàng đã đặt mua</h3>
                        <asp:GridView ID="grDetail" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" ForeColor="Black" GridLines="Vertical">
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:BoundField DataField="TenDN" HeaderText="Mua chung" />
                                <asp:BoundField DataField="MaDonHangCoupon" HeaderText="Mã đơn hàng" />
                                <asp:BoundField DataField="NgayDat" HeaderText="Ngày đặt" />
                                <asp:BoundField DataField="TinhTrang" HeaderText="Tinh trạng" />
                                <asp:BoundField DataField="SoLuongCoupon" HeaderText="Số lượng Coupon" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView> 
                    </td>
                </tr>
               </tbody>
            </table>
            
        </ItemTemplate>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:FormView>
    
</div>
