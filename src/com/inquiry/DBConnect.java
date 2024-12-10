package com.inquiry;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private static String url = "jdbc:mysql://localhost:3306/event";
    private static String user = "root";
    private static String password = "2595400";
    private static Connection con;

    // Private constructor to prevent instantiation from other classes
    private DBConnect() {
    }

    // Public method to provide the single instance of Connection
    public static Connection getConnection() {
        if (con == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                System.out.println("Database Connection is not successful.");
            }
        }
        return con;
    }
}
