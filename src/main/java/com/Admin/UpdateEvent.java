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
 * Servlet implementation class UpdateEvent
 */
@WebServlet("/UpdateEvent")
@MultipartConfig
public class UpdateEvent extends HttpServlet {
	String url= "jdbc:mysql://localhost:3306/university";
	String usrname= "root";
	String pass= "";
	String sql5= "update event_details set date= ?, venue= ?, fees= ?, about= ?,filename=? where LOWER(name)= ?;";
	Connection con;
	PreparedStatement st;
	public void updateeve(String ename, String dt, String venue, String fees, String abt,String imagefilename)
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, usrname, pass);
		st= con.prepareStatement(sql5);
		st.setString(6, ename);
		st.setString(1, dt);
		st.setString(2, venue);
		st.setString(3, fees);
		st.setString(4, abt);
		st.setString(5, imagefilename);
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
		updateeve(ename, dt, venue, fees, abt,imagefilename);
		response.sendRedirect("AdminOpt.jsp");

	}

}
