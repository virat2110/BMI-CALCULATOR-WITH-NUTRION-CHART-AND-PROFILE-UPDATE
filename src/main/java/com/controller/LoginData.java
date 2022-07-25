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
import com.entity.Login;
import com.model.LoginRemote;
import com.model.PasswordModel;
import com.model.PasswordRemote;




@WebServlet("/LoginData")
public class LoginData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static boolean redir;
	public static String user="";
	
	public static void setRedir(boolean read) {
		LoginData.redir = read;
	}
	
	
	
	
	   @EJB(lookup ="java:global/ep-learnathon/LoginModel!com.model.LoginRemote")
	   LoginRemote lr;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");	
		PrintWriter pw = response.getWriter();
		
		try {
			Login r = new Login();
			String username = request.getParameter("t1");
			String password = request.getParameter("t2");
			PasswordModel.password = password;
			int key = Integer.parseInt(request.getParameter("t3"));
			PasswordModel.key = key;
			
			PasswordRemote pm = new PasswordModel();
			String dePassword = pm.encrypt();
			
			r.setUsername(username);
			r.setPassword(dePassword);
			
			
			redir =lr.login(username, dePassword, r);
			if(redir && key>0) {
				user = username;
				response.sendRedirect(request.getContextPath() + "/index1.jsp");
			}
			else {
				pw.print("<h1>Login unsuccessfull</h1>");
			}
			
			
		}
		catch(Exception e) {
			pw.print(e.getMessage());
			
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.include(request, response);
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
