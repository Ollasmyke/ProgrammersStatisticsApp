<%--
  Created by IntelliJ IDEA.
  User: ollas
  Date: 12/7/2017
  Time: 1:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> ${username} </title>
</head>
<body>
Welcome, ${username}

<form action="profileServlet" method="post">
    <input type="hidden" value="<%=request.getAttribute("username")%>" name="username">
    <div>
        Preferred Language One:
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
    </div>
    <div>
            Preferred Language Two:
            <select name="language_two">
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

    </div>
</form>

</div><br/>
</body>
</html>
