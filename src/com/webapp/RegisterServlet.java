package com.webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String username = request.getParameter("username");
            String password = request.getParameter("password");


//            request.setAttribute("loginname", request.getParameter("loginname"));
//            request.setAttribute("username", request.getParameter("username"));

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/programmersapp", "root", "");

                PreparedStatement ps = conn.prepareStatement("insert into users values(?,?,?,?,?,?)");

                ps.setString(1, firstName);
                ps.setString(2, lastName);
                ps.setString(3, username);
                ps.setString(4, password);
                ps.setString(5, null);
                ps.setString(6, null);

                PreparedStatement ps2 = conn.prepareStatement("select username from users where username=?");
                ps2.setString(1, username);

                ResultSet rs = ps2.executeQuery();
                if(rs.next()){
                    out.println("abc");
                }else{
                int i = ps.executeUpdate();
                if (i > 0)
                   out.print("You are successfully registered...");}

            } catch (Exception e2) {
                System.out.println(e2);
            }

            out.close();
        }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

