<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemCapNhatSanPham.ascx.cs" Inherits="BIZ.GUI.UserControls.XemCapNhatSanPham" %>
<h3 style="text-align: center">Thông tin chi tiết về sản phẩm</h3>   
<div >   
   
   <div style="position:absolute">
       <asp:Image ID="ImageSP" runat="server" Height="200px" />
   </div>
   
   <div style="width:275px; border-style:none; position:absolute; margin-left:200px; margin-top:20px">
        <table style ="border-style:none; border-width:thin; width:100%">
            <tr>
                <td colspan ="2" style="text-align:center; width:100%">
                    <asp:Label ID="lbResult" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan ="2" style="text-align:center; width:100%">
                    <asp:Label ID="lbTenSP" runat ="server" ForeColor="#3333FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align: right;">
                    Số người mua :
                </td>
                <td>
                    <asp:TextBox ID="txtSoNguoiMua" runat="server" Width="120px" 
                        BackColor="#F0F0F0" ForeColor="#3333FF" ReadOnly="True"></asp:TextBox>                   
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align: right;">
                   Giá bán : 
                </td>
                <td>
                    <asp:TextBox ID="txtGiaBan" runat="server" Width="120px"></asp:TextBox>                   
                    <asp:Label ID="Label1" runat="server" Text="VNĐ" Font-Size="8pt"></asp:Label>                   
                </td>
                
            </tr>
            <tr>
                <td style="width:50%; text-align: right;">
                   Đơn vị tính : 
                </td>
                <td>
                    <asp:TextBox ID="txtDonVi" runat="server" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align: right;">
                   Chất lượng : 
                </td>
                <td>
                    <asp:TextBox ID="txtChatLuong" runat="server" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align: right;">
                   Số lượng còn lại : 
                </td>
                <td>
                    <asp:Label ID="lbSoLuongConLai" runat ="server" ForeColor="#3333FF"></asp:Label>
                </td>
            </tr>
                        
        </table>
   </div>    
   
   <div style ="width:530px; border-style:none; position:absolute; margin-left:20px;margin-top:220px">
        <table style ="border-style:none; border-width:thin; width:100%; height:320px">           
            <tr>
                <td style="width:35%; text-align: right;">
                    Mã sản phẩm :
                </td>
                <td>
                    <asp:Label ID="lbMaSP" runat="server" ForeColor="#3333FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:35%; text-align: right;">
                    Loại sản phẩm : 
                </td>
                <td>
                    <asp:Label ID="lbMaLSP" runat ="server" ForeColor="#3333FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:35%; text-align: right;">
                   Số lượng : 
                </td>
                <td>
                    <asp:TextBox ID="txtSoLuong" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td style="width:35%; text-align: right;">
                    &nbsp;</td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtSoNguoiMua" ControlToValidate="txtSoLuong" 
                        ErrorMessage="Số lượng phải lớn hơn số người mua" Operator="GreaterThan"></asp:CompareValidator>
                </td>
            </tr>
            
            <tr>
                <td style="width:35%; text-align: right;">
                   Tình trạng : 
                </td>
                <td>
                    <asp:RadioButtonList
                        ID="radiobtnTinhTrang" runat="server">
                        <asp:ListItem Value="1">Đang sử dụng</asp:ListItem>
                        <asp:ListItem Value="0">Chưa sử dung</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width:35%; text-align: right;">
                   Mô tả : 
                </td>
                <td>
                    <textarea id="txtareMota" cols="29" name="S1" rows="5"  runat="server"></textarea></td>
            </tr>
            <tr>
                <td style="width:35%; text-align: right;">
                   Ngày đăng sản phẩm : 
                </td>
                <td>
                    <asp:Label ID="lbNgayDangSP" runat ="server" ForeColor="#3333FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:35%; text-align: right;">
                   Ngày sửa đổi : 
                </td>
                <td>
                    <asp:Label ID="lbNgaySuaDoi" runat="server" ForeColor="#3333FF"></asp:Label>
                </td>
            </tr>           
            <tr>
                <td style="width:35%; text-align: right;">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật" 
                        onclick="btnCapNhat_Click" />
                    <asp:Button ID="btnXoa" runat="server" Text="Xóa" onclick="btnXoa_Click" />
                </td>
            </tr>
        </table>
   </div>   
   
</div>