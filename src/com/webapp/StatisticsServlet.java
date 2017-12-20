package com.webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "StatisticsServlet")
public class StatisticsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String Language = request.getParameter("language");
//        out.println(Language);

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/programmersapp", "root", "");

            PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM users WHERE language_one = ?");

            ps.setString(1, Language);

            ResultSet rs = ps.executeQuery();
//            out.println(ps);
            rs.next();
             int i = rs.getInt(1);
            out.println("Number of Programmers that prefer " + Language + " is " + i);


        } catch (Exception e2) {
            System.out.println(e2);
        }

        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
