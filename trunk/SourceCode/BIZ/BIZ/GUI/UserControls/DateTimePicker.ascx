<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DateTimePicker.ascx.cs" Inherits="BIZ.GUI.UserControls.DateTimePicker" %>
<style type="text/css">
        .calender
        {
        	position:absolute;
        }
        .titlec
        {
        	position:relative;
        }
    </style>
<div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Content/images/1288165338_alarm.png" onclick="ImageButton1_Click" />
       
        <br />
    
    <asp:Calendar ID="Calendar1" runat="server" 
        onselectionchanged="Calendar1_SelectionChanged" CssClass="calender" Visible="False">
        <DayStyle BackColor="#0099CC" />
        <TitleStyle CssClass="titlec" />
        </asp:Calendar>
    
</div>
</ContentTemplate>
    </asp:UpdatePanel>