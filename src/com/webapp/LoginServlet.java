package com.webapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username=request.getParameter("username"); // USERNAME from the login form
        String password=request.getParameter("password"); // password from login form

        // Connect to mysql and verify username password

        try {
            Class.forName(Constants.DB_Class);
            Connection conn = DriverManager.getConnection(
                    Constants.DB_URL, Constants.DB_User, Constants.DB_Pass);

            PreparedStatement ps = conn.prepareStatement(
                    "select username,password from users where username=? and password=?"); // user_name
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                response.sendRedirect("profile.jsp");
                return;
            }
//            response.sendRedirect("error.html");
            String ErrMssg = "Incorrect Username/Password";
            RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
            rd.forward(request, response);
            return;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        // processRequest(request, response);
        PrintWriter out = response.getWriter();
        out.print("username" + request.getParameter("username"));
        request.setAttribute("username", request.getParameter("username"));

        request.getRequestDispatcher("/profile.jsp").forward(request, response);
    }
}
