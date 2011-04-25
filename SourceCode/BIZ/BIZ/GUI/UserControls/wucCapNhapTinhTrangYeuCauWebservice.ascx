<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCapNhapTinhTrangYeuCauWebservice.ascx.cs" Inherits="BIZ.GUI.UserControls.wucCapNhapTinhTrangYeuCauWebservice" %>

<style type="text/css">
    .style1 {
        width: 100%;
        height: 94px;
    }
    .style2
    {
        height: 49px;
    }
</style>

<div>

    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td style="text-align: center" class="style2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="#3333FF" style="text-align: center" 
                    Text="Cập nhật tình trạng sử dụng Web Service"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label1" runat="server" Text="Hiển thị tình trạng yêu cầu:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="0">Gửi yêu cầu</asp:ListItem>
        <asp:ListItem Value="1">Được phép sử dụng</asp:ListItem>
        <asp:ListItem Value="-1">Không được phép sử dụng</asp:ListItem>
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MA" 
                    DataSourceID="SqlDataSourceYCWEBSERVICE" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="USERNAME" HeaderText="User name" ReadOnly="True" 
                            SortExpression="USERNAME" />
                        <asp:BoundField DataField="LINK" HeaderText="Link" ReadOnly="True" 
                            SortExpression="LINK" />
                        <asp:BoundField DataField="EMAIL" HeaderText="Email" ReadOnly="True" 
                            SortExpression="EMAIL" />
                        <asp:TemplateField HeaderText="Tình trạng yêu cầu" SortExpression="TINHTRANGYC">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Value="-1">Không được phép sử dụng</asp:ListItem>
                                    <asp:ListItem Value="1">Được phép sử dụng</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TINHTRANGYC") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceYCWEBSERVICE" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:BiztmdtConnectionString %>" 
                    DeleteCommand="DELETE FROM [YCWEBSERVICE] WHERE [MA] = @original_MA AND (([USERNAME] = @original_USERNAME) OR ([USERNAME] IS NULL AND @original_USERNAME IS NULL)) AND (([LINK] = @original_LINK) OR ([LINK] IS NULL AND @original_LINK IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([TINHTRANGYC] = @original_TINHTRANGYC) OR ([TINHTRANGYC] IS NULL AND @original_TINHTRANGYC IS NULL)) AND (([SOLUONGSIDCAP] = @original_SOLUONGSIDCAP) OR ([SOLUONGSIDCAP] IS NULL AND @original_SOLUONGSIDCAP IS NULL)) AND (([SLSIDDATHANHTOAN] = @original_SLSIDDATHANHTOAN) OR ([SLSIDDATHANHTOAN] IS NULL AND @original_SLSIDDATHANHTOAN IS NULL))" 
                    InsertCommand="INSERT INTO [YCWEBSERVICE] ([USERNAME], [LINK], [EMAIL], [TINHTRANGYC], [SOLUONGSIDCAP], [SLSIDDATHANHTOAN]) VALUES (@USERNAME, @LINK, @EMAIL, @TINHTRANGYC, @SOLUONGSIDCAP, @SLSIDDATHANHTOAN)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [YCWEBSERVICE]" 
                    UpdateCommand="UPDATE [YCWEBSERVICE] SET [USERNAME] = @USERNAME, [LINK] = @LINK, [EMAIL] = @EMAIL, [TINHTRANGYC] = @TINHTRANGYC, [SOLUONGSIDCAP] = @SOLUONGSIDCAP, [SLSIDDATHANHTOAN] = @SLSIDDATHANHTOAN WHERE [MA] = @original_MA AND (([USERNAME] = @original_USERNAME) OR ([USERNAME] IS NULL AND @original_USERNAME IS NULL)) AND (([LINK] = @original_LINK) OR ([LINK] IS NULL AND @original_LINK IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([TINHTRANGYC] = @original_TINHTRANGYC) OR ([TINHTRANGYC] IS NULL AND @original_TINHTRANGYC IS NULL)) AND (([SOLUONGSIDCAP] = @original_SOLUONGSIDCAP) OR ([SOLUONGSIDCAP] IS NULL AND @original_SOLUONGSIDCAP IS NULL)) AND (([SLSIDDATHANHTOAN] = @original_SLSIDDATHANHTOAN) OR ([SLSIDDATHANHTOAN] IS NULL AND @original_SLSIDDATHANHTOAN IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_MA" Type="Int16" />
                        <asp:Parameter Name="original_USERNAME" Type="String" />
                        <asp:Parameter Name="original_LINK" Type="String" />
                        <asp:Parameter Name="original_EMAIL" Type="String" />
                        <asp:Parameter Name="original_TINHTRANGYC" Type="Int32" />
                        <asp:Parameter Name="original_SOLUONGSIDCAP" Type="Int32" />
                        <asp:Parameter Name="original_SLSIDDATHANHTOAN" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="USERNAME" Type="String" />
                        <asp:Parameter Name="LINK" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                        <asp:Parameter Name="TINHTRANGYC" Type="Int32" />
                        <asp:Parameter Name="SOLUONGSIDCAP" Type="Int32" />
                        <asp:Parameter Name="SLSIDDATHANHTOAN" Type="Int32" />
                        <asp:Parameter Name="original_MA" Type="Int16" />
                        <asp:Parameter Name="original_USERNAME" Type="String" />
                        <asp:Parameter Name="original_LINK" Type="String" />
                        <asp:Parameter Name="original_EMAIL" Type="String" />
                        <asp:Parameter Name="original_TINHTRANGYC" Type="Int32" />
                        <asp:Parameter Name="original_SOLUONGSIDCAP" Type="Int32" />
                        <asp:Parameter Name="original_SLSIDDATHANHTOAN" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="USERNAME" Type="String" />
                        <asp:Parameter Name="LINK" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                        <asp:Parameter Name="TINHTRANGYC" Type="Int32" />
                        <asp:Parameter Name="SOLUONGSIDCAP" Type="Int32" />
                        <asp:Parameter Name="SLSIDDATHANHTOAN" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</div>
