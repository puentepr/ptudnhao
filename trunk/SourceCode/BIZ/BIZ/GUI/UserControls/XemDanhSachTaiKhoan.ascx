<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemDanhSachTaiKhoan.ascx.cs" Inherits="BIZ.GUI.UserControls.XemDanhSachTaiKhoan" %>


<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style6
    {
        font-size: medium;
        font-weight: bold;
        color: #3333FF;
    }
    </style>
<%--show danh sách user--%>
<asp:Panel ID="panelDSUser" runat="server">
     <div style="color: #3333FF" >
     <b>XEM DANH SÁCH TÀI KHOẢN</b>
    </div>
    <p>
    Vai trò: <asp:DropDownList ID="dropVaiTro" runat="server" AutoPostBack="True" 
        DataTextField="TenLoaiUser" DataValueField="MaLoaiUser" 
        onselectedindexchanged="dropVaiTro_SelectedIndexChanged">
    </asp:DropDownList>
    </p>
    <p>
    <%--show danh sách user theo vai trò--%>
    <asp:GridView ID="gvDSTaiKhoan" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                style="text-align: left" onrowcreated="gvDSTaiKhoan_RowCreated" 
                AllowPaging="True" DataKeyNames="UserName" 
            onselectedindexchanged="gvDSTaiKhoan_SelectedIndexChanged">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:TemplateField HeaderText="STT">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName">
                <ItemTemplate>
                    <asp:LinkButton ID="linkbtChiTiet" runat="server" 
                                Text='<%# Eval("username") %>' CommandName="select"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Email" HeaderText="Email" />
            
           <%-- <asp:TemplateField HeaderText="Trạng thái">
                <ItemTemplate>
                    <asp:Label ID="lbTrangThai" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <%--/show danh sách user theo vai trò--%>
    </p>
</asp:Panel>
<%--/show danh sách user--%>

<%--xem thông tin chi tiết của từng user--%>
<asp:Panel ID="panelChiTietUser" visible=false runat="server">
<div>
<asp:LinkButton ID="lbtBackToList" runat="server" onclick="ShowHidePanel" 
        style="text-align: left">Quay trở lại</asp:LinkButton>
    <br />
</div>

<%--thông tin khách hàng--%>
<asp:Panel ID="panelKhachHang" runat="server">
<table cellpadding="0" cellspacing="0" class="style1" 
        style="height: 221px; width: 426px">
    <tr>
        <td colspan="2" style="text-align: center">
            <span class="style6">THÔNG TIN KHÁCH HÀNG</span>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label6" runat="server" Text="UserName :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtUserName" runat="server" Width="260px" BackColor="#F0F0F0" 
                ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label1" runat="server" style="text-align: left" 
                Text="Tên doanh nghiệp :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTenDN" runat="server" Width="260px" BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label2" runat="server" Text="Địa chỉ :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDiaChi" runat="server" Width="260px" BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label3" runat="server" Text="Số điện thoại :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtSDT" runat="server" Width="260px" BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label4" runat="server" Text="Tên đại diện :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTenDaiDien" runat="server" Width="260px" 
                BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label5" runat="server" Text="Website :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWebsite" runat="server" Width="260px" BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
     <tr>
        <td style="text-align: right">
            <asp:Label ID="Label7" runat="server" Text="Trạng thái :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTrangThai" runat="server" Width="260px" BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
       
</table>
</asp:Panel>
<%--/thông tin khách hàng--%>

<%--thông tin quản trị--%>
<asp:Panel ID="panelQuanTri" runat="server">
<table cellpadding="0" cellspacing="0" class="style1" 
        style="height: 221px; width: 426px">
    <tr>
        <td colspan="2" style="text-align: center">
            <span class="style6">THÔNG TIN QUẢN TRỊ</span></td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label8" runat="server" Text="UserName :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtUserNameQT" runat="server" Width="260px" BackColor="#F0F0F0" 
                ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label9" runat="server" Text="Họ tên :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtHoTenQT" runat="server" Width="260px" 
                BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label10" runat="server" Text="Địa chỉ :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDiaChiQT" runat="server" Width="260px" BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label11" runat="server" Text="Số điện thoại :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtSDTQT" runat="server" Width="260px" BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>
   

    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label12" runat="server" Text="Trạng thái :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTrangThaiQT" runat="server" Width="260px" BackColor="#F0F0F0"></asp:TextBox>
            </td>
    </tr>

</table>
</asp:Panel>
<%--/thông tin quản trị--%>    
</asp:Panel>
<%--/xem thông tin chi tiết của từng user--%>












