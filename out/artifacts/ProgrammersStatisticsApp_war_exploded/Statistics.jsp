<%--
  Created by IntelliJ IDEA.
  User: ollas
  Date: 08-Dec-17
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Statistics</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/landing-page.min.css" rel="stylesheet">
    <!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
    <div class="container">
        <a class="navbar-brand" href="index.html">Programmers' Statistics!</a>
        <a class="btn btn-primary" href="login1.jsp">Sign Up</a>
        <a class="btn btn-primary" href="login1.jsp">Sign In</a>

    </div>
    </nav>

<body>
<div>
<form action="statistics" method="post">
    <%--<input type="hidden" value="<%=request.getAttribute("language")%>" name="language">--%>

        Check Language Statistics:
        <select name="language">
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

    <input type="submit" value="Submit">
</form>
</div>
</body>

</html>
