package com.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.entity.Register;
import com.model.PasswordModel;
import com.model.PasswordRemote;
import com.model.RegisterModel;
import com.model.RegisterRemote;


@WebServlet("/RegisterData")
public class RegisterData extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   @EJB(lookup ="java:global/ep-learnathon/RegisterModel!com.model.RegisterRemote")
   RegisterRemote rr;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");	
		PrintWriter pw = response.getWriter();
		
		try {
			Register r = new Register();
			PasswordModel.password = request.getParameter("t4");
			PasswordModel.key = Integer.parseInt(request.getParameter("t6"));
			String username = request.getParameter("t1");
			String name = request.getParameter("t2");
			String email = request.getParameter("t3");
			String rePassword = request.getParameter("t5");
			String password = request.getParameter("t4");
			r.setUsername(username);
			r.setName(name);
			r.setEmail(email);
			PasswordRemote pm = new PasswordModel();
			r.setPassword(pm.encrypt());
			if(!password.equals(rePassword)) {
				RegisterModel.ack = "Message: Retype password";
			}
			else
			
			
			rr.register(r);
			
			
		}
		catch(Exception e) {
			pw.print(e.getMessage());
			
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
		rd.include(request, response);
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
