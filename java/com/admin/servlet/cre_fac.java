package com.admin.servlet;

import java.sql.Connection;
import java.sql.Statement;
import com.db.DBConnect;
public class cre_fac {
    cre_fac(Integer n) throws Exception{
        Integer c = n;
        Connection con = DBConnect.getCon();
        String query="CREATE TABLE mit."+c+"(id VARCHAR(200) NOT NULL,"+"name VARCHAR(200) NOT NULL,"+"topic VARCHAR(200) NOT NULL,"+"type VARCHAR(200) NOT NULL,"+"start_date VARCHAR(200) NOT NULL,"+"end_date VARCHAR(200) NOT NULL,"+"affiliated VARCHAR(200) NOT NULL,"+"photo MEDIUMBLOB NOT NULL,"+"id2 INT NOT NULL,"+"PRIMARY KEY (id2))";
        Statement st = con.createStatement();
        int count = st.executeUpdate(query);
        System.out.println(count+" Table created");
    }
}
