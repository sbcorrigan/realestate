<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create User</title>
    <link href="Styles/master.css" rel="stylesheet" type="text/css" />
</head>
<body>
           
    <form id="form1" runat="server">
     Return to the main site by clicking <a href="/Home.aspx">here.</a>
    <div>
        <asp:CreateUserWizard ID="wizCreateUser" runat="server"
             OnCreatedUser="wizCreateUser_CreatedUser">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>
