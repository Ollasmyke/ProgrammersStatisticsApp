<%@page import="java.sql.*" %>
<%@page import="java.util.Date " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <div class="form">
      
      <ul class="tab-group">
        <!--<li class="tab active"><a href="#signup">Sign Up</a></li>-->
        <li class="tab active"><a href="#login">Log In</a></li>
      </ul>
      
      <!--<div class="tab-content">-->

        
        <div id="login">
          <h1>Welcome Back!</h1>

          <form action="response" method="post">

            <div class="field-wrap">
            <label>
              Username <span class="req">*</span>
            </label>
            <input type="text" required autocomplete="off" name="username"/>
          </div>

          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>

          <p class="forgot"><a href="#">Forgot Password?</a></p>

          <button type="submit" value="Login" class="button button-block"/>Log In</button>

          </form>

        </div>
        
      <!--</div>&lt;!&ndash; tab-content &ndash;&gt;-->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>
