<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Treasure.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>login</title>
    <link rel="stylesheet" href="admin_login_assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin_login_assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="admin_login_assets/css/aos.min.css">
    <link rel="stylesheet" href="admin_login_assets/css/Login-Animate.css">
    <script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="extfiles/recaptcha.js"></script>
    

</head>
<body>
    
     <div data-aos="fade-down" data-aos-duration="1000" data-aos-delay="100" data-aos-once="true" class="login-card" style="font-family:Roboto, sans-serif;">
        <p class="profile-name-card"> <i class="fa fa-unlock-alt d-inline" style="width:0;height:0;font-size:56px;color:rgb(104,145,162);"></i></p>
        <form id="form1" runat="server" class="form-signin">
            <span class="reauth-email" style="margin:11px;"> </span>
            <asp:TextBox ID="email" runat="server" class="form-control" required="" TextMode="Email" placeholder="Email address" autofocus=""/>
            <%--<input class="form-control" type="email" id="inputEmail" required="" placeholder="Email address" autofocus="">--%>
        <asp:TextBox ID="password" runat="server" class="form-control" required="" TextMode="Password" placeholder="password" autofocus=""/>
            

            <%--<div class="g-recaptcha" data-sitekey="6Ld9OhwqAAAAAF8mS-lcYEv1VgXfyfV4ReyJjdzR"></div><br>--%>
            <div class="form-group">
                <div id="ReCaptchContainer"></div>
                <asp:Label ID="lblMessage1" runat="server"></asp:Label>
            </div>

            <%--<input class="form-control" type="password" id="inputPassword" required="" placeholder="Password">--%>
            <asp:Button ID="submit" runat="server" Text="Sign In" onclick="sumbit" class="btn btn-primary btn-block btn-lg btn-signin" style="font-family:Roboto, sans-serif;font-size:16px;font-weight:normal;font-style:normal;" type="submit" />


            <%--<button class="btn btn-primary btn-block btn-lg btn-signin" style="font-family:Roboto, sans-serif;font-size:16px;font-weight:normal;font-style:normal;" type="submit">Sign in</button>--%>

        </form>
        <p class="text-center" style="color:rgb(73,80,87);font-size:11px;">Restricted Area</p>
    </div>
   


    


    <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
    <script type="text/javascript">
        var your_site_key = '6Ld9OhwqAAAAAF8mS-lcYEv1VgXfyfV4ReyJjdzR';
        var renderRecaptcha = function () {
            grecaptcha.render('ReCaptchContainer', {
                'sitekey': '6Ld9OhwqAAAAAF8mS-lcYEv1VgXfyfV4ReyJjdzR',
                'callback': reCaptchaCallback,
                theme: 'light', //light or dark
                type: 'image',// image or audio
                size: 'normal'//normal or compact
            });
        };
        var reCaptchaCallback = function (response) {
            if (response !== '') {
                document.getElementById('lblMessage1').innerHTML = "";
            }
        };
       </script>




    
     <script src="admin_login_assets/js/jquery.min.js"></script>
    <script src="admin_login_assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="admin_login_assets/js/aos.min.js"></script>
    <script src="admin_login_assets/js/bs-init.js"></script>
</body>
</html>
