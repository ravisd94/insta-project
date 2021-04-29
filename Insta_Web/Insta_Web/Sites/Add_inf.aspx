<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_inf.aspx.cs" Inherits="Insta_Web.Sites.Add_inf" %>

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
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    Name :
    <asp:TextBox ID="TextBox3" runat="server" Width="128px"></asp:TextBox>
    <br />
    <br />
    Insta link:
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
</div>
</div>


<div class="row">
<div class="col-md-3">
    Profile Pic link:
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</div>

<div class="col-md-9">
</div>
</div>

<div class="row">
<div class="col-md-12">
    <asp:Label ID="lblMsg" runat="server" ></asp:Label>
    <asp:Button ID="btnSubmitadd" CssClass="btn btn-block btn-primary" runat="server" 
        Text="Submit" onclick="btnSubmitadd_Click"  />
</div>
    </div>
    </div>
</div>



    </form>
    <p>
    <a class="btn btn-primary" href="Admin.aspx" >ADD Image</a>
    </p>
</body>
</html>