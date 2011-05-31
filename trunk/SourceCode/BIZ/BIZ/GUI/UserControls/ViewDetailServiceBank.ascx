<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewDetailServiceBank.ascx.cs" Inherits="BIZ.GUI.UserControls.ViewDetailServiceBank" %>

<style type="text/css">
    .style1
    {
    	font-weight: bold;
    	color: #3333FF;
        height: 578px;
    }    
   
    .style2
    {
        height: 104px;
    }
    .style3
    {
        height: 55px;
    }
    .style4
    {
        height: 15px;
    }  
      
</style>

<div style="text-align: center">
       <table cellpadding="0" cellspacing="0" class="style1" >
            <tr>
                <td style="text-align: center" colspan="3" >
                    <span>THÔNG TIN CHI TIẾT WEBSERVICE BANK</span>
                    </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">
                    <asp:Label ID="lbResult" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="Mã Bank :"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtMaBank" runat="server" Width="260px" BackColor="#F0F0F0" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtTenBank" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label2" runat="server" Text="Tên Bank :"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtTenBank" CssClass="textbox" runat="server" Width="260px" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtwebsite" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label8" runat="server" Text="Website :"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtwebsite" CssClass="textbox" runat="server" Width="260px" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtwebsite" 
                        ErrorMessage="Không đúng định dạng website !" 
                        ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label3" runat="server" Text="UserName :"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Width="260px" BackColor="#F0F0F0" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtpass" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label4" runat="server" Text="PassWord :"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtpass" CssClass="textbox" runat="server" Width="260px" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtAreaWebservice" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label5" runat="server" Text="Link webservice :"></asp:Label>
                </td>
                <td class="style2" ></td>
                <td class="style2" >                  
                    <textarea id="txtAreaWebservice" name="S1" cols="30" rows="5" runat="server" ></textarea>
                </td>
            </tr>
           
            <tr>
                <td style="text-align: right" class="style4" >
                    </td>
                <td class="style4">
                    </td>
                <td class="style4">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtAreaWebservice" 
                        ErrorMessage="Không đúng định dạng website !" 
                        ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style3" >
                    <asp:Label ID="Label7" runat="server" Text="Tình trạng :"></asp:Label>
                </td>
                <td class="style3"></td>
                <td class="style3">
                    <asp:RadioButtonList
                        ID="radiobtnTinhTrang" runat="server">
                        <asp:ListItem Value="1">Đang sử dụng</asp:ListItem>
                        <asp:ListItem Value="0">Chưa sử dụng</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>   
            <tr>
                <td style="text-align: right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtSTK" ErrorMessage="*"></asp:RequiredFieldValidator>
                     <asp:Label ID="Label6" runat="server" Text="Số tài khoản :"></asp:Label>
                 </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtSTK" CssClass="textbox" runat="server" Width="260px" BackColor="White"></asp:TextBox>
                </td>
            </tr>   
            <tr>
                <td style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="text-align: left">
                        <asp:Button ID="btnCapNhat" CssClass="button" runat="server" Text="Cập nhật" 
                            onclick="btnCapNhat_Click" />
                        <asp:Button ID="btnXoa" CssClass="button" runat="server" Text="Xóa" onclick="btnXoa_Click" />
                </td>
            </tr>   
            </table>
        
   </div>    