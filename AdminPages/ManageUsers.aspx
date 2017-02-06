<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="AdminPages_ManageUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Users</title>
    <link href="Styles/master.css" rel="stylesheet" type="text/css" />

</head>
<body>
    Return to the main site by clicking <a href="/Home.aspx">here.</a>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvUsers" runat="server" DataSourceID="dsAllUsers"
            AutoGenerateColumns="false" DataKeyNames="UserId, UserName"
            OnSelectedIndexChanged="gvUsers_SelectedIndexChanged" >
            <SelectedRowStyle BackColor="LightGray" />
            <Columns>
                <asp:CommandField ShowSelectButton="true" SelectText="Select"/>
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" Visible="false" SortExpression="UserId"></asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:DetailsView ID="dvUserInfo" runat="server" DataSourceID="dsUserInfo"
            AutoGenerateRows="false" AutoGenerateEditButton="true" DataKeyNames="UserId,UserId1">
            <Fields>
                <asp:BoundField DataField="UserId" ReadOnly="true" Visible="false" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="CreateDate" ReadOnly="true" HeaderText="Date Created" SortExpression="CreateDate"></asp:BoundField>
                <asp:BoundField DataField="LastLoginDate" ReadOnly="true" HeaderText="Last Login Date" SortExpression="LastLoginDate"></asp:BoundField>
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:Label ID="lblRoles" runat="server" Visible="false" Text="Select User Role: "></asp:Label>
        <asp:RadioButtonList ID="lstRoles" runat="server" Visible="false" 
            OnSelectedIndexChanged="lstRoles_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
            <asp:ListItem Text="User" Value="user"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="true" Visible="false"></asp:Label>

         <asp:SqlDataSource ID="dsAllUsers" runat="server"
            ConnectionString="<%$ ConnectionStrings:UserDB %>" 
            SelectCommand="SELECT Users.UserId, Users.UserName, Memberships.Email, Roles.RoleName
                            FROM Users
                            JOIN Memberships ON Users.UserId = Memberships.UserId
                            JOIN UsersInRoles ON Memberships.UserId = UsersInRoles.UserId
                            JOIN Roles ON UsersInRoles.RoleId = Roles.RoleId" >
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsUserInfo" runat="server"
            ConnectionString="<%$ ConnectionStrings:UserDB %>"
            SelectCommand="SELECT * 
                            FROM Users
                            JOIN Memberships ON Memberships.UserId=Users.UserId
                            WHERE Users.UserId=@UserId"
            UpdateCommand="UPDATE Users SET UserName=@UserName WHERE UserId=@UserId
                           UPDATE Memberships SET Email=@Email, Comment=@Comment WHERE UserId=@UserId" 
            OnUpdating="dsUserInfo_Updating" OnUpdated="dsUserInfo_Updated" >
            <SelectParameters>
                <asp:ControlParameter ControlID="gvUsers" PropertyName="SelectedValue" Name="UserId"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName"></asp:Parameter>
                <asp:Parameter Name="UserId"></asp:Parameter>
                <asp:Parameter Name="Email"></asp:Parameter>
                <asp:Parameter Name="Comment"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
