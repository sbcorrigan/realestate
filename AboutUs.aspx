<%@ Page Title="About Us" Language="C#" MasterPageFile="~/SiteTemplate.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerContent" Runat="Server">
    <title>About Us</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" Runat="Server">
     <asp:Image runat="server" />
    <h1>About Us</h1>
    <span id="contentText">
        
            <br /><br />
            We're super interesting and you should love us. Here's why:
           <img src="Images/AirplaneHouse.jpg" width="800px" /> <br />
            Yeah. Airplane House. You know you want it.
            <p>We're super cool, and so are the houses we have available!</p>
            <p>We work with a lot of financial institutions, like Chase, That One Super Rich Baby Boomer Relative You Have, and The Five Families, to put YOU in a unique house!</p>
            <p>Most aren't murder houses or obvious mob fronts!</p>
            <p>This is all obviously mostly placeholder text because SOMEONE decided five classes in his major in one semester was a good idea!</p>
        
    <br /><br />
        <asp:SqlDataSource ID="dsAllUsers" runat="server"
            ConnectionString="<%$ ConnectionStrings:UserDB %>"
            SelectCommand="SELECT * FROM Houses WHERE ROWNUM=1"></asp:SqlDataSource>
    </span><br />
</asp:Content>