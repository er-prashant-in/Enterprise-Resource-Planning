package com.admin.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;

import com.db.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/new_fac")
public class new_fac extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		String i="0";
		try {
			String facid = req.getParameter("fac_id");
			Integer fac_id = Integer.parseInt(facid);
			String fac_name = req.getParameter("fac_name");
			String fac_mob = req.getParameter("fac_mob");
			String fac_mail = req.getParameter("fac_mail");
			String fac_join = req.getParameter("fac_join");
			String fac_qual = req.getParameter("fac_qual");
			String fac_dep = req.getParameter("fac_dep");
			String fac_sub = req.getParameter("fac_sub");
			String fac_pass = req.getParameter("fac_pass");
			Part file = req.getPart("photo");
			String img_nam = file.getSubmittedFileName();
			String uploadPath = "E:/Eclipse_Work_Space/MIT2/MIT2/src/main/webapp/receiver/" + img_nam;
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			Connection con = DBConnect.getCon();
			String str = "insert into mit.admin(id,name,department,contact,email,photo,achievement,pass,subject,join_date,qual) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(str);
			InputStream is1 = new FileInputStream(new File(uploadPath));
			ps.setInt(1,fac_id);
			ps.setString(2, fac_name);
			ps.setString(3, fac_dep);
			ps.setString(4, fac_mob);
			ps.setString(5, fac_mail);
			ps.setBlob(6,is1);
			ps.setString(7, i);
			ps.setString(8, fac_pass);
			ps.setString(9, fac_sub);
			ps.setString(10, fac_join);
			ps.setString(11, fac_qual);
			new cre_fac(fac_id);
			Integer n=0;
			String query1 = "insert into mit.pass(id,pas,status) values('"+fac_id+"','"+fac_pass+"','"+n+"')";
            Statement st = con.createStatement();
            st.executeUpdate(query1);
			ps.executeUpdate();
			File f= new File(uploadPath);	
			f.delete();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
