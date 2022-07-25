package com.model;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.entity.Register;

@Stateless
@TransactionManagement(value = TransactionManagementType.BEAN)
public class RegisterModel implements RegisterRemote{
	public static String ack="";

	@Override
	public void register(Register e) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		
		String user = e.getUsername();
		String password = e.getPassword();
		Register data = em.find(Register.class, user);
		boolean pass = passwordVerification(password);
		boolean name = nameVerification(e.getName());
		if(data == null && pass && name) {
			em.getTransaction().begin();
			em.persist(e);
			em.getTransaction().commit();
			em.close();
			emf.close();
			ack= "Message: You have been registered successfully";
			
		}
		else if(!pass) {
			ack= "Message: Minimum length of password should be eight digit";
		}
		else if(!name) {
			ack= "Message: Give correct name format eg:- Virat Anand";
		}
		
		else {
			ack= "Message: Username already taken";
		}
		
		
	}
	public boolean passwordVerification(String password) {
		if(password.length()<8) {
			return false;
		}
		else {
			return true;
		}
		
	}
	public boolean nameVerification(String name) {
		name = name.replaceAll("\\s", "");
		if(name.matches("[a-zA-Z]+") && name.length()>=3) {
			return true;
		}
		return false;
		
	}

}
