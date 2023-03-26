package com.Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChngPass
 */
@WebServlet("/ChngPass")
public class ChngPass extends HttpServlet {
	String url= "jdbc:mysql://localhost:3306/university";
	String usrname= "root";
	String pass= "";
	String sql4= "update std_rec set pwd=? where uname=?;";
	Connection con;
	PreparedStatement st;
	public int updaterec(String uname, String pwd)throws SQLException
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");
		 con= DriverManager.getConnection(url, usrname, pass);
		 st= con.prepareStatement(sql4);
		st.setString(2, uname);
		st.setString(1, pwd);
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return(st.executeUpdate());
		
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();

	String uname= request.getParameter("uname");
	String pwd= request.getParameter("pwd");
	try {
	if(updaterec(uname, pwd)!=0) {
	response.sendRedirect("StuLogin.jsp");
	}
	else
		out.print("<h1>Username is invalid</h1>");
	}catch(Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
