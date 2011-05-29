<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdvanceSearch.ascx.cs" Inherits="BIZ.GUI.UserControls.AdvanceSearch" %>
<div class="middle-box">
    <div class="middle-top-box">
        <div class="left">
        </div>
        <div class="center">
            <img src=""  />
            <label >TÌM KIẾM NÂNG CAO</label>
        </div>
        <div class="right">
        </div>
        
    </div>
    
    <!-- Đổ dữ liệu vào đây , dùng innerHTML cho thẻ div này thì phải -->
    <div class="middle-content-box" id="divNewProduce" runat="server" align="center">
        <div>
            
            <table>
                <tr>
                    <td colspan="2" align="center">
                        <h3>Tiêu chí tìm kiếm</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Tên sản phẩm</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSP" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Loại sản phẩm</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataTextField="TenLoaiSanPham" DataValueField="MaLoaiSanPham">
                        </asp:DropDownList>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Chất lượng</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCL" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Giá khoảng từ :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> VNĐ  
                        Đến <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> VNĐ
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button2" CssClass="button" runat="server" Text="Tìm" onclick="Button2_Click" />
                        
                    </td>
                </tr>
            </table>
        </div>
        
        <br />
        <hr />
        <h3 id="resultSearch" runat="server" ></h3>
         <asp:DataList ID="DataList1" runat="server" 
            RepeatDirection="Horizontal" RepeatColumns="4" 
            >
          <ItemTemplate>
            <table class="tbproduct">
                <tr>
                    <td class='produce'>
                        
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/GUI/Consumers/ViewProduct.aspx?masp="+ Eval("MaSanPham") %>'>
                            <asp:Image Width="80px" Height="80px" ID="Image1" runat="server" ImageUrl='<%#Eval("HinhAnh") %>' />
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
                   
                      
                    </td>
                </tr>
              </table>
          </ItemTemplate>
    </asp:DataList>
 
    </div>
    
    <div class="middle-bottom-box">
        
    </div>
</div>
      