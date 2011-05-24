<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="BIZ.GUI.UserControls.Login" %>

<div class="login box-right">
    <div class="logintop-box">
        <asp:Label ID="lblStatus" CssClass="title-box" runat="server"></asp:Label>
        <asp:LinkButton ID="lbtLogout" CssClass="logout" Visible="false" runat="server" 
            onclick="lbtLogout_Click">[LogOut]</asp:LinkButton>
    </div>
    <div id="login" runat="server" class="content-box">
        <div >
            <label class="title">LOGIN</label>
         </div>

        <ul>
            
            <li><label id="lbUserName" class="title-box" runat="server">UserName:</label></li>     
            <li style="padding-bottom:2px;">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtUserName"
                    ID="RequiredFieldValidator1" ValidationGroup="login" runat="server" 
                    ErrorMessage="username invalid" Display="Dynamic"></asp:RequiredFieldValidator>
            </li>
            <li><label id="lblPassWord" class="title-box" runat="server">PassWord:</label></li>
            <li style="padding-bottom:2px;">
                <asp:TextBox ID="txtPassWord" TextMode="Password"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtUserName"
                    ID="RequiredFieldValidator2" ValidationGroup="login" runat="server" 
                    ErrorMessage="pass invalid" Display="Dynamic"></asp:RequiredFieldValidator>
            </li>							
            <li>
                <asp:Button ID="btnDangNhap" runat="server" Text="Đăng Nhập" CssClass="button" 
                 ValidationGroup="login"    onclick="btnDangNhap_Click" style="height: 26px"/>
               
                <a href="../Consumers/Register.aspx" >Đăng Kí</a></li>                            
                                   
   
        </ul>
    </div>
    <div class="bottom-box">
    </div>
</div>