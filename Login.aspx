<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>  
    <link href="Styles/master.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        Return to the main site by clicking <a href="/Home.aspx">here.</a>
    <div>
        <asp:Login ID="loginControl" runat="server"
            DestinationPageUrl="~/Home.aspx"
            CreateUserText="Register for the first time"
            CreateUserUrl="~/CreateUser.aspx"
            InstructionText="Please enter your username and password."
            FailureText="Your login attempt was not successful. Please try again"
            TitleText="Log In"
            LoginButtonText="Log In" 
            PasswordRecoveryUrl="~/PasswordRecovery.aspx"
            PasswordRecoveryText="Forgot your password?" >
            <TitleTextStyle BackColor="DarkBlue" Font-Bold="true" ForeColor="White" />
            <InstructionTextStyle Font-Italic="true" />
            <FailureTextStyle ForeColor="Red" />
        </asp:Login>
    </div>
    </form>
</body>
</html>
