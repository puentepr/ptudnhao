<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoanhThuLoaiSPTheoDonHang.aspx.cs" Inherits="BIZ.DoanhThuLoaiSPTheoDonHang" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Thống kê doanh thu loại sản phẩm theo đơn hàng</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 282px;
        }
        .calender
        {
        	position:absolute;
        }
        .titlec
        {
        	position:relative;
        }
        .button
        {
	        background: #2bc5fb;
	        -moz-border-radius: 3px;
	        /*border-radius: 3px;*/
	        border: none;
	        padding: 3px;
	        color: #f1f1f1;
	        font-weight: bold;
	        cursor: pointer;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    Từ ngày:
                    <asp:TextBox ID="txtTuNgay" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/1288165338_alarm.png" onclick="ImageButton1_Click" />
                    <asp:Calendar ID="Calendar1" runat="server" 
                onselectionchanged="Calendar1_SelectionChanged" CssClass="calender" Visible="False">
                <TitleStyle CssClass="titlec" />
                </asp:Calendar>
                </td>
                <td>
                    Đến ngày:
                    <asp:TextBox ID="txtDenNgay" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" 
                        ImageUrl="~/1288165338_alarm.png" onclick="ImageButton2_Click"  />
                     <asp:Calendar ID="Calendar2" runat="server" 
                    onselectionchanged="Calendar2_SelectionChanged" CssClass="calender" Visible="False">
                    <TitleStyle CssClass="titlec" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btThongKe" CssClass="button" runat="server" onclick="btThongKe_Click" 
                        Text="Thống kê" />
                </td>
            </tr>
        </table>
    
    </div>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="True" Height="1039px" ReportSourceID="CrystalReportSource1" 
        Width="901px" />
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="DoanhThuLoaiSPTheoDonHangcr.rpt">
            <DataSources>
                <CR:DataSourceRef DataSourceID="SqlDataSource1" 
                    TableName="V_DoanhThuLoaiSPTheoDH" />
            </DataSources>
            <Parameters>
                <CR:ControlParameter ControlID="txtTuNgay" ConvertEmptyStringToNull="False" 
                     Name="TuNgay" PropertyName="Text" ReportName="" />
                <CR:ControlParameter ControlID="txtDenNgay" ConvertEmptyStringToNull="False" 
                     Name="DenNgay" PropertyName="Text" ReportName="" />
            </Parameters>
        </Report>
    </CR:CrystalReportSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [V_DoanhThuLoaiSPTheoDH] WHERE (([NGAYDAT] &gt;= @NGAYDAT) AND ([NGAYDAT] &lt;= @NGAYDAT2))">
        <SelectParameters>
            <asp:QueryStringParameter Name="NGAYDAT" QueryStringField="Day1" 
                Type="DateTime" />
            <asp:QueryStringParameter Name="NGAYDAT2" QueryStringField="Day2" 
                Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
