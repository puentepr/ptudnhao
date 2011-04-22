<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YCWebService.aspx.cs" Inherits="BIZ.GUI.Manager.YCWebService" %>

<%@ Register src="../UserControls/YeuCauSuDungWebService.ascx" tagname="YeuCauSuDungWebService" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>yêu cầu sử dụng webservice</title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:YeuCauSuDungWebService ID="YeuCauSuDungWebService1" runat="server" />
    <div>
    
    </div>
    </form>
</body>
</html>
