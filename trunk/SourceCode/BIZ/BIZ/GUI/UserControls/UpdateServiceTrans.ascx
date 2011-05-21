<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpdateServiceTrans.ascx.cs" Inherits="BIZ.GUI.UserControls.UpdateServiceTrans" %>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <div align="center">
        <h3>Cập nhật dịch vụ vận chuyển</h3>
        <table width="700px">
            <tr>
                <td class="column1">Tên công ty :</td>
                <td >
                    <asp:TextBox CssClass="column2" ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="servicetrans" ControlToValidate="txtName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="column1">Link webservice :</td>
                <td class="column2">
                    <asp:TextBox CssClass="column2" ID="txtLink" runat="server" ></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="servicetrans" ControlToValidate="txtLink" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                     <br />
                    <asp:RegularExpressionValidator ValidationGroup="servicetrans"  ControlToValidate="txtLink"
                        ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*.([asmx])+)?" 
                        ID="RegularExpressionValidator1"  runat="server" 
                        ErrorMessage="Webservice không đúng" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="column1">Website :</td>
                <td class="column2">
                    <asp:TextBox CssClass="column2" ID="txtWebsite" runat="server" ></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="servicetrans" ControlToValidate="txtLink" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                     <br />
                    <asp:RegularExpressionValidator ValidationGroup="servicetrans"  ControlToValidate="txtWebsite"
                        ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" 
                        ID="RegularExpressionValidator2"  runat="server" 
                        ErrorMessage="Website không đúng" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            
            <tr>
                <td class="column1">Tình trạng :</td>
                <td class="column2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Đang hoạt động</asp:ListItem>
                        <asp:ListItem Value="0">Không sử dụng</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
            </tr>
            
        </table>
        <asp:Button ID="Button1" ValidationGroup="servicetrans" runat="server" 
            Text="Cập nhật" onclick="Button1_Click" /><br />
            <asp:Label ID="lbResult" runat="server"></asp:Label>
        <asp:HiddenField ID="hdfId" runat="server" />
    
    <hr />
    <h3>Cập nhật tài khoản đăng nhập website vận chuyển </h3>
    <table>
        <tr>
                <td  class="column1">Tài khoản đăng nhập :</td>
                <td class="column2">
                    <asp:TextBox CssClass="column2" ID="txtUserName" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="accoutntrans" ControlToValidate="txtUserName" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="column1">Mật khẩu đăng nhập :</td>
                <td class="column2">
                    <asp:TextBox CssClass="column2" ID="txtPass" TextMode="Password" runat="server" 
                       ></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="accoutntrans" ControlToValidate="txtPass" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
    </table>
     <asp:Button ID="Button2" ValidationGroup="accoutntrans" runat="server" 
            Text="Cập nhật" onclick="Button2_Click"  /><br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </ContentTemplate>
</asp:UpdatePanel>