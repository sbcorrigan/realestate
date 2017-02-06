<%@ Page Title="User Control Panel" Language="C#" MasterPageFile="~/SiteTemplate.master" AutoEventWireup="true" CodeFile="UserControlPanel.aspx.cs" Inherits="UserControlPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerContent" Runat="Server">
    <title>User Control Panel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" Runat="Server">
   This page is for satisfied customers to show how happy they are!
     <div>
        <asp:LoginView ID="login" runat="server">
            <AnonymousTemplate>
                <h2>You are anonymous</h2>
                Why don't you <asp:LoginStatus ID="LoginStatus1" runat="server" />?
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="user">
                    <ContentTemplate>
                        <p>If you can see this, you are a member of the user role.</p>
                        <p>Change your password <a href="/AccountPages/ChangePassword.aspx">here</a></p>
                        <p>Go to <a href="/AccountPages/MyAccount.aspx">My Account</a></p>
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="admin">
                    <ContentTemplate>
                        <p>Congratulations, you are an administrator.</p>
                        <p>Admin Info:</p>
                        <a href="/AdminPages/AddUsers.aspx">Add Users</a>
                        <a href="/AdminPages/ManageUsers.aspx">Manage Users</a>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
</asp:Content>
