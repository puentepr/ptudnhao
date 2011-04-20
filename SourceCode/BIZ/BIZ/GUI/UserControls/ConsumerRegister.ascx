<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConsumerRegister.ascx.cs" Inherits="BIZ.GUI.UserControls.ConsumerRegister" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<script language="javascript" type="text/javascript">
    var xmlhttp;
    function CreateXMLHttpRequest() {
        if (window.XMLHttpRequest) {
            
            return new XMLHttpRequest();
        }
        else if (ActiveXObject) {
            return new ActiveXObject("Microsoft.XMLHTTP");
        }
    }
    function CheckUsername() {

        xmlhttp = CreateXMLHttpRequest();
        xmlhttp.onreadystatechange = ShowResult;
        var username = document.getElementById('<%=txtusername.ClientID%>').value;
        var serverUrl = "../Consumers/CheckAccount.aspx?username=" + username;
        xmlhttp.open("get",serverUrl,"true");
        xmlhttp.send(null);
    }
    function ShowResult() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

            var result = xmlhttp.responseText;
            
            var lb = document.getElementById('<%=lbAccountResult.ClientID%>');
            
            lb.innerHTML = result;
           
        }
    }
</script>
<div class="register" align="center">
    <h3>ĐĂNG KÝ TÀI KHOẢN CHO DOANH NGHIỆP</h3>
    <h4>Thông tin tài khoản</h4>
    <table>
        <tr>
            <td><label>Tên đăng nhập :</label></td>
            <td>
                <input type="text" id="txtusername" runat="server" onchange="CheckUsername();" />
                <label  id="lbAccountResult"  runat="server"></label>
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
    <br />
    <h4>Thông tin về doanh nghiệp</h4>
    <table>
         <tr>
            <td><label>Tên doanh nghiệp :</label></td>
            <td>
                <asp:TextBox ID="txtBusinessName"  runat="server">
                </asp:TextBox>
            </td>
        </tr>
         <tr>
            <td><label>Địa chỉ :</label></td>
            <td>
                <asp:TextBox ID="txtAddress"  runat="server">
                </asp:TextBox>
            </td>
        </tr>
         <tr>
            <td><label>Điện thoại :</label></td>
            <td>
                <asp:TextBox ID="txtPhone"  runat="server">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><label>Email :</label></td>
            <td>
                <asp:TextBox ID="txtEmail"  runat="server">
                </asp:TextBox>
            </td>
        </tr>
         <tr>
            <td><label>Địa chỉ website :</label></td>
            <td>
                <asp:TextBox ID="txtWebAdress"  runat="server">
                </asp:TextBox>
            </td>
        </tr>
         <tr>
            <td><label>Tên người đại diện :</label></td>
            <td>
                <asp:TextBox ID="txtPersonName" runat="server">
                </asp:TextBox>
            </td>
        </tr>
         <tr>
            <td><label>Mã an toàn :</label></td>
            <td>
                <cc1:CaptchaControl ID="captcha" runat="server"  />
                <label>Không tính khoảng trắng</label>
            </td>
        </tr>
         <tr>
            <td><label>Nhập mã an toàn:</label></td>
            <td>
                <asp:TextBox ID="txtCaptcha" runat="server" 
                    ToolTip="Không có khoảng trắng giữa các kí tự" 
                    ontextchanged="txtCaptcha_TextChanged">
                </asp:TextBox>
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
</div>
