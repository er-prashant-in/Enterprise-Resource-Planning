package com.db;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
private static  Connection con;

public static Connection getCon() {
	
	if (con != null)
        return con;
    else {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mit?" + "user=root&password=@Prashant@789");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
}
