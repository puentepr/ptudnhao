<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TenNewProduce.ascx.cs" Inherits="BIZ.GUI.UserControls.TenNewProduce" %>
<div class="middle-box">
    <div class="middle-top-box">
        <div class="left">
        </div>
        <div class="center">
            <img src="../../Content/images/new_red.gif"  />
            <label >SẢN PHẨM MỚI ĐĂNG</label>
        </div>
        <div class="right">
        </div>
        
    </div>
    
    <!-- Đổ dữ liệu vào đây , dùng innerHTML cho thẻ div này thì phải -->
    <div class="middle-content-box" id="divNewProduce" runat="server">
        <table class="tbproduct">
            <tr>
                <td class="produce">
                    <asp:LinkButton ID="lbtProduce" runat="server">
                        <img src="../../Content/images/bep-karador.jpg" />
                        <img src="../../Content/images/new.gif" />
                        <br />
                       
                    </asp:LinkButton>
                        <label id="lbName" class="lbname" runat="server">Bếp ga Karador</label><br />
                        <label id="lbSaleOff" runat="server">Giảm giá : 0%</label><br />
                        <label class="label" id="lbPrice" runat="server">Giá : 5000000 VNĐ/sp</label>
                    
                      <asp:LinkButton ID="LinkButton3" runat="server">
                        <img src="../../Content/images/xemchitiet_but.gif" />
                    </asp:LinkButton>
                    
                </td>
                 <td class="produce">
                    <asp:LinkButton ID="LinkButton1" runat="server">
                        <img src="../../Content/images/bep-karador.jpg" />
                        <img src="../../Content/images/new.gif" />
                        <br />
                       
                    </asp:LinkButton> 
                        <asp:Label ID="Label1" class="lbname" runat="server">Bếp ga Karador</asp:Label><br />
                        <asp:Label ID="Label2" runat="server">Giảm giá : 0%</asp:Label><br />
                        <asp:Label ID="Label3" runat="server">Giá : 5000000 VNĐ/sp</asp:Label>
         
                    <asp:LinkButton ID="LinkButton4" runat="server">
                        <img src="../../Content/images/xemchitiet_but.gif" />
                    </asp:LinkButton>
                    
                </td>
                 <td class="produce">
                    <asp:LinkButton ID="LinkButton2" runat="server">
                        <img src="../../Content/images/bep-karador.jpg" />
                        <img src="../../Content/images/new.gif" />
                        <br />
                        
                    </asp:LinkButton> 
                        <asp:Label ID="Label4" class="lbname" runat="server">Bếp ga Karador</asp:Label><br />
                        <asp:Label ID="Label5" runat="server">Giảm giá : 0%</asp:Label><br />
                        <asp:Label ID="Label6" runat="server">Giá : 5000000 VNĐ/sp</asp:Label>
                    <asp:LinkButton ID="LinkButton5" runat="server">
                       <img src="../../Content/images/xemchitiet_but.gif" />
                    </asp:LinkButton>  
                        
                    
                </td>
            </tr>
            <tr>
                <td class="produce">
                    <asp:LinkButton ID="LinkButton6" runat="server">
                        <img src="../../Content/images/bep-karador.jpg" />
                        <img src="../../Content/images/new.gif" />
                        <br />
                       
                    </asp:LinkButton>
                        <label id="Label7" class="lbname" runat="server">Bếp ga Karador</label><br />
                        <label id="Label8" runat="server">Giảm giá : 0%</label><br />
                        <label class="label" id="Label9" runat="server">Giá : 5000000 VNĐ/sp</label>
                    
                      <asp:LinkButton ID="LinkButton7" runat="server">
                        <img src="../../Content/images/xemchitiet_but.gif" />
                    </asp:LinkButton>
                    
                </td>
                 <td class="produce">
                    <asp:LinkButton ID="LinkButton8" runat="server">
                        <img src="../../Content/images/bep-karador.jpg" />
                        <img src="../../Content/images/new.gif" />
                        <br />
                       
                    </asp:LinkButton> 
                        <asp:Label ID="Label10" class="lbname" runat="server">Bếp ga Karador</asp:Label><br />
                        <asp:Label ID="Label11" runat="server">Giảm giá : 0%</asp:Label><br />
                        <asp:Label ID="Label12" runat="server">Giá : 5000000 VNĐ/sp</asp:Label>
         
                    <asp:LinkButton ID="LinkButton9" runat="server">
                        <img src="../../Content/images/xemchitiet_but.gif" />
                    </asp:LinkButton>
                    
                </td>
                 <td class="produce">
                    <asp:LinkButton ID="LinkButton10" runat="server">
                        <img src="../../Content/images/bep-karador.jpg" />
                        <img src="../../Content/images/new.gif" />
                        <br />
                        
                    </asp:LinkButton> 
                        <asp:Label ID="Label13" class="lbname" runat="server">Bếp ga Karador</asp:Label><br />
                        <asp:Label ID="Label14" runat="server">Giảm giá : 0%</asp:Label><br />
                        <asp:Label ID="Label15" runat="server">Giá : 5000000 VNĐ/sp</asp:Label>
                    <asp:LinkButton ID="LinkButton11" runat="server">
                       <img src="../../Content/images/xemchitiet_but.gif" />
                    </asp:LinkButton>  
                        
                    
                </td>
            </tr>
         
                
        </table>
    </div>
    <div class="middle-bottom-box">
        
    </div>
</div>