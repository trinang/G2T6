<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Thrive2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login form</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
    <link href="css/style_login.css" rel="stylesheet" type="text/css" media="all" />
    <!--script-->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
</head>
<body>
    <div class="login">
        <!--start-loginform-->
        <form name="login-form" class="login-form" action="" method="post">
            <span class="header-top">
                <img src="images/topimg.png" /></span>
            <div class="header">
                <h1>Login Form</h1>
                <span>Fill out the form below to login</span>
            </div>
            <div class="content">
                <input type="email" class="input username" placeholder="Email" required="">
                <input type="password" class="input password" placeholder="Password" required="">
            </div>
            <div class="login_button">
                <input type="submit" name="submit" value="Login" class="button" onclick="return check();"/>
            </div>
        </form>
        <!--end login form-->
        <!--side-icons-->
        <div class="user-icon"></div>
        <div class="pass-icon"></div>
        <!--END side-icons-->
        <!--Side-icons-->
        <script type="text/javascript">
            $(document).ready(function () {
                $(".username").focus(function () {
                    $(".user-icon").css("left", "-69px");
                });
                $(".username").blur(function () {
                    $(".user-icon").css("left", "0px");
                });

                $(".password").focus(function () {
                    $(".pass-icon").css("left", "-69px");
                });
                $(".password").blur(function () {
                    $(".pass-icon").css("left", "0px");
                });
            });

            
        </script>
        <p class="copy_right">&#169; 2014 by Team 180° </p>

    </div>
</body>
</html>
