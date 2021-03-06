<%@page import="java.sql.*" %>
<%@page import="java.util.Date " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


      <link rel="stylesheet" href="css/style.css">


</head>
// Test

<body>
  <div class="form">

      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <!--<li class="tab"><a href="#login">Log In</a></li>-->
      </ul>
      <!--<div class="tab-content">-->
        <div id="signup">
      <h1>Sign Up for Free</h1>

      <form action="register" method="post">

          <div class="top-row">
              <div class="field-wrap">
                  <label>
                      First Name<span class="req">*</span>
                  </label>
                  <input type="text" name="first_name" required autocomplete="off" />
              </div>

              <div class="field-wrap">
                  <label>
                      Last Name<span class="req">*</span>
                  </label>
                  <input type="text" name="last_name" required autocomplete="off"/>
              </div>
          </div>

          <div class="field-wrap">
              <label>
                  Username <span class="req">*</span>
              </label>
              <input type="text" name="username" required autocomplete="off"/>
          </div>

          <div class="field-wrap">
              <label>
                  Password<span class="req">*</span>
              </label>
              <input type="password" name="password" required autocomplete="off"/>
          </div>

          <button type="submit" class="button button-block"/>Get Started</button>

      </form>

  </div>
        
      <!--</div>&lt;!&ndash; tab-content &ndash;&gt;-->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>
