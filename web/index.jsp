<%@page import="java.sql.*" %>
<%@page import="java.util.Date " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Programmer's Statistics</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
      <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/style.css">

    <!-- Custom styles for this template -->
    <link href="css/landing-page.min.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-light bg-light static-top">
      <div class="container">
        <a class="navbar-brand" href="index.jsp">Programmers' Statistics!</a>
            <a class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Sign In</a>
      </div>
    </nav>

    <!-- Masthead -->
    <header class="masthead text-white text-center">

      <div class="overlay"></div>
         <div class="row">
          <div class="col-xl-9 mx-auto">
            <h1 class="mb-5">Programmers' Statistics App!</h1>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <form action="profileServlet" method="post">
              <div class="form-row">
                <div class="col-12 col-md-9">
                  <%--<input type="email" class="form-control form-control-lg" placeholder="Enter your first Preferred Programming Language ">--%>
                    Preferred Programming Language 1:
                    <select name="language_one">
                        <option>Java</option>
                        <option>Fortran</option>
                        <option>Python</option>
                        <option>C</option>
                        <option>C++</option>
                        <option>C#</option>
                        <option>PHP</option>
                        <option>JavaScript</option>
                        <option>Swift</option>
                        <option>Ruby</option>
                        <option>Pascal</option>
                        <option>MATLAB</option>
                        <option>Perl</option>
                    </select>
                </div> <br>
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                      Preferred Programming Language 2:
                      <select name="language_one">
                          <option>Java</option>
                          <option>Fortran</option>
                          <option>Python</option>
                          <option>C</option>
                          <option>C++</option>
                          <option>C#</option>
                          <option>PHP</option>
                          <option>JavaScript</option>
                          <option>Swift</option>
                          <option>Ruby</option>
                          <option>Pascal</option>
                          <option>MATLAB</option>0
                          <option>Perl</option>
                      </select>
                  </div> <br /> <br>
                <div class="col-6 col-md-9">
                    <button type="button" class="btn btn-block btn-lg btn-primary" data-toggle="modal" data-target="#exampleModal">Add Yours</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="col-sm-3">
            <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between align-items-center">Java <span class="badge badge-primary badge-pill">14</span></li>
                <li class="list-group-item d-flex justify-content-between align-items-center"> Fortran </li>
                <li class="list-group-item">Python</li>
                <li class="list-group-item">C</li>
                <li class="list-group-item">C++</li>
                <li class="list-group-item">C#</li>
                <li class="list-group-item">PHP</li>
                <li class="list-group-item">JavaScript</li>
                <li class="list-group-item">Swift</li>
                <li class="list-group-item">Ruby</li>
                <li class="list-group-item">Pascal</li>
                <li class="list-group-item">MATLAB</li>
                <li class="list-group-item">Perl</li>
            </ul>
        </div>
      </div>
    </header>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">

                    <div class="form">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div>
                        <ul class="tab-group">
                            <li class="tab active"><a href="#signup">Sign Up</a></li>
                            <li class="tab"><a href="#login">Log In</a></li>
                        </ul>
                        </div>
                        <div class="tab-content">
                            <div id="signup">
                                <h1>Register</h1>
                                <form action="/" method="post">

                                    <div class="top-row">
                                        <div class="field-wrap">
                                            <label> First Name <span class="req">*</span> </label>
                                            <input type="text" required autocomplete="off" />
                                        </div>

                                        <div class="field-wrap">
                                            <label> Last Name <span class="req">* </span> </label>
                                            <input type="text" required autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="field-wrap">
                                        <label> Username <span class="req">* </span> </label>
                                        <input type="text" required autocomplete="off" />
                                    </div>
                                    <div class="field-wrap">
                                        <label> Set A Password <span class="req">* </span> </label>
                                        <input type="password"required autocomplete="off" />
                                    </div>

                                    <button type="submit" class="button button-block"/>Get Started</button>
                                </form>
                            </div>

                            <div id="login">
                                <h1>Welcome Back!</h1>
                                <form action="/" method="post">
                                    <div class="field-wrap">
                                        <label> Email Address <span class="req">* </span> </label>
                                        <input type="email"required autocomplete="off"/>
                                    </div>
                                    <div class="field-wrap">
                                        <label> Password <span class="req"> * </span> </label>
                                        <input type="password"required autocomplete="off"/>
                                    </div>

                                    <button class="button button-block"/>Log In</button>
                                </form>
                            </div>

                        </div><!-- tab-content -->

                    </div> <!-- /form -->
                        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                        <script  src="js/index.js"></script>
                </div>
            </div>

        </div>
    </div>

    <!-- Icons Grid -->
    <section class="features-icons bg-light text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                <a href="register.jsp" style="text-decoration: none">
              <div class="features-icons-icon d-flex">
                <i class="icon-screen-desktop m-auto text-primary"></i>
              </div>
              <h3>Register Now</h3>
                </a>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                <a href="login.jsp" style="text-decoration: none">
              <div class="features-icons-icon d-flex">
                <i class="icon-layers m-auto text-primary"></i>
              </div>
              <h3>Login</h3>
                </a>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                <a href="Statistics.jsp" style="text-decoration: none">
              <div class="features-icons-icon d-flex">
                <i class="icon-check m-auto text-primary"></i>
              </div>
              <h3>Admin</h3>
                </a>
            </div>
          </div>
        </div>
      </div>
    </section>


    <!-- Footer -->
    <!--<footer class="footer bg-light">-->
      <div class="container">
        <div class="row">
          <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
            <p class="text-muted small mb-4 mb-lg-0">&copy; Programmers' Statistics, 2017. All Rights Reserved.</p>
          </div>
        </div>
      </div>
    <!--</footer>-->

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

  </body>

</html>
