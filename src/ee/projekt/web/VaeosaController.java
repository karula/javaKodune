package ee.projekt.web;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import ee.projekt.entities.Piiripunkt;
import ee.projekt.entities.Vaeosa;
import ee.projekt.entities.Vahtkond;



@Controller
public class VaeosaController {

	
	@RequestMapping(value="/vaeosa", method=RequestMethod.GET)
	public String showVaeosas( Model model) {
	

		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("projekt");
		EntityManager em = emf.createEntityManager();

		ArrayList<Vaeosa> vaeosalist = (ArrayList<Vaeosa>) selectAllVaeosas();
		
	
		
		model.addAttribute("vlist",vaeosalist);
		
		return "showvaeosas";
	}
	
	private ArrayList<Vaeosa> selectAllVaeosas() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("projekt");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();
		
		ArrayList<Vaeosa> vaeosa = (ArrayList<Vaeosa>) em.createQuery("SELECT p FROM Vaeosa p").getResultList();
		
		em.getTransaction().commit();
		
		return vaeosa;
	}
	
	
	
	@RequestMapping(value="/addvaeosa", method=RequestMethod.GET)
	public String addVaeosa( Model model) {
		
		
		
		return "addvaeosa";
	}
	
	
	
	
	@RequestMapping(value="/addvaeosa", method=RequestMethod.POST)
	public String addVaeosa(@ModelAttribute @Valid Vaeosa vaeosa, Model model, 
			HttpServletRequest request) {
		
		
		
		
		insertVaeosa(vaeosa);
		
		
		return "redirect:/vaeosa";
	}
	
	
	private void insertVaeosa(Vaeosa vaeosa) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("projekt");
		EntityManager em = emf.createEntityManager();
		try{
		
		em.getTransaction().begin();
		
		em.persist(vaeosa);
		em.getTransaction().commit();
		}
		finally{
			em.close();
			emf.close();
		}
		
	}
	
	
	@RequestMapping(value="/vaeosa", params = "id", method=RequestMethod.GET)
	public String openVaeosa(@RequestParam
			int id, Model model) {
		

		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("projekt");
		EntityManager em = emf.createEntityManager();
		
		
		try{
		Vaeosa vaeosa = em.find(Vaeosa.class, id);	
		model.addAttribute("vaeosaModel", vaeosa);
		}finally
		{
		em.close();
		emf.close();
		}
		
		
		return "vaeosa";
	}
	
	
	@RequestMapping(value="/vaeosa", method=RequestMethod.POST)
	public String guardForm(@ModelAttribute @Valid Vaeosa vaeosa, Model model, 
			HttpServletRequest request) {
		
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("projekt");
		EntityManager em = emf.createEntityManager();
		
	
		Vaeosa osa = em.find(Vaeosa.class, vaeosa.getId());
		
		try{
		      em.getTransaction().begin();
		      osa.setKommentaar(vaeosa.getKommentaar().toString());
		      osa.setKood(vaeosa.getKood().toString());
		      osa.setNimetus(vaeosa.getNimetus().toString());
		      em.getTransaction().commit();
		    }
		    finally{
		      em.close();
		      emf.close();
		    }
		
		
		
		return "redirect:/vaeosa";
		
	}
	
	
	
}
