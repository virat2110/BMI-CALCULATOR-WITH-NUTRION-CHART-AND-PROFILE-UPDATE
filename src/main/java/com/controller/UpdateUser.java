package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserRemote;


@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		@EJB(lookup= "java:global/ep-learnathon/UserModel!com.model.UserRemote")
		UserRemote ur;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		double height = Double.parseDouble(request.getParameter("t4"));
		double weight = Double.parseDouble(request.getParameter("t5"));
		String user = LoginData.user;
		ur.update(user, height, weight);
		response.sendRedirect("profile.jsp");
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
