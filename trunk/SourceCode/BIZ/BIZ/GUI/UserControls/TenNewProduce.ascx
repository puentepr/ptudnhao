<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TenNewProduce.ascx.cs" Inherits="BIZ.GUI.UserControls.TenNewProduce" %>
<div class="middle-box">
    <div class="middle-top-box">
        <div class="left">
        </div>
        <div class="center">
            <img src="../../Content/images/new_red.gif"  />
            <label >SẢN PHẨM MỚI ĐĂNG</label>
        </div>
        <div class="right">
        </div>
        
    </div>
    
    <!-- Đổ dữ liệu vào đây , dùng innerHTML cho thẻ div này thì phải -->
    <div class="middle-content-box" id="divNewProduce" runat="server">
      
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
          <ItemTemplate>
            <table class="tbproduct">
                <tr>
                    <td>
                        
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                            <asp:Image ID="Image1" runat="server" />
                            <img alt="new" src='../../Content/images/new.gif' />
                            <br />
                        </asp:HyperLink>
                        <asp:Label ID="lbTen" CssClass="lbname" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lbSoLuong" runat="server" Text="Label"></asp:Label> 
                        <asp:Label ID="Label1" CssClass="label" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lbGia" CssClass="label" runat="server" Text="Label"></asp:Label>
                         <label>VND / </label><asp:Label ID="lbDvTinh" CssClass="label" runat="server" Text="Label"></asp:Label>
                        <br />
                    
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                        <img src='../../Content/images/xemchitiet_but.gif' />
                        </asp:HyperLink>
                    <br />
                    <label>Số lượng muốn mua : </label>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#F0F8FF" BorderColor="ActiveBorder" Width="50px"></asp:TextBox>   
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonViTinh") %>' ></asp:Label>  
                    <br />
                       <asp:Button ID="Button1" runat="server" Text="Thêm vào giỏ hàng" 
                                        CssClass="button" onclick="Button1_Click" 
                             CommandArgument='<%# Eval("MaSanPham") %>'/>   <br />
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