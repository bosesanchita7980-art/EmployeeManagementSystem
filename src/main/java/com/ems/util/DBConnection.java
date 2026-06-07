package com.ems.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/employee_management";

    private static final String USER = "root"; // Change if needed

    private static final String PASSWORD = "@rpan1234"; // change to your Mysql_Workbench Password

    public static Connection getConnection() {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            return DriverManager.getConnection(
                    URL,
                    USER,
                    PASSWORD);

        } catch (Exception e) {

            e.printStackTrace();

        }

        return null;
    }
}