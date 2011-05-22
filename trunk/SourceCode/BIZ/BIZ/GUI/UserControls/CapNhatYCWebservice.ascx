<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CapNhatYCWebservice.ascx.cs" Inherits="BIZ.GUI.UserControls.CapNhatYCWebservice" %>
<div align="center">
    <h3>Danh sách yêu cầu sử dụng webservice</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Ma" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="LinkWebSite" DataTextField="Tendn" 
                HeaderText="Tên doanh nghiệp" Text="Tên doanh nghiệp" />
            <asp:HyperLinkField DataNavigateUrlFields="LinkWebSite" 
                DataTextField="LinkWebSite" HeaderText="Website" Text="Website" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:TemplateField HeaderText="Xét duyệt">
                <ItemTemplate>
                    <asp:DropDownList BackColor="Violet" ForeColor="Green" ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True" Value="0">Chờ duyệt</asp:ListItem>
                        <asp:ListItem Value="1">Cho phép</asp:ListItem>
                        <asp:ListItem Value="-1">Cấm</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Đồng ý" onclick="Button1_Click" />
    <br />
    <hr />
    <h3 id="h3update" runat="server">Danh sách các hệ thống Mua chung đang kết nối</h3>
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Ma" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        onrowdeleting="GridView2_RowDeleting">
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:TemplateField HeaderText="Tên doanh nghiệp">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("LinkWebSite") %>' Text='<%# Eval("Tendn") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="LinkWebSite" 
                DataTextField="LinkWebSite" HeaderText="Website" Text="Website" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:TemplateField HeaderText="Tình trạng">
                <ItemTemplate>
                    <asp:DropDownList BackColor="Violet" ForeColor="Green" ID="DropDownList3" 
                        runat="server" SelectedValue='<%# Eval("TinhTrangYeuCau") %>'>
                        <asp:ListItem Value="1">Cho phép</asp:ListItem>
                        <asp:ListItem Value="-1">Cấm</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" DeleteText="Ghi nhận" 
                HeaderText="Cập nhật" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:Label ID="lbupdateResult" runat="server" ></asp:Label>
</div>