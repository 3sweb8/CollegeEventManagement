package com.Student;

import java.io.IOException;

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
	@WebServlet("/StudReg")
	public class StuReg extends HttpServlet {
		String url= "jdbc:mysql://localhost:3306/university";
		String usrname= "root";
		String pass= "";
		String sql3= "insert into std_rec values (?,?);";
		public void insertrec(String uname, String pwd) throws SQLException,ClassNotFoundException
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection(url, usrname, pass);
			PreparedStatement st= con.prepareStatement(sql3);
			st.setString(1, uname);
			st.setString(2, pwd);
			int c=st.executeUpdate();
		 
			}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("uname");
		String pwd= request.getParameter("pwd");
		HttpSession session= request.getSession();
		try {
		 insertrec(uname, pwd);
			session.setAttribute("username", uname);
		response.sendRedirect("ShowEventDetails.jsp");
		}
		catch(Exception s) {
			System.out.println(s);
			
			session.setAttribute("message", "Username already exists");
			
			response.sendRedirect("StuRegister.jsp");
		}
		}
		}



