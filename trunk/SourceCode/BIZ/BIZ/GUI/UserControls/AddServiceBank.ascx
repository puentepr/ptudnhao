<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddServiceBank.ascx.cs" Inherits="BIZ.GUI.UserControls.AddServiceBank" %>
<style type="text/css">
    .style1
    {
        width: 171px;
    }
    .style2
    {
        color: #3333FF;
    }
</style>
<div align="center" class="createObject">
    <h3 class="style2">
        THÊM WEB SERVICE NGÂN HÀNG</h3>
    <table style="width: 467px; height: 381px;">
        
        <tr>
            <td style="text-align: right" class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtMaBank" ErrorMessage="*"></asp:RequiredFieldValidator>
                <lable>Mã ngân hàng :</lable>
            </td>
            <td>
                <asp:TextBox ID="txtMaBank" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtTenBank" ErrorMessage="*"></asp:RequiredFieldValidator>
                <label>Tên ngân hàng :</label>
            </td>
             <td>
                <asp:TextBox ID="txtTenBank" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="*"></asp:RequiredFieldValidator>
                <label>UserName :</label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPassWord" ErrorMessage="*"></asp:RequiredFieldValidator>
                <label>PassWord :</label>
            </td>
            <td>
                <asp:TextBox ID="txtPassWord" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtLinksv" ErrorMessage="*"></asp:RequiredFieldValidator>
                <label>Link webservice :</label>
            </td>
            <td>
                <asp:TextBox ID="txtLinksv" runat="server" Width="280px"></asp:TextBox>                                
            </td>            
        </tr>
        
        <tr>    
            <td></td>
            <td>
                <label>Ví dụ: http://www.google.com.vn</label>
            </td>
        </tr>
        
        <tr>
            <td></td>
            <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Sai định dạng website !" ControlToValidate="txtLinksv" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
       
        <tr>
            <td class="style1" style="text-align: right">
                <label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="fileuploadLinkHinhAnh" ErrorMessage="*"></asp:RequiredFieldValidator>
                Ảnh ngân hàng :</label>
            </td>
            <td>
                <asp:FileUpload ID="fileuploadLinkHinhAnh" runat="server" Width="280px" />
                
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="fileuploadLinkHinhAnh"
	             ErrorMessage="Không phải file ảnh!" 
                 ValidationExpression = "^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                <label >Tình trạng webservice :</label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="dropTinhtrang" runat="server">
                    <asp:ListItem >Đang sử dụng</asp:ListItem>
                    <asp:ListItem >Chưa sử dụng</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtWebsiteBank" ErrorMessage="*"></asp:RequiredFieldValidator>
                <label>Website :</label>
            </td>
            <td>
                <asp:TextBox ID="txtWebsiteBank" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Sai định dạng website !" ControlToValidate="txtWebsiteBank" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtSTK" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" style="text-align: left" Text="Sổ tài khoản :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSTK" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        
    </table>
   
    <table>        
        <tr align="center">
            <td>
                <asp:Button ID="btnThem" runat="server" Text="Thêm" onclick="btnThem_Click" />
            </td>
            <td>
                <asp:Button ID="bttHuyBo" runat="server" Text="Hủy Bỏ" 
                    onclick="bttHuyBo_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lbResultInfo" runat="server"></asp:Label>              
            </td>
        </tr>
    </table>
</div>
