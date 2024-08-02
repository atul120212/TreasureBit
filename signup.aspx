<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Treasure.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>signup</title>
      <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="assets/js/signup.js"></script>
    
    <style>
       

        @font-face{
            font-family: myfont;
            src:url("fonts/zekton%20rg.otf");
        }
        @font-face{
            font-family: myfont2;
            src:url("fonts/Audiowide-Regular.ttf");
        }

    </style>

</head>
<body>
    <form id="form1" runat="server" >

    <div class="container bootstrap snippet" style="">





    <div class="row">

  		<div class="col-sm-10"><h1 style="font-family:myfont2">SignUp here</h1></div>
    	<%--<div class="col-sm-2">
            <a href="/users" class="pull-right">
                
            <img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"/>

            </a>

    	</div>--%>
    </div>

    <div class="row">
  		<div class="col-sm-3"><!--left col-->

      <div class="text-center">
           
        <%--<img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar"/>--%>
          <asp:Image ID="myimg" runat="server" src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar" />  
        <h6>Upload a different photo...</h6>
          <asp:FileUpload ID="FileUpload1" runat="server" Width="211px" type="file" class="text-center center-block file-upload" />
        <%--<input />--%>
      </div><hr/><br/>

               

          <%--<div class="panel panel-default">
            <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
            <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
          </div>--%>
          
          
          <%--<ul class="list-group">
            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
          </ul> --%>

               
          <%--<div class="panel panel-default">
            <div class="panel-heading">Social Media</div>
            <div class="panel-body">
            	<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
            </div>
          </div>--%>
          





        </div><!--/col-3-->

    	<div class="col-sm-9">
          

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                      
                      <div class="form-group">
                          

                           <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="username"><h4>Username</h4></label>
                               <asp:TextBox ID="username" runat="server" class="form-control" placeholder="username" Type="text"/>
                              <%--<input type="text" class="form-control" name="username" id="username" placeholder="username" title="enter your username."/>--%>
                          </div>
                      </div>




                           <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                               <asp:TextBox runat="server" ID="email" class="form-control" placeholder="you@email.com" TextMode="Email"> </asp:TextBox>
                              <%--<input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email."/>--%>
                          </div>
                      </div>

                          <div class="col-xs-6">
                              <label for="fullname"><h4>Full name</h4></label>
                              <asp:TextBox runat="server" ID="fullname" class="form-control" placeholder="your full name" Type="text"> </asp:TextBox>
                              <%--<input type="text" class="form-control" name="username" id="fullname" placeholder="full name" title="enter your full name."/>--%>
                          </div>
                      </div>

                     
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <asp:TextBox runat="server" ID="phone" class="form-control" placeholder="enter phone no." Type="text"> </asp:TextBox>
                              <%--<input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any."/>--%>
                          </div>
                      </div>
          
                     
                     
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="city"><h4>City</h4></label>
                              
                              <asp:TextBox runat="server" ID="city" class="form-control" placeholder="your city" Type="text"> </asp:TextBox>
                              <%--<input type="text" class="form-control" id="location" placeholder="somewhere" title="enter a City"/>--%>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <asp:TextBox runat="server" ID="password" class="form-control" placeholder="password" TextMode="Password"> </asp:TextBox>
                              <%--<input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password."/>--%>
                          </div>

                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <asp:TextBox runat="server" ID="repassword" class="form-control" placeholder="repassword" TextMode="Password"> </asp:TextBox>
                              <%--<input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2." required=""/>--%>
                          </div>

                      </div>
                <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="occupation"><h4>occupation</h4></label>
                              <asp:TextBox runat="server" ID="occupation" class="form-control" placeholder="your occupation" Type="text"> </asp:TextBox>
                              <%--<input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2." required=""/>--%>
                          </div>

                      </div>

                      <div class="form-group">
                           <div class="col-xs-12">
                                <br/>
                               <asp:Button runat="server" class="btn btn-lg btn-success" OnClick="Register" Text="Submit"/>
                               
                               <asp:Button runat="server" class="btn btn-lg" Text="Clear" />

                               <%--<asp:Button runat="server" class="btn btn-lg btn-success" OnClick="AddBook" Text="Submit"/>
                               <asp:Button runat="server" class="btn btn-lg" OnClick="clear" Text="Clear"/>--%>
                              	<%--<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>--%>
                            </div>
                      </div>

              
              <hr/>
              
             </div>
              
              
              
              
              </div>
               
              <!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div>
    </form>
</body>
</html>






























<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Treasure.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>signup</title>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="assets/js/signup.js"></script>
    </head>
<body>
    <div class="container bootstrap snippet">


        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic">
            </asp:RequiredFieldValidator>






    <div class="row">
  		<div class="col-sm-10"><h1>User name</h1></div>
    	<div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload">
      </div></hr><br>

               
          <%--<div class="panel panel-default">
            <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
            <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
          </div>--%>
          
          
          <%--<ul class="list-group">
            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
          </ul> --%>

               
          <%--<div class="panel panel-default">
            <div class="panel-heading">Social Media</div>
            <div class="panel-body">
            	<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
            </div>
          </div>
          





        </div><!--/col-3-->
    	<div class="col-sm-9">
          

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      
                      <div class="form-group">
                          

                           <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="username"><h4>Username</h4></label>
                              <input type="text" class="form-control" name="username" id="username" placeholder="username" title="enter your username."/>
                          </div>
                      </div>

                           <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                          </div>
                      </div>

                          <div class="col-xs-6">
                              <label for="fullname"><h4>Full name</h4></label>
                              <input type="text" class="form-control" name="username" id="fullname" placeholder="full name" title="enter your full name."/>
                          </div>
                      </div>

                     
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any."/>
                          </div>
                      </div>
          
                     
                     
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="city"><h4>City</h4></label>
                              <input type="text" class="form-control" id="location" placeholder="somewhere" title="enter a City"/>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                          </div>
                      </div>

                      <div class="form-group">
                           <div class="col-xs-12">
                                <br/>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>

              	</form>
              
              <hr/>
              
             </div>
              
              
              
              
              </div>
               
              <!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div>
</body>
</html>--%>
