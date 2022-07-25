package com.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BmiModel;


@WebServlet("/BmiData")
public class BmiData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
 
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");	
		PrintWriter pw = response.getWriter();
		
		
		
		boolean t2 = LoginData.redir;
		if(t2) {
		try {
			BmiModel bm = new BmiModel();
			double weight = Double.parseDouble(request.getParameter("t2"));
			double height = Double.parseDouble(request.getParameter("t3"));
			
			bm.bmiCheck(weight, height);
			String res = BmiModel.res;
			if(res.contains("Underweight")) {
				response.sendRedirect(request.getContextPath() + "/underWeight.jsp");
			}
			else if(res.contains("Healthy")) {
				response.sendRedirect(request.getContextPath() + "/healthy.jsp");
			}
			else if(res.contains("Overweight")) {
				response.sendRedirect(request.getContextPath() + "/overWeight.jsp");
			}
			else {
				response.sendRedirect(request.getContextPath() + "/obesity.jsp");
			}
		}
		catch(Exception e) {
			pw.print(e.getMessage());
			
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("bmi.jsp");
		rd.include(request, response);
		}
		else {
			response.sendRedirect(request.getContextPath() + "/login.jsp");
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
