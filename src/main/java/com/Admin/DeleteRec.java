package com.Admin;

import java.io.IOException;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteRec
 */
@WebServlet("/DeleteRec")
public class DeleteRec extends HttpServlet {
	String url= "jdbc:mysql://localhost:3306/university";
	String usrname= "root";
	String pass= "";
	String sql7= "delete from std_rec where uname= ?;";
	Connection con;
	PreparedStatement st1;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String uname= (String)session.getAttribute("username");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection(url, usrname, pass);
			 st1= con.prepareStatement(sql7);
			st1.setString(1, uname);
			st1.executeUpdate();
			
			session.setAttribute("username","" );
			response.sendRedirect("Main.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
				st1.close();
			}
			catch(Exception e) {
				System.out.print(e);
			}
		}
	}

}
