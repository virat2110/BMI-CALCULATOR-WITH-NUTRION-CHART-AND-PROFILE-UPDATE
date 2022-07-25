package com.model;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import com.entity.Healthy;
import com.entity.Obesity;
import com.entity.OverWeight;
import com.entity.UnderWeight;

@Stateless
public class NutritionModel implements NutritionRemote{

	
	@Override
	public List<Healthy> detailsHealthy() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query qry = em.createQuery("select e from Healthy e");
		@SuppressWarnings("unchecked")
		List<Healthy> L = qry.getResultList();
		em.getTransaction().commit();
		em.close();
		emf.close();
		return L;
	}

	@Override
	public List<Obesity> detailsObesity() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query qry = em.createQuery("select e from Obesity e");
		@SuppressWarnings("unchecked")
		List<Obesity> L = qry.getResultList();
		em.getTransaction().commit();
		em.close();
		emf.close();
		return L;
	}

	@Override
	public List<UnderWeight> detailsunderWeight() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query qry = em.createQuery("select e from UnderWeight e");
		@SuppressWarnings("unchecked")
		List<UnderWeight> L = qry.getResultList();
		em.getTransaction().commit();
		em.close();
		emf.close();
		return L;
	}

	@Override
	public List<OverWeight> detailsoverWeight() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query qry = em.createQuery("select e from OverWeight e");
		@SuppressWarnings("unchecked")
		List<OverWeight> L = qry.getResultList();
		em.getTransaction().commit();
		em.close();
		emf.close();
		return L;
	}
	
	

	

}
