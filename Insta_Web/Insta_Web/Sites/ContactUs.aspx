<%@ Page Title="" Language="C#" MasterPageFile="~/Sites/Master.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Insta_Web.Sites.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
            <asp:TextBox ID="txtName" CssClass="form-control" runat="server" placeholder="Name" required></asp:TextBox>
        </div>
        <div class="col-sm-6 form-group">
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" 
                placeholder="Email" type="email" required></asp:TextBox>
            
        </div>
      </div>
        <asp:TextBox ID="txtComment" CssClass="form-control" runat="server" 
                placeholder="Comment" type="email"  TextMode="MultiLine"></asp:TextBox>
      <br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>

</asp:Content>
