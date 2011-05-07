<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YeuCauSuDungWebService.ascx.cs" Inherits="BIZ.GUI.UserControls.YeuCauSuDungWebService" %>
<style type="text/css">
    #txtusername
    {
        width: 198px;
    }
    .style1
    {
        width: 100%;
        height: 325px;
    }
    .style2
    {
        color: #3333FF;
        font-weight: bold;
        text-align: center;
      
    }
    .style6
    {
        text-align: right;
        width: 147px;
    }
    .style7
    {
        width: 6px;
        text-align: center;
    }

    .style9
    {
        text-align: left;
        width: 147px;
        height: 30px;
    }
    .style12
    {
        color: #3333FF;
        font-weight: bold;
        text-align: center;
        height: 30px;
    }
</style>

<div>
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>            
                <span class="style2">YÊU CẦU WEBSERVICE</span><asp:Label ID="lbThongBao" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Quay về trang chủ" style="text-align: center" onclick="Button1_Click"   Visible="False" />
                       
                <asp:Panel ID="Panel1" runat="server">
                    <table cellpadding="0" cellspacing="0" class="style1" align="center">
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lbTenDangNhap" runat="server" Text="Tên đăng nhập"></asp:Label>
                            </td>
                            <td class="style7">
                                :</td>
                            <td class="style9">
                                <asp:TextBox ID="txtUsername" runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lbMatKhau" runat="server" Text="Mật khẩu"></asp:Label>
                            </td>
                            <td class="style7">
                                :</td>
                            <td class="style9">
                                <asp:TextBox ID="txtPass" TextMode="Password" runat="server" Width="200px" 
                                    style="text-align: left"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td class="style7">
                                :</td>
                            <td class="style9">
                                <asp:TextBox ID="txtEmail"  runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Sai định dạng email!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lbTenHeThongMuaChung" runat="server" 
                    Text="Tên hệ thống mua chung"></asp:Label>
                            </td>
                            <td class="style7">
                                :</td>
                            <td class="style9">
                                <asp:TextBox ID="txtTenHeThongMuaChung" runat="server" Width="200px" 
                                    style="text-align: left"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtTenHeThongMuaChung" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lbWebsite" runat="server" 
                    Text="Website"></asp:Label>
                            </td>
                            <td class="style7">
                                :</td>
                            <td class="style9">
                                <asp:TextBox ID="txtLink"  runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtLink" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtLink" ErrorMessage="Sai định dạng websitel!" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label1" runat="server" 
                    Text="Webservice nhận phản hồi"></asp:Label>
                            </td>
                            <td class="style7">
                                :</td>
                            <td class="style9">
                                <asp:TextBox ID="txtLinkWS"  runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtLinkWS" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtLinkWS" ErrorMessage="Webservice không đúng" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*.([asmx])+)?" ></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="3" style="text-align:center"><h4 style="color:Green">Xin cung câp thông tin một tài khoản đăng nhập vào hệ thống Mua chung</h4></td>
                        </tr>
                         <tr>
                            <td class="style6">
                                <asp:Label ID="Label2" runat="server" 
                    Text="Tên đăng nhập"></asp:Label>
                            </td>
                            <td class="style7">
                                :</td>
                            <td class="style9">
                                <asp:TextBox ID="txtMCUsernme"  runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtMCUsernme" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                <br />
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label3" runat="server" 
                    Text="Mật khẩu"></asp:Label>
                            </td>
                            <td class="style7">
                                :</td>
                            <td class="style9">
                                <asp:TextBox ID="txtMCPass"  runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtMCPass" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                <br />
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="style12" colspan="3">
                                <asp:Button ID="Button2" runat="server" onclick="btYeuCau_Click" 
                    Text="Yêu cầu" style="text-align: center" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style12" colspan="3">
                                <asp:Button ID="btYeuCau" runat="server" onclick="btYeuCau_Click" 
                    Text="Yêu cầu" style="text-align: center" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            
            </td>
        </tr>
    </table>
</div>