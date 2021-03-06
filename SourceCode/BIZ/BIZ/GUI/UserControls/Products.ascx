﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Products.ascx.cs" Inherits="BIZ.GUI.UserControls.Products" %>
<div class="middle-box">
    <div align="center" class="middle-top-box">
        <div class="left">
        </div>
        <div class="center">
           
            <label id="lb" runat="server" ></label>
        </div>
        <div class="right">
        </div>
        
    </div>
    
    <!-- Đổ dữ liệu vào đây , dùng innerHTML cho thẻ div này thì phải -->
    <div align="center" class="middle-content-box" id="divNewProduce" runat="server">
        <h4 id="idh4"  runat="server"></h4>
         <asp:DataList ID="DataList1" runat="server" 
            RepeatDirection="Horizontal" RepeatColumns="3"  
            >
          <ItemTemplate>
            <table class="tbproduct">
                <tr>
                    <td class='produce'>
                        
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                            <asp:Image CssClass="imgproduct" ID="Image1" runat="server" ImageUrl='<%#Eval("HinhAnh") %>' />
                           
                            <br />
                        </asp:HyperLink>
                        <asp:Label ID="lbTen" CssClass="lbname" runat="server" 
                             Text='<%# Eval("TenSanPham") %>'></asp:Label>
                        <br />
                        <label class="lbname">Số lượng:</label>
                        <asp:Label ID="lbSoLuong" runat="server" Text='<%# Eval("SoLuongConLai") %>'></asp:Label> 
                        <asp:Label ID="Label1" CssClass="label" runat="server" 
                             Text='<%# Eval("DonViTinh") %>'></asp:Label>
                        <br />
                        <label class="lbname">Giá:</label>
                        <asp:Label ID="lbGia" CssClass="label" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                         <label>VND / </label><asp:Label ID="lbDvTinh" CssClass="label" runat="server" 
                             Text='<%# Eval("DonViTinh") %>'></asp:Label>
                        <br />
                    
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                        <img src='../../Content/images/xemchitiet_but.gif' />
                        </asp:HyperLink>
                    <br />
                    <label>Mua : </label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" BackColor="#F0F8FF" BorderColor="ActiveBorder" Width="50px"></asp:TextBox>   
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonViTinh") %>' ></asp:Label>  
                    <br />
                       <asp:Button ID="Button1" runat="server" Text="Thêm vào giỏ hàng" 
                                        CssClass="button"  
                             CommandArgument='<%# Eval("MaSanPham") %>' onclick="Button1_Click" 
                             CommandName='<%#Eval("Index") %>' style="height: 26px; width: 164px"/>   <br />
                                        <asp:Label ID="lbResult" runat="server" Visible="false" ForeColor="Red"></asp:Label>                                                      
                    </td>
                </tr>
              </table>
          </ItemTemplate>
    </asp:DataList>
    </div>
    <div class="middle-bottom-box">
        
    </div>
</div>