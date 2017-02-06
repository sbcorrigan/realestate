<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="MyAccount.aspx.cs" Inherits="MyAccount"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Account</title>
    <link href="Styles/master.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DetailsView runat="server" ID="details" DataSourceID="">
    </asp:DetailsView>
        <asp:SqlDataSource ID="sourceUser" runat="server" ConnectionString='<%$ ConnectionStrings:UserDB %>'
            SelectCommand="Select UserName From Users where username=@username"
            ></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
