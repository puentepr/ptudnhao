<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="BIZ.GUI.UserControls.Login" %>

<div class="login box-right">
    <div class="logintop-box">
        <asp:Label ID="lblStatus" CssClass="title-box" runat="server"></asp:Label>
        <asp:LinkButton ID="lbtLogout" CssClass="logout" Visible="false" runat="server">[LogOut]</asp:LinkButton>
    </div>
    <div id="login" runat="server" class="content-box">
        <div >
            <label class="title">LOGIN</label>
         </div>

        <ul>
            
            <li><label id="lbUserName" class="title-box" runat="server">UserName:</label></li>     
            <li style="padding-bottom:2px;"><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></li>
            <li><label id="lblPassWord" class="title-box" runat="server">PassWord:</label></li>
            <li style="padding-bottom:2px;"><asp:TextBox ID="txtPassWord" TextMode="Password" runat="server"></asp:TextBox></li>							
            <li><asp:Button ID="btnDangNhap" runat="server" Text="Đăng Nhập" CssClass="button" 
                    onclick="btnDangNhap_Click" style="height: 26px"/>
                <asp:LinkButton ID="lbDangKi" runat="server" onclick="lbtDangKi_Click">Đăng Kí</asp:LinkButton></li>                            
                                   
   
        </ul>
    </div>
    <div class="bottom-box">
    </div>
</div>