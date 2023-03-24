package com.Controller;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Model.*;

@Controller

public class HMS_Controller {
	
	
	@Autowired
	SessionFactory sf;
	
	
	 
	
	@RequestMapping("/") //name of API and Login.Jsp> form action name should be same.
	public String LoginPage(){
		return "Login";  //jsp page
	}
	
	@RequestMapping("Login")
	public String Login(@ModelAttribute Login login , Model model){
		
		Session ss=sf.openSession();
		
		Login dblogin=ss.get(Login.class, login.getUsername());
		
		String page="Login";  //jsp page
		String msg= null;
		
		if (dblogin != null) {
			
			
			if (login.getPassword().equals(dblogin.getPassword())) {
				
				page="Home";    //jsp page
				
			} else {
                 msg="Invalide Password";
			}
		}
		else {
			msg="Invalide Username";

		}
		
		model.addAttribute("msg",msg);
		
		return page;
		
	}
	@RequestMapping("/Home")
	public String Home(){
		return "Home";
	}
	@RequestMapping("/About")
	public String About(){
		return "About";
	}
	@RequestMapping("/Service")
	public String Service(){
		return "Service";
	}
	
	
	@RequestMapping("/ContactPage")
	public String contactPage() {

		return "Contact";
	}
	
	@RequestMapping("/Contact")
	public String contact(@ModelAttribute Contact contact, Model model) {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(contact);
		tx.commit();
		return "Contact";
	}
	
	@RequestMapping("SignupPage")
	public String SignupPage(){
		return"Signup";
	}
	@RequestMapping("SignUp")
	public String SignUp(@ModelAttribute Login login, Model model){
		Session ss=sf.openSession();
		Transaction ts=ss.beginTransaction();
		ss.save(login);
		ts.commit();
		return "Signup";
	}
	
	
	
	
		
		@SuppressWarnings("rawtypes")
		@GetMapping("multipleRecord")
		public List showMultiplData() {

			Session ss = sf.openSession();
			String hql = "from Contact"; // tableName
			Query query = ss.createQuery(hql);
			List results = ((org.hibernate.query.Query) query).list();
            System.out.println(results);
			return results;
		}
	
		
	
}
