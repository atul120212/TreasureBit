<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Treasure.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>login-design</title>
    <link rel="stylesheet" href="login_assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="login_assets/css/animate.min.css">
    <link rel="stylesheet" href="login_assets/css/-Login-form-Page-BS4--Login-form-Page-BS4.css">
    <link rel="stylesheet" href="login_assets/css/Login-Form-Basic-icons.css">
    <link rel="stylesheet" href="login_assets/css/Video-Parallax-Background-v2-multiple-parallax.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row mh-100vh">
            <div class="col-10 col-sm-8 col-md-6 col-lg-6 offset-1 offset-sm-2 offset-md-3 offset-lg-0 align-self-center d-lg-flex align-items-lg-center align-self-lg-stretch bg-white p-5 rounded rounded-lg-0 my-5 my-lg-0" id="login-block" style="color: rgb(13,14,14);background: url(&quot;login_assets/img/Untitled%20design%20(4).png&quot;), rgb(0,0,0);">
                <div class="m-auto w-lg-75 w-xl-50">
                    <a href="home.aspx">
                    <h2 class="text-info font-weight-light mb-5">&nbsp;<img width="41" height="43" src="login_assets/img/utopia_7520518.png">Treasure Bits</h2>
                        </a>
                    <form runat="server">
                        <div class="form-group" data-bss-hover-animate="pulse"><label class="text-secondary">Email</label>
                            <asp:TextBox ID="email" runat="server" class="form-control" data-bss-hover-animate="pulse" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,15}$" inputmode="email"/></div>
                        <div class="form-group" data-bss-hover-animate="pulse"><label class="text-secondary">Password</label>
                            <asp:TextBox ID="password" runat="server" class="form-control" type="password" data-bss-hover-animate="pulse" required=""/></div>
                        
                        <%--<asp:Button runat="server" OnClick="submit" Text="Log In" class="btn btn-info mt-2" data-bss-hover-animate="jello"/>--%>
                        <asp:Button ID="submit" runat="server" Text="Log In" onclick="sumbit" />
                    </form>
                    <p class="mt-3 mb-0"><a data-bss-hover-animate="pulse" class="text-info small" href="signup.aspx">Haven't Registered yet?</a></p>
                </div>
            </div>
            <div class="col-lg-6 d-flex align-items-end" id="bg-block" style="background: url(&quot;login_assets/img/166862-marvel-art-wallpaper-top-free-marvel-art-background.jpg&quot;) center center / cover;">
                <p class="ml-auto small text-dark mb-2"><em>Signup by&nbsp;</em></p>
            </div>
        </div>
    </div>
    <script src="login_assets/js/jquery.min.js"></script>
    <script src="login_assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="login_assets/js/bs-init.js"></script>
    <script src="login_assets/js/Video-Parallax-Background-v2-multiple-parallax.js"></script>
</body>
</html>
