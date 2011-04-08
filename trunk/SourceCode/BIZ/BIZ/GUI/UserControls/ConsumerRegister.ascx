<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConsumerRegister.ascx.cs" Inherits="BIZ.GUI.UserControls.ConsumerRegister" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<table>
    <tr>
        <td><label>Tên đăng nhập :</label></td>
        <td>
            <asp:TextBox ID="txtUserName" runat="server">
            </asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><label>Mật khẩu :</label></td>
        <td>
            <asp:TextBox ID="txtPass" TextMode="Password" runat="server">
            </asp:TextBox>
        </td>
    </tr>
     <tr>
        <td><label>Nhập lại mật khẩu :</label></td>
        <td>
            <asp:TextBox ID="txtRePass" TextMode="Password" runat="server">
            </asp:TextBox>
        </td>
    </tr>
</table>
<table>
     <tr>
        <td><label>Tên doanh nghiệp :</label></td>
        <td>
            <asp:TextBox ID="txtBusinessName" TextMode="Password" runat="server">
            </asp:TextBox>
        </td>
    </tr>
     <tr>
        <td><label>Địa chỉ :</label></td>
        <td>
            <asp:TextBox ID="txtAddress" TextMode="Password" runat="server">
            </asp:TextBox>
        </td>
    </tr>
     <tr>
        <td><label>Điện thoại :</label></td>
        <td>
            <asp:TextBox ID="txtPhone" TextMode="Password" runat="server">
            </asp:TextBox>
        </td>
    </tr>
     <tr>
        <td><label>Địa chỉ website :</label></td>
        <td>
            <asp:TextBox ID="txtWebAdress" TextMode="Password" runat="server">
            </asp:TextBox>
        </td>
    </tr>
     <tr>
        <td><label>Tên người đại diện :</label></td>
        <td>
            <asp:TextBox ID="txtPersonName" TextMode="Password" runat="server">
            </asp:TextBox>
        </td>
    </tr>
     <tr>
        <td><label>Mã an toàn :</label></td>
        <td>
            <cc1:CaptchaControl ID="captcha" runat="server"  />
        </td>
        <td>Không tính khoảng trắng</td>
    </tr>
     <tr>
        <td><label>Nhập mã an toàn:</label></td>
        <td>
            <asp:TextBox ID="txtCaptcha" runat="server" ToolTip="Không có khoảng trắng giữa các kí tự">
            </asp:TextBox>
        </td>
        <td>
            <asp:Label ForeColor="Red" ID="lbCaptcha" runat="server"></asp:Label>
        </td>
    </tr>
     <tr>
        <td colspan="2">
            <asp:Button ID="btnRegister" Text="Đăng ký" runat="server"  
            onclick="btnRegister_Click" />
        </td>
         
    </tr>
</table>

