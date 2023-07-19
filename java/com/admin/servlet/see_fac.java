package com.admin.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DBConnect;


@WebServlet("/see_fac")
public class see_fac extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Integer id;
	public static String name;
	public static String dept;
	public static String contact;
	public static String mail;
	public static String achieve;
	public static String date;
	public static String qual;
	public static String sub;
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 File file = new File("E:/Eclipse_Work_Space/MIT2/MIT2/src/main/webapp/sender/me.jpg");
		 file.delete();
		try {
			String facid = request.getParameter("id");
			Integer fac_id = Integer.parseInt(facid);
			System.out.println(fac_id);
			String query="SELECT * FROM mit.admin where id="+fac_id+"";
			Connection con = DBConnect.getCon();
			PreparedStatement ps= con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			rs.next();
			id=rs.getInt(1);
			name=rs.getString(2);
			contact=rs.getString(4);
			mail=rs.getString(5);
            achieve=rs.getString(7);
			sub=rs.getString(9);
			date=rs.getString(10);
			qual=rs.getString(11);
			dept=rs.getString(3);
			Blob blob = rs.getBlob(6);
			System.out.println(name);
            InputStream inputStream = blob.getBinaryStream();
            String fileName ="me";
            Files.copy(inputStream, Paths.get("E:/Eclipse_Work_Space/MIT2/MIT2/src/main/webapp/sender/me.jpg"));
            response.sendRedirect("admin/see_data.jsp");
           
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Integer getId() {
		Integer i = see_fac.id;
		return i;
	}
	public String getName() {
		String nam=see_fac.name;
		return nam;
	}
	public String getDept() {
		String dep=see_fac.dept;
		return dep;
	}
	public String getContact() {
		String con=see_fac.contact;
		return con;
	}
	public String getMail() {
		String mai=see_fac.mail;
		return mai;
	}
	public String getAchieve() {
		String ach=see_fac.achieve;
		return ach;
	}
	public String getDate() {
		String da=see_fac.date;
		return da;
	}
	public String getQual() {
		String qua=see_fac.qual;
		return qua;
	}
	public String getSub() {
		String su=see_fac.sub;
		return su;
	}
	

}
