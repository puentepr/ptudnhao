<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CapNhatYCWebservice.ascx.cs" Inherits="BIZ.GUI.UserControls.CapNhatYCWebservice" %>
<h3>Cập nhật tình trạng yêu cầu sử dụng webservice</h3>
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