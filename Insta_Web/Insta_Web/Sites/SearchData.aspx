<%@ Page Title="" Language="C#" MasterPageFile="~/Sites/Master.Master" AutoEventWireup="true" CodeBehind="SearchData.aspx.cs" Inherits="Insta_Web.Sites.SearchData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
       
    <asp:Panel ID="PanelNoRecord" CssClass=" text-center" runat="server" >
        <asp:Label ID="Label2" CssClass="h1 label label-danger" runat="server" Text="There is no record availble"
            Font-Size="Larger" ></asp:Label>
    </asp:Panel>

    <asp:Panel ID="PanelSearchedData" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">
         <ItemTemplate>
             <div class="col-md-6 col-xs-10 col-lg-4 col-sm-8 " style="text-align:center; margin-bottom:10px" >
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_Path") %>'  Height="295px" Width="300px"/>
                 </div>
    </ItemTemplate>
    </asp:Repeater>

        </asp:Panel>
</div>
</asp:Content>
