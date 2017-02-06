<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recover Password</title> 
    <link href="Styles/master.css" rel="stylesheet" type="text/css" />
</head>
<body>Return to the main site by clicking <a href="/Default.aspx">here.</a>
    <form id="form1" runat="server">
    <div>
        <asp:PasswordRecovery ID="passwordRecovery" runat="server"
            SuccessText="Your password has been sent to the email address on file."
            UserNameFailureText="User name not on file." 
            UserNameInstructionText="Please enter your username." 
            UserNameTitleText="Password Recovery" >
            <MailDefinition From="raxytrana@gmail.com"
                Subject="Password Reset" 
                BodyFileName="~/PasswordRecoveryTemplate.txt" >
            </MailDefinition>
            <TitleTextStyle Font-Size="Large" />
            <LabelStyle HorizontalAlign="Left" Width="5em"/>
            <SubmitButtonStyle Width="5em"  />
            <UserNameTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="font-size:Large;">Password Recovery</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">Please enter your username.</td>
                                </tr>
                                <tr>
                                    <td align="left" style="width:5em;">
                                        <asp:Label ID="UserNameLabel" runat="server" 
                                            AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                            ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                            ValidationGroup="passwordRecovery">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <br />
                                        <br />
                                        <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" 
                                            ValidationGroup="passwordRecovery" Width="5em" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </UserNameTemplate>
        </asp:PasswordRecovery>
    </div>
    </form>
</body>
</html>
