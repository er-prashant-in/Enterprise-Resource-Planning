package com.admin.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.*;

import com.db.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		try {
			String admid= req.getParameter("admid");
			Integer id2 = Integer.parseInt(admid);
			String admpass=req.getParameter("admpass");
			String query="SELECT * FROM mit.pass where id="+id2+"";
			Connection con = DBConnect.getCon();
			Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            rs.next();
            if(rs.getInt(1)==id2 && rs.getString(2).equals(admpass)&& rs.getInt(3)==1)
            {
            	session.setAttribute("adminObj",admid);            	
            	resp.sendRedirect("admin/index.jsp");
            }else {
            	resp.sendRedirect("admin.jsp");
            }
		} catch (Exception e) {
			System.out.println("Hmmm....");
			resp.sendRedirect("admin.jsp");
			e.printStackTrace();
		}
	}

}
