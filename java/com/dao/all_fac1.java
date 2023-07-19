package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;

import com.db.DBConnect;

public class all_fac1 {
	
	public LinkedList<fac_list> all_fac()
	{
		LinkedList<fac_list> list =new LinkedList<fac_list>();
		try {
			String query="SELECT * FROM mit.admin";
			Connection con = DBConnect.getCon();
			PreparedStatement ps= con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				list.add(new fac_list(rs.getInt(1), rs.getString(2), rs.getString(4)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}

}
