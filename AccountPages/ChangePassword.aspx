<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="AccountPages_ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
    <link href="Styles/master.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ChangePassword ID="changePassword" runat="server"
            SuccessText="Your password has been successfully changed." 
            ContinueDestinationPageUrl="~/Default.aspx" 
            CancelDestinationPageUrl="~/Default.aspx" >
        </asp:ChangePassword>
    </div>
    </form>
</body>
</html>
