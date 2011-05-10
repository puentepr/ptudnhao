<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewProduct.ascx.cs" Inherits="BIZ.GUI.UserControls.ViewProduct" %>
<div align="center">
   <h3>Thông tin chi tiết về sản phẩm</h3>
    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" CssClass="viewdetail"
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" GridLines="Both" DataKeyNames="MaSanPham" 
         >
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <table>
                <tbody>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                    </td>
                    <td>
                        <table>
                            <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="lbTen" CssClass="productname" runat="server" Text='<%# Eval("TenSanPham") %>'></asp:Label>  
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <label>Chất lượng :</label><asp:Label ID="lbChatLuong" runat="server" 
                                        Text='<%# Eval("ChatLuong") %>'></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <label>Giá :</label>
                                    <asp:Label ID="lbGia" runat="server" Text='<%# Eval("Gia") %>' ></asp:Label>
                                     VNĐ /<asp:Label ID="lbtext" runat="server" Text='<%# Eval("DonViTinh") %>' ></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <label>Số lượng còn lại :</label>
                                    <asp:Label ID="lbSoLuong" runat="server" Text='<%# Eval("SoLuongConLai") %>' ></asp:Label>
                                    <asp:Label ID="lbDvTinh" runat="server" Text='<%# Eval("DonViTinh") %>' ></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <label>Số người đã mua :</label>
                                    <asp:Label ID="lbNguoi" runat="server" Text='<%# Eval("SoNguoiMua") %>' ></asp:Label>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>Số lượng muốn mua : </label>
                                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#F0F8FF" BorderColor="ActiveBorder" Width="50px"></asp:TextBox>   
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("DonViTinh") %>' ></asp:Label>                            
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Thêm vào giỏ hàng" 
                                        CssClass="button" onclick="Button1_Click"/>   <br />
                                        <asp:Label ID="lbResult" runat="server" Visible="false" ForeColor="Red"></asp:Label>                               
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label>Mô tả chi tiết : </label>
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("MoTaSanPham") %>'></asp:Literal>
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
