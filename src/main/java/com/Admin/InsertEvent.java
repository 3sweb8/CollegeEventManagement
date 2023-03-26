package com.Admin;

import java.io.FileOutputStream;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class InsertEvent
 */
@WebServlet("/InsertEvent")
@MultipartConfig
public class InsertEvent extends HttpServlet {
	String url= "jdbc:mysql://localhost:3306/university";
	String usrname= "root";
	String pass= "";
	String sql3= "insert into event_details values (?, ?, ?, ?, ?,?);";
	Connection con;
	PreparedStatement st;
	public void inserteve(String ename, String dt, String venue, String fees, String abt,String imagefilename)
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");
		 con= DriverManager.getConnection(url, usrname, pass);
		 st= con.prepareStatement(sql3);
		st.setString(1, ename);
		st.setString(2, dt);
		st.setString(3, venue);
		st.setString(4, fees);
		st.setString(5, abt);
		st.setString(6, imagefilename);
		st.executeUpdate();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		finally {
			try {
				con.close();
				st.close();
			}
			catch(Exception e) {
				System.out.print(e);
			}
		}
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ename= request.getParameter("ename");
		String dt= request.getParameter("dt");
		String venue= request.getParameter("venue");
		String fees= request.getParameter("fees");
		String abt= request.getParameter("abt");
		Part p=request.getPart("filename");
		String imagefilename=p.getSubmittedFileName();
		String uploadPath ="E:\\ServletProjects2\\EventManagementProject\\src\\main\\webapp\\images\\"+imagefilename;
		FileOutputStream f1=new FileOutputStream(uploadPath);
		InputStream in=p.getInputStream();
		byte[] b=new byte[in.available()];
		in.read(b);
		f1.write(b);
		in.close();
		f1.close();
		inserteve(ename, dt, venue, fees, abt,imagefilename);
		response.sendRedirect("AdminOpt.jsp");

	}

}
