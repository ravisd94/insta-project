<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Insta_Web.Sites.Admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" class="container" runat="server">
       
<div class="row w-75 bg-danger d-flex center justify-content-center">
<div class="col">

<div class="row">
<div class="col-md-3">
Insta ID:
</div>
<div class="col-md-9">
    <asp:DropDownList ID="DropDownInsta" runat="server">
        
    </asp:DropDownList>
</div>
</div>

<div class="row">
<div class="col-md-3">
Images:
</div>

<div class="col-md-9">
    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" required="true" />
</div>
</div>


<div class="row">
<div class="col-md-3">
Categogry:
</div>

<div class="col-md-9">
    <asp:CheckBoxList ID="chkCategory" runat="server" 
        RepeatDirection="Horizontal" >
    </asp:CheckBoxList>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
</div>
</div>

<div class="row">
<div class="col-md-12">
    <asp:Label ID="lblMsg" runat="server" ></asp:Label>
    <asp:Button ID="btnSubmit" CssClass="btn btn-block btn-primary" runat="server" 
        Text="Submit" onclick="btnSubmit_Click" />
</div>
</div>
</div>
</div>

    </form>
   <div>
    <a class="btn btn-primary" href="Add_inf.aspx" >ADD Influencer</a>
</div>
</body>
</html>
