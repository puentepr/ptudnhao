<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemDanhSachWebserviceBank.ascx.cs" Inherits="BIZ.GUI.UserControls.XemDanhSachWebserviceBank" %>
<style type="text/css">
    .style1
    {
        width: 70%;
        height: 388px;
    }
  
    #txtAreaWebservice
    {
        width: 260px;
    }
  
    .style2
    {
        height: 94px;
    }
  
    .style3
    {
        color: #3333FF;
        font-weight: bold;
    }
  
    </style>

    
<asp:Panel ID="panelDSBank" runat="server">
    <div style="color: #3333FF">
        <b>XEM DANH SÁCH WEBSERVICE BANK</b></div>
    <p>
        Tình trạng:
        <asp:DropDownList ID="dropTinhtrang" runat="server" AutoPostBack="True" 
            onselectedindexchanged="dropTinhtrang_SelectedIndexChanged">
              <asp:ListItem Value="1" >Đang sử dụng</asp:ListItem>
              <asp:ListItem Value="0" >Chưa sử dụng</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
    <%--show ds service bank theo trạng thái--%>
        <asp:GridView ID="gvDSBank" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="MaBank" 
            onselectedindexchanged="gvDSBank_SelectedIndexChanged">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                 <asp:TemplateField HeaderText="Logo">
                     <ItemTemplate>
                         <%--<asp:ImageButton ID="ImageButton1" runat="server" 
                             ImageUrl='<%# Eval("AnhBank") %>' />--%>
                         <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("AnhBank") %>' /> 
                     </ItemTemplate>
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã">
                    <ItemTemplate>
                        <asp:LinkButton ID="linkbt_MaBank" runat="server" Text='<%# Eval("mabank") %>' 
                            CommandName="select"></asp:LinkButton>
                    </ItemTemplate>
                 </asp:TemplateField>
                <asp:BoundField DataField="TenBank" HeaderText="Tên" />
                 <asp:HyperLinkField DataNavigateUrlFields="Website" DataTextField="Website" 
                     HeaderText="Website" Text="Website" />
                 <asp:BoundField DataField="UserName" HeaderText="UserName" />
                 <asp:BoundField DataField="PassWord" HeaderText="PassWord" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    <%--/show ds service bank theo trạng thái--%>
    </p>
   
</asp:Panel >

<asp:Panel ID="panelChiTietBank" visible = "false" runat ="server">
    <div>
    <asp:LinkButton ID="lbtBackToList" runat="server" onclick="ShowHidePanel" 
            style="text-align: left">Quay trở lại</asp:LinkButton>
        <br />
    </div>
        
    <div style="text-align: center">
       <table cellpadding="0" cellspacing="0" class="style1" >
            <tr>
                <td style="text-align: center" colspan="3" class="style3">
                    CẬP NHẬT HOẶC XÓA WEBSERVICE BANK</td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">
                    &nbsp;</td>
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
                    <asp:TextBox ID="txtTenBank" runat="server" Width="260px" BackColor="White"></asp:TextBox>
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
                    <asp:TextBox ID="txtwebsite" runat="server" Width="260px" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
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
                    <asp:TextBox ID="txtpass" runat="server" Width="260px" BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtAreaWebservice" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label5" runat="server" Text="Link webservice :"></asp:Label>
                </td>
                <td class="style2">
                    </td>
                <td class="style2">                  
                    <textarea id="txtAreaWebservice" name="S1" cols="30" rows="5" runat="server" ></textarea>
                </td>
            </tr>
           
            <tr>
                <td style="text-align: right" >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtAreaWebservice" 
                        ErrorMessage="Không đúng định dạng website !" 
                        ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="Tình trạng :"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                                       <asp:RadioButtonList
                        ID="radiobtnTinhTrang" runat="server">
                        <asp:ListItem Value="1">Đang sử dụng</asp:ListItem>
                        <asp:ListItem Value="0">Chưa sử dung</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>   
            <tr>
                <td style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="text-align: left">
                        <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật" 
                            onclick="btnCapNhat_Click" />
                        <asp:Button ID="btnXoa" runat="server" Text="Xóa" onclick="btnXoa_Click" />
                </td>
            </tr>   
            </table>
        
   </div>    
    
</asp:Panel>