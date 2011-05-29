<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ValidateOrder.ascx.cs" Inherits="BIZ.GUI.UserControls.ValidateOrder" %>
<div class="middle-box">
    <div class="middle-top-box">
        <div class="left">
        </div>
        <div class="center">
            <img src="#"  />
            <label >XÁC NHẬN MUA HÀNG</label>
        </div>
        <div class="right">
        </div>
        
    </div>
    
    <!-- Đổ dữ liệu vào đây , dùng innerHTML cho thẻ div này thì phải -->
    <div class="middle-content-box" align="center" id="divNewProduce" runat="server">
         <table>
            <tr>
                <td colspan="2">
                    <h4>Một mã xác nhận đã được gởi vào email của bạn. Bạn vui lòng check mail và điền mã xác nhận vào ô bên dưới<br />Lưu ý mã này chỉ có giá trị cho giỏ hàng hiện tại của bạn</h4>
                </td>            
            </tr>
            <tr>
                <td>
                    <label>Mã xác nhận :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtCode" Width="300px" runat="server" BorderColor="Aqua" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ControlToValidate="txtCode" ValidationGroup="code" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator">Chưa điền mã xác nhận</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" CssClass="button" ValidationGroup="code" runat="server" Text="Xác nhận" onclick="Button1_Click" /><br />
                    <asp:Label ID="Label1" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
                </td>
            </tr>
         </table>
    </div>
    <div class="middle-bottom-box">
        
    </div>
</div>