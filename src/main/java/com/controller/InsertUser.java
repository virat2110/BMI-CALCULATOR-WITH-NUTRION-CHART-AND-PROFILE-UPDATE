package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Register;
import com.entity.User;
import com.model.UserModel;
import com.model.UserRemote;

@WebServlet("/InsertUser")
public class InsertUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	   @EJB(lookup= "java:global/ep-learnathon/UserModel!com.model.UserRemote")
	   UserRemote ur;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");	
		PrintWriter pw = response.getWriter();
		try {
			String us = LoginData.user;
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
			EntityManager em = emf.createEntityManager();
			em.getTransaction().begin();
			Register r = em.find(Register.class, us);
			User updatedUser = em.find(User.class, us);
			if(updatedUser!=null) {
				UserModel.ack = "Message: Your profile is already updated";
				em.close();
				emf.close();
			}
			else {
				em.close();
				emf.close();
				User u = new User();
				u.setUsername(r.getUsername());
				u.setName(r.getName());
				u.setMobile(request.getParameter("t1"));
				u.setAge(Integer.parseInt(request.getParameter("t2")));
				u.setGender(request.getParameter("t3"));
				double height = Double.parseDouble(request.getParameter("t4"));
				u.setHeight(height);
				double weight = Double.parseDouble(request.getParameter("t5"));
				u.setWeight(weight);
				double b = 0.0;
				height = height*0.3048;
				b = weight/(height*height);
				String bm = String.format("%.2f", b);
				double bmi = Double.parseDouble(bm);
				u.setBmi(bmi);
				
				ur.insert(u);
				UserModel.ack = "Message: Your profile is updated";
			}
			
			
			
			
		} catch (Exception e) {
			pw.print(e.getMessage());
		}
		RequestDispatcher rd = request.getRequestDispatcher("insertUser.jsp");
		rd.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
