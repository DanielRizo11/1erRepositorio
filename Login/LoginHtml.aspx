<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginHtml.aspx.vb" Inherits="WebApplicationVB.LoginHtml" %>

<!DOCTYPE html>

<head>

<link href="LoginStyle.css" rel="stylesheet" type="text/css" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

</head>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="avatarLogin.png" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
      <form id="form1" runat="server">
          &nbsp;<asp:TextBox ID="txtUsuario" runat="server" type="number" placeholder="Usuario"></asp:TextBox>
          &nbsp;<asp:TextBox ID="txtContrasena" runat="server" type="password" placeholder="contrasena"></asp:TextBox>
          &nbsp;<asp:Button ID="BtnLogin" runat="server" Text="Iniciar Sesion" Width="240px" CssClass="auto-style1" />
      </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>
