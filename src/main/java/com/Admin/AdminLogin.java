package com.Admin;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("uname");
		String pwd= request.getParameter("pwd");
		HttpSession session= request.getSession();
		if(uname.equals("admin")&&pwd.equals("admin"))
		{
			
			session.setAttribute("username", uname);
			response.sendRedirect("AdminOpt.jsp");
		}
		else
		{
			session.setAttribute("message","ADMIN NOT FOUND");
			response.sendRedirect("AdminLogin.jsp");
		}
	}

}
