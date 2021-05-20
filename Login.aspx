<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DynamicCV.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V15</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="Login/images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="Login/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="Login/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="Login/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="Login/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="Login/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="Login/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="Login/css/main.css">
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-form-title" style="background-image: url(Login/images/bg-01.jpg);">
                    <span class="login100-form-title-1">Entity Cv Admin Panel
                    </span>
                </div>
                <form class="login100-form validate-form" runat="server">
                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <span class="label-input100">Kullanıcı Adı</span>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input100" placeholder="Enter username" name="username" required="true"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                        <span class="label-input100">Şifre</span>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input100" name="pass" class="input100" type="password" placeholder="Enter password" required="true"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>
                    <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="login100-form-btn" OnClick="Button1_Click"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="Login/vendor/animsition/js/animsition.min.js"></script>
    <script src="Login/vendor/bootstrap/js/popper.js"></script>
    <script src="Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="Login/vendor/select2/select2.min.js"></script>
    <script src="Login/vendor/daterangepicker/moment.min.js"></script>
    <script src="Login/vendor/daterangepicker/daterangepicker.js"></script>
    <script src="Login/vendor/countdowntime/countdowntime.js"></script>
    <script src="Login/js/main.js"></script>
</body>
</html>
