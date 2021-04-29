<%@ Page Title="" Language="C#" MasterPageFile="~/Sites/Master.Master" AutoEventWireup="true" CodeBehind="ImageGallery.aspx.cs" Inherits="Insta_Web.Sites.ImageGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                      <div class="col-md-6 col-xs-10 col-lg-4 col-sm-8 " style="text-align:center; margin-bottom:10px" >
                    <a href="Image_viewer.aspx?Imageid=<%# Eval("Image_ID") %>" onclick="imageclick">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_Path") %>' Height="295px" Width="300px" />
                        </a>
                    <br />
               
                  </div> 
                </ItemTemplate>
            </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Insta_webConnectionString %>" 
        SelectCommand="SELECT [Image_ID], [category], [Image_Name], [Image_Path],[Influencer_ID] FROM [Image_Table] WHERE ([category] LIKE '%' + @category + '%')">
        <SelectParameters>
            <asp:QueryStringParameter Name="category" QueryStringField="Category" Type="String" />
        </SelectParameters>
            </asp:SqlDataSource>

</div>
</div>

</asp:Content>
