package com.model;
import java.util.ArrayList;
import java.util.List;


import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import com.controller.LoginData;
import com.entity.User;

@Stateless
@TransactionManagement(value = TransactionManagementType.BEAN)
public class UserModel implements UserRemote{
	public static String ack="";

	@Override
	public void insert(User u) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(u);
		em.getTransaction().commit();
		em.close();
		emf.close();
		
	}

	@Override
	public void update(String username, double height, double weight) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		User user = em.find(User.class, username);
		user.setHeight(height);
		user.setWeight(weight);
		double b = 0.0;
		height = height*0.3048;
		b = weight/(height*height);
		String bm = String.format("%.2f", b);
		double bmi = Double.parseDouble(bm);
		user.setBmi(bmi);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	@Override
	public List<String> view() {
		String us = LoginData.user;
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		User user = em.find(User.class, us);
		List<String> l = new ArrayList<String>();
		if(user == null) {
			l.add(0,"Your profile is not updated");
			l.add(1," ");
			l.add(2," ");
			l.add(3," ");
			l.add(4," ");
			l.add(5," ");
			l.add(6," ");
			
			em.getTransaction().commit();
			em.close();
			emf.close();
			return l;
		}
		else {
			
			l.add(0,user.getName());
			l.add(1,String.valueOf(user.getAge()));
			l.add(2,user.getGender());
			l.add(3,user.getMobile());
			l.add(4,String.valueOf(user.getHeight()));
			l.add(5,String.valueOf(user.getWeight()));
			l.add(6,String.valueOf(user.getBmi()));
			em.getTransaction().commit();
			em.close();
			emf.close();
			
			return l;
			
		}
		
		
	}

}
