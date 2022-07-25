package com.model;


import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import com.entity.Login;

@Stateless
@TransactionManagement(value = TransactionManagementType.BEAN)
public class LoginModel implements LoginRemote{

	@Override
	public boolean login(String user, String password, Login e) {
		
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Login data = em.find(Login.class, user);
		if(data == null) {
			return false;
		}
		
		String pass = data.getPassword();
		if(pass.equals(e.getPassword())) {
			
			return true;
			
		}
		else {
			return false;
		}
			
	}

	

}
