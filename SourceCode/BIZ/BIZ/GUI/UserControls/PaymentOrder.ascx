<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PaymentOrder.ascx.cs" Inherits="BIZ.GUI.UserControls.PaymentOrder" %>
<div class="middle-box">
    <div class="middle-top-box">
        <div class="left">
        </div>
        <div class="center">
            <label >ĐẶT VẬN CHUYỂN - THANH TOÁN</label>
        </div>
        <div class="right">
        </div>
        
    </div>
    
    <!-- Đổ dữ liệu vào đây , dùng innerHTML cho thẻ div này thì phải -->
    <div class="middle-content-box" align="center" id="divNewProduce" runat="server">
        <table>
            <tr>
                <td>
                    <h3><b style="color:Aqua">BƯỚC 1 :</b> Bạn hãy chọn 1 hình thức vận chuyển của một trong số các công ty bên dưới</h3>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:RadioButtonList ID="rdvc" runat="server" 
                        DataTextField="TenHinhThucVanChuyen" DataValueField="MaHinhThucVanChuyen" 
                        >
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ValidationGroup="pay" ControlToValidate="rdvc" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td> 
            </tr>
        </table>
         <br />
         <hr />
         <table>
            <tr>
                <td colspan="2">
                    <h3><b style="color:Aqua">BƯỚC 2 :</b> Hãy chọn ngân hàng bạn muốn thực hiện giao dịch</h3>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:RadioButtonList ID="rdbank" runat="server" DataTextField="TenBank" 
                        DataValueField="MaBank">
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ValidationGroup="pay" ControlToValidate="rdbank" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>
                    <b style="color:Aqua; font-size:18px; font-weight:bold">BƯỚC 3 :</b>
                    <label>Địa chỉ nhận hàng :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" BorderColor="Aqua" BorderStyle="Solid" BorderWidth="1px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                  
                    <label>Nhập số tài khoản của bạn :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtId" runat="server" BorderColor="Aqua" BorderStyle="Solid" BorderWidth="1px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnPayment" Text="Thanh toán" runat="server" 
                        ValidationGroup="pay" onclick="btnPayment_Click" />
                    <br />
                    <asp:Label ID="lbresult" runat="server"></asp:Label>
                </td>
            </tr>
         </table>
    </div>
    <div class="middle-bottom-box">
        
    </div>
</div>