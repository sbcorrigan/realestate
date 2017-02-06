<%@ Page Title="Available Homes" Language="C#" MasterPageFile="SiteTemplate.master" AutoEventWireup="true" CodeFile="PhotoGallery.aspx.cs" Inherits="PhotoGallery" %>


<asp:Content ID="Content1" ContentPlaceHolderID="headerContent" Runat="Server">
    <title>Photo Gallery</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" Runat="Server">
    <h1>Photo Galery </h1><b />
    <asp:Label runat="server" Text="What up" ID="lblstate"></asp:Label>
    <asp:GridView runat="server" ID="gridil" DataSourceID="illinois" AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="Photo"  
                DataImageUrlFormatString="~\Images\CrocodileHouse.jpg" ItemStyle-Height="100px" ItemStyle-Width="100px"></asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="illinois" runat="server" ConnectionString='<%$ ConnectionStrings:UserDB %>'
        SelectCommand="SELECT [Photo], [State] FROM [Houses] WHERE ([State] = @State2)">
        <SelectParameters>
            <asp:Parameter DefaultValue="IL" Name="State2" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
  <asp:GridView runat="server" ID="gridca" DataSourceID="california" AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="Photo"  
                DataImageUrlFormatString="~\Images\HelioDome.jpg" ItemStyle-Height="100px" ItemStyle-Width="100px"></asp:ImageField>
            <asp:ImageField DataImageUrlField="Photo"  
                DataImageUrlFormatString="~\Images\RiverRock.jpg" ItemStyle-Height="100px" ItemStyle-Width="100px"></asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="california" runat="server" ConnectionString='<%$ ConnectionStrings:UserDB %>'
        SelectCommand="SELECT [Photo], [State] FROM [Houses] WHERE ([State] = @State2)">
        <SelectParameters>
            <asp:Parameter DefaultValue="CA" Name="State2" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView runat="server" ID="gridfl" DataSourceID="florida" AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="Photo"  
                DataImageUrlFormatString="~\Images\RotatingHouse.jpg" ItemStyle-Height="100px" ItemStyle-Width="100px"></asp:ImageField>
            <asp:ImageField DataImageUrlField="Photo"  
                DataImageUrlFormatString="~\Images\ShippingHouse.jpg" ItemStyle-Height="100px" ItemStyle-Width="100px"></asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="florida" runat="server" ConnectionString='<%$ ConnectionStrings:UserDB %>'
        SelectCommand="SELECT [Photo], [State] FROM [Houses] WHERE ([State] = @State2)">
        <SelectParameters>
            <asp:Parameter DefaultValue="FL" Name="State2" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView runat="server" ID="gridak" DataSourceID="arkansas" AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="Photo"  
                DataImageUrlFormatString="~\Images\SuperNarrow.jpg" ItemStyle-Height="100px" ItemStyle-Width="100px"></asp:ImageField>
            <asp:ImageField DataImageUrlField="Photo"  
                DataImageUrlFormatString="~\Images\TreeHouse.jpg" ItemStyle-Height="100px" ItemStyle-Width="100px"></asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="arkansas" runat="server" ConnectionString='<%$ ConnectionStrings:UserDB %>'
        SelectCommand="SELECT [Photo], [State] FROM [Houses] WHERE ([State] = @State2)">
        <SelectParameters>
            <asp:Parameter DefaultValue="AK" Name="State2" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView runat="server" ID="gridor" DataSourceID="oregon" AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="Photo"  
                DataImageUrlFormatString="~\Images\UnderARock.jpg" ItemStyle-Height="100px" ItemStyle-Width="100px"></asp:ImageField>
             </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="oregon" runat="server" ConnectionString='<%$ ConnectionStrings:UserDB %>'
        SelectCommand="SELECT [Photo], [State] FROM [Houses] WHERE ([State] = @State2)">
        <SelectParameters>
            <asp:Parameter DefaultValue="OR" Name="State2" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <br /><br />
   <br />
    

    <div id="defaultresults" runat="server">
         <br /><br />
            Here are some of our available homes! More to come soon!
            <br /><br /><br />
             <img src="Images/CrocodileHouse.jpg" />
            <p>Here's a house. Embrace your lifelong dream of living in a giant crocodile's tummy... with a T1 line! Interested? Click!</p>
            <br /><br /><br />
             <img src="Images/Heliodome.jpg" />
            <p>Here's a house. Not for the judgemental or throwers of stones. Interested? Click!</p>
            <br /><br /><br />
             <img src="Images/RiverRock.jpg" />
            <p>Here's a house. Just sort of balances there on a rock. NO TRAMPOLINES ALLOWED. Interested? Click!</p>
            <br /><br /><br />
             <img src="Images/RotatingHouse.jpg" />
            <p>Here's a house. Make sure you leave the rotate setting on "low" otherwise you'll get super dizzy. Interested? Click!</p>
            <br /><br /><br />
             <img src="Images/ShippingHouse.jpg" />
            <p>Here's a house. You can ship this house anywhwere! Interested? Click!</p>
            <br /><br /><br />
             <img src="Images/SuperNarrow.jpg" />
            <p>Here's a house. It's just kind of wedged in between two other buildings. Kind of tight quarters, still cool. Interested? Click!</p>
            <br /><br /><br />
             <img src="Images/TreeHouse.jpg" />
            <p>Here's a house. It's just one house, and you have to swing from room to room with a grappling hook. COOL. Interested? Click!</p>
            <br /><br /><br />
             <img src="Images/UnderARock.jpg" />
            <p>Here's a house. If you live in this house, you pretty much never have to keep up with those kids and their darn slang ever again! Interested? Click!</p>
            <br /><br /><br />
             <img src="Images/AirplaneHouse.jpg" />
            <p>Here's a house. DOES NOT ACTUALLY FLY. It can be used as a boat though. Totally seaworthy. Interested? Click!</p>
        </div>
</asp:Content>

