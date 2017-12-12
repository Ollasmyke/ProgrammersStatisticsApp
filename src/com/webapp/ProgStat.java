package com.webapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProgStat {

    Connection conn;
    public Connection getConn(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ProgrammersStatistics","root", "");
        } catch (SQLException ex) {
            Logger.getLogger(ProgStat.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProgStat.class.getName()).log(Level.SEVERE, null, ex);
        }

        return conn;

    }
}
