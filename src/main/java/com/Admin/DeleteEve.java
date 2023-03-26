package com.Admin;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/DeleteEve")
public class DeleteEve extends HttpServlet {
	String url= "jdbc:mysql://localhost:3306/university";
	String usrname= "root";
	String pass= "";
	String sql7= "delete from event_details where name= ?;";
	String sql8= "select * from event_details;";
	PreparedStatement st1;
	Connection con;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ename= request.getParameter("ename");
		PrintWriter out= response.getWriter();
	try {
		Class.forName("com.mysql.jdbc.Driver");
	con= DriverManager.getConnection(url, usrname, pass);
		 st1= con.prepareStatement(sql7);
		st1.setString(1, ename);
		st1.executeUpdate();
		Statement st2= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		ResultSet rs= st2.executeQuery(sql8);
		if(rs.next()) {
			rs.beforeFirst();
			out.print("<body style=background-color: #fdf1ec>");
			out.print("<table width=50% border=1 style=border-collapse:collapse>");  
		out.print("<caption>Upcoming Events</caption>");
		ResultSetMetaData col= rs.getMetaData();
		int t= col.getColumnCount();
		out.print("</tr>"); 
		for(int i=1; i<=t; ++i)
		{
			out.println("<th>"+col.getColumnName(i)+"</th>");
		}
		while(rs.next())  
		{  
		out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getDate(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getInt(4)+"</td><td>"+rs.getString(5)+"</td></tr>");  
		}
		out.print("</table>"); 
		}
		else
			out.print("<h1>No Upcomming Events</h1>");
		out.print("<a  href=AdminOpt.jsp>Back</a>");
		
	}catch (Exception e) {
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
