<%@ Page Title="Contact Us!" Language="C#" MasterPageFile="~/SiteTemplate.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerContent" Runat="Server">
    <title>Contact Us</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" Runat="Server">
     
    <h1>Contact Us</h1>
    <span id="contentText">
        If you'd like to talk with us but don't feel like creating an account right now, leave us a message!
        <br /><br />
        <label for="txtReferenceNumber">Reference Number: </label> &nbsp;&nbsp;
        <asp:TextBox ID="txtReferenceNumber" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="vldReferenceNumber" runat="server" 
                                    ControlToValidate="txtReferenceNumber"
                                    ErrorMessage="Reference Number Required"
                                    ForeColor="Red" Display="Dynamic">
        </asp:RequiredFieldValidator>
        <br /><br />

        <label for="txtfirstName">First Name: </label> &nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="vldFirstName" runat="server" 
                                    ControlToValidate="txtFirstName"
                                    ErrorMessage="Please enter your first name"
                                    ForeColor="Red" Display="Dynamic">
        </asp:RequiredFieldValidator>
        <br /><br />
            
        <label for="txtLastName">Last Name: </label> &nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="vldLastName" runat="server" 
                                    ControlToValidate="txtLastName"
                                    ErrorMessage="Please enter your last name"
                                    ForeColor="Red" Display="Dynamic">
        </asp:RequiredFieldValidator>
        <br /><br />

        <label for="txtMessage">How can we help you? </label> &nbsp;&nbsp;
        <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="vldMessage" runat="server" 
                                    ControlToValidate="txtMessage"
                                    ErrorMessage="Please write your message"
                                    ForeColor="Red" Display="Dynamic">
        </asp:RequiredFieldValidator>
        <br /><br />
        
        <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="btnSubmit_Click" />

        <br /><br />
        
    </span><br />
</asp:Content>