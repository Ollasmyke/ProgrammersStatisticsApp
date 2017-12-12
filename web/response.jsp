<%--
  Created by IntelliJ IDEA.
  User: ollas
  Date: 12/7/2017
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Programmers Statistics App</title>
</head>
<body>
<li><p><b>Programmer's Name:</b>
    <%= request.getParameter("name")%>
</p></li>
<li><p><b>Username:</b>
    <%= request.getParameter("username")%>
</p></li>
<li><p><b>Preferred Language 1:</b>
    <%= request.getParameter("field_one")%>
</p></li>
<li><p><b>Preferred Language 2:</b>
    <%= request.getParameter("field_two")%>
</p></li>
</body>
</html>

