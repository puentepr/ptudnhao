<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FastSearchResult.ascx.cs" Inherits="BIZ.GUI.UserControls.FastSearchResult" %>
<div class="middle-box">
    <div class="middle-top-box">
        <div class="left">
        </div>
        <div class="center">
            <img src=""  />
            <label >Kết Quả Tìm Kiếm Nhanh</label>
        </div>
        <div class="right">
        </div>
    </div>
    <br />
        <hr />
        <h3 id="resultSearch" runat="server" ></h3>
         <asp:DataList ID="dlResult" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" >
          <ItemTemplate>
            <table class="tbproduct">
                <tr>
                    <td class='produce'>
                        
                        <label class="lbname">Mã Coupon Liên Quan: </label>
                        <asp:Label CssClass="lable" ID="lbMaCP" runat="server" 
                        Text='<%# Eval("MaCP") %>'></asp:Label>
                        
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                            <asp:Image Width="80px" Height="80px" ID="Image1" runat="server" ImageUrl='<%#Eval("HinhAnh") %>' />
                         <br />
                        </asp:HyperLink>
                        <asp:Label ID="lbTen" CssClass="lbname" runat="server" 
                             Text='<%# Eval("TenSanPham") %>'></asp:Label>
                        <br />
                        <label class="lbname">Mô Tả: </label>
                        <asp:Label ID="lbMoTa" CssClass="lable" runat="server" 
                            Text='<%# Eval("MoTaSanPham") %>'></asp:Label>
                        <br />
                        <label class="lbname">Số lượng Còn: </label>
                        <asp:Label ID="lbSoLuong" runat="server" Text='<%# Eval("SoLuongConLai") %>'></asp:Label> 
                        <asp:Label ID="Label1" CssClass="label" runat="server" 
                             Text='<%# Eval("DonViTinh") %>'></asp:Label>
                        <br />
                        <label class="lbname">Giá: </label>
                        <asp:Label ID="lbGia" CssClass="label" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                         <label>VND / </label><asp:Label ID="lbDvTinh" CssClass="label" runat="server" 
                             Text='<%# Eval("DonViTinh") %>'></asp:Label>
                        <br />
                        <label class="lbname">Chất Lượng: </label>
                        <asp:Label ID="lbChatLuong" CssClass="lable" runat="server" 
                            Text='<%# Eval("ChatLuong") %>'></asp:Label>
                        <br />
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                        <img src='../../Content/images/xemchitiet_but.gif' />
                        </asp:HyperLink>
                    <br />
                   
                      
                    </td>
                </tr>
              </table>
          </ItemTemplate>
    </asp:DataList>
 
    </div>
    
    <div class="middle-bottom-box">
</div>