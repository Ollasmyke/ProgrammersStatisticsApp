<%--
  Created by IntelliJ IDEA.
  User: ollas
  Date: 12/7/2017
  Time: 1:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Login!</title>
</head>
<body>
<h1> Load</h1>

<form action="response" method="post">
    Enter username :<input type="text" name="username"> <br>
    Enter password :<input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>


</body>
</html>
