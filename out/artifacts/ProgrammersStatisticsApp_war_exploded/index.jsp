<%--
  Created by IntelliJ IDEA.
  User: ollas
  Date: 12/7/2017
  Time: 8:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>JSP Page</title>
</head>
<body>
<h1> Load</h1>
<form name="user" action="response" method="POST">
    <table border="0">
        <thead>
        <tr>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="" size="20" /></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="text" name="password" value="" size="20" /></td>
        </tr>
        </tbody>
    </table>
    <input type="reset" value="Clear" name="clear" />
    <input type="submit" value="Submit" name="submit" />

    <div>
        Language: <select name="language">
        <option>Hindi</option>
        <option>English</option>
        <option>French</option>
    </select>
    </div><br/>
</form>
</body>
</html>
