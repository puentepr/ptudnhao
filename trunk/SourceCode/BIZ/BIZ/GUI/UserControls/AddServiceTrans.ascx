<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddServiceTrans.ascx.cs" Inherits="BIZ.GUI.UserControls.AddServiceTrans" %>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <div align="center">
        <h3>Thêm dịch vụ vận chuyển</h3>
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
                <td  class="column1">Tài khoản đăng nhập :</td>
                <td class="column2">
                    <asp:TextBox CssClass="column2" ID="txtUserName" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="servicetrans" ControlToValidate="txtUserName" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="column1">Mật khẩu đăng nhập :</td>
                <td class="column2">
                    <asp:TextBox CssClass="column2" ID="txtPass" TextMode="Password" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="servicetrans" ControlToValidate="txtPass" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="column1">Địa chỉ kho hàng của biz :</td>
                <td class="column2">
                    <asp:TextBox CssClass="column2" ID="txtBizAddress" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="servicetrans" 
                        ControlToValidate="txtBizAddress" ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
               <tr>
              <!--  <td colspan="2" align="center">
                    <h4 style="color:Green">Các hình thức vận chuyển</h4>
                    <asp:GridView ID="grTransType" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="HinhThuc" HeaderText="Hình thức vận chuyển" />
                            <asp:TemplateField HeaderText="Giá">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ErrorMessage="(*)" ControlToValidate="txtPrice" Display="Dynamic"></asp:RequiredFieldValidator>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Đơn vị tiền tệ">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtMoney" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ErrorMessage="(*)" ControlToValidate="txtMoney" Display="Dynamic"></asp:RequiredFieldValidator>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <br />
                    
                </td> -->
            </tr>
            
        </table>
        <asp:Button ID="Button1" CssClass="button" ValidationGroup="servicetrans" runat="server" 
            Text="Thêm" onclick="Button1_Click" /><br />
            <asp:Label ID="lbResult" runat="server"></asp:Label>
    </div>
    <div id="divservicetrans" runat="server" align="center">
        <h3>Danh sách dịch vụ vận chuyển đang sử dụng</h3>
        <asp:GridView ID="grWebservice" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="MaDV" ForeColor="Black" GridLines="Vertical" 
            onrowdeleting="grWebservice_RowDeleting">
        
            <RowStyle BackColor="#F7F7DE" />
        
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Website" DataTextField="TenCongTy" 
                    HeaderText="Tên công ty" Target="_blank" />
                <asp:HyperLinkField DataNavigateUrlFields="LinkWebService" 
                    DataTextField="LinkWebService" Target="_blank" Text="WebService" 
                    HeaderText="Link Webservice" />
                <asp:TemplateField HeaderText="Cập nhật">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("MaDV") %>' Text='<%# Eval("Title") %>' 
                            onclick="LinkButton1_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField DeleteText="Xóa" HeaderText="Xóa" ShowDeleteButton="True" />
            </Columns>
        
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        
        </asp:GridView>
        <asp:Label ID="lbsvresult" runat="server"></asp:Label>
        
    </div>
</ContentTemplate>
</asp:UpdatePanel>


