
<%@ Page Title="Home" Language="C#" MasterPageFile="~/SiteTemplate.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerContent" Runat="Server">
    <title>Home Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" Runat="Server">
             
    <br /><br />
    <asp:Label ID="searchLabel" runat="server">"Find your home today!"</asp:Label><br />
    <asp:TextBox ID="searchText" runat="server"  placeHolder="Search state"></asp:TextBox>
        <asp:Button ID="searchButton" runat="server" Text="Find My Home" OnClick="searchButton_Click"/>
    <asp:RequiredFieldValidator runat="server" ID="srchVld" ControlToValidate="searchText"
        ErrorMessage="You must enter a state." ForeColor="Red"></asp:RequiredFieldValidator>

    <div id="summary" style="background-color:#fcb040">
        <header>"How we got started"</header>
        <span id="homeSpan">Your Home Real Estate started with the dream of becoming <br />
            the most convenient real estate company in the market...
             </span><br />
        <a href="AboutUs.aspx" id="abtlink">Learn more about us</a>
    </div>
   
   
</asp:Content>
