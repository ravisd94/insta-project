<%@ Page Title="" Language="C#" MasterPageFile="~/Sites/Home_Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Insta_Web.Sites.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid " style="margin-top:15px;" >
        <div class="row">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
            <div class="col-md-6 col-xs-10 col-lg-4 col-sm-10 " style="text-align:center;" >
            <a href="ImageGallery.aspx?Category=<%# Eval("Category_Name") %>" target="_blank">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Category_Image") %>' Height="300px" Width="350px" />
            </a>
            <br />
          <asp:Label ID="Label1" runat="server" CssClass="h1" Font-size="Small"
               Text='<%# Eval("Category_Name") %>'  Font-Bold="True" ForeColor="#FF3300"/>
    </div> 
    </ItemTemplate>
        
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Insta_webConnectionString %>" 
        SelectCommand="SELECT [Category_ID], [Category_Name], [Category_Image] FROM [Category_Table]  " 
        ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

</div>
</div>           
</asp:Content>
