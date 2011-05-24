<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemDanhSachWebserviceBank.ascx.cs" Inherits="BIZ.GUI.UserControls.XemDanhSachWebserviceBank" %>
<style type="text/css">
      
    #txtAreaWebservice
    {
        width: 260px;
    }
  
    </style>

    
<%--<asp:Panel ID="panelDSBank" runat="server">--%>
    <div style="color: #3333FF" align="center">
        <b>DANH SÁCH WEBSERVICE BANK TRONG HỆ THỐNG</b></div>
    
    <div style="color: #3333FF" align="center">
        <p>
            Tình trạng:
            <asp:DropDownList ID="dropTinhtrang" runat="server" AutoPostBack="True" 
                onselectedindexchanged="dropTinhtrang_SelectedIndexChanged">
                  <asp:ListItem Value="1" >Đang sử dụng</asp:ListItem>
                  <asp:ListItem Value="0" >Chưa sử dụng</asp:ListItem>
            </asp:DropDownList>
        </p>
        
         <p>
        <asp:GridView ID="gvDSBank" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="MaBank" 
                 onpageindexchanging="gvDSBank_PageIndexChanging" 
                 onrowcreated="gvDSBank_RowCreated"
                 AllowPaging="True">                     
            <%--<PagerSettings Mode="NextPrevious" NextPageText="Next" 
            PreviousPageText="Previous" />--%>
           <RowStyle BackColor="#EFF3FB" />
            <Columns>
                 <asp:TemplateField HeaderText="Logo">
                     <ItemTemplate>
                         <%--<asp:ImageButton ID="ImageButton1" runat="server" 
                             ImageUrl='<%# Eval("AnhBank") %>' />--%>
                         <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("AnhBank") %>' /> 
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="mabank" HeaderText="Mã " />
                <asp:BoundField DataField="TenBank" HeaderText="Tên" />
                 <asp:HyperLinkField DataNavigateUrlFields="Website" DataTextField="Website" 
                     HeaderText="Website" Text="Website" />
                <asp:TemplateField HeaderText="Xem chi tiết">
                    <ItemTemplate>
                        <asp:HyperLink ID="hyperlinkXemChiTiet" runat="server" 
                        NavigateUrl='<%# "~/GUI/Admin/ViewDetailServiceBank.aspx?maBank=" + Eval("MaBank") %>' 
                        Target="_parent">Xem chi tiết</asp:HyperLink>
                    </ItemTemplate>
                 </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        
        <i>Bạn đang xem trang 
        <%=gvDSBank.PageIndex + 1%>
        của
        <%=gvDSBank.PageCount%>
        </i>
    </p>
        
    </div>       
    
   
   
