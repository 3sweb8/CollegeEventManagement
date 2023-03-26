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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class InsertRec
 */
@WebServlet("/InsertRec")
public class InsertRec extends HttpServlet {
	String url= "jdbc:mysql://localhost:3306/university";
	String usrname= "root";
	String pass= "";
	String sql3= "insert into std_rec values (?,?);";
	Connection con;
	PreparedStatement st;
	public void insertrec(String uname, String pwd) throws SQLException,ClassNotFoundException
	{
		
		Class.forName("com.mysql.jdbc.Driver");
	con= DriverManager.getConnection(url, usrname, pass);
	st= con.prepareStatement(sql3);
		st.setString(1, uname);
		st.setString(2, pwd);
		int c=st.executeUpdate();
	 
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String uname= request.getParameter("uname");
	String pwd= request.getParameter("pwd");
	HttpSession session= request.getSession();
	PrintWriter out=response.getWriter();
	response.setContentType("text.html");
	try {
	 insertrec(uname, pwd);
		session.setAttribute("username", "admin");
	response.sendRedirect("AdminOpt.jsp");
	}
	catch(Exception s) {
		out.println("<h1>Username Already Exists</h1>");	
		
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
	}

