package controller;

import java.util.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;

import model.Photo;
import model.UserLogin;
import util.HibernateUtil;

public class LoginManagement 
{
	private static SessionFactory factory; 
	
	public LoginManagement()
	{
		try {
			factory = ((AnnotationConfiguration) new AnnotationConfiguration().
	                configure()).
	                addAnnotatedClass(Photo.class).
	                buildSessionFactory();
		} catch (Throwable ex) { 
			System.err.println("Failed to create sessionFactory object." + ex);
			throw new ExceptionInInitializerError(ex); 
		}
	}
	
	public void Register(UserLogin ul)
	{	
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(ul);
		session.getTransaction().commit();
	}
    
    public boolean login(String username, String password) throws Exception 
    {
    	HttpSession session = ServletActionContext.getRequest().getSession();
		
		Session sessionDB = factory.openSession();
		Transaction tx = null;
		List<UserLogin> logins = null;
		
		try {
			tx = sessionDB.beginTransaction();
			String query = "from UserLogin where username='" + username + "' and password='" + password + "'";
			logins = sessionDB.createQuery(query).list();

			if (!logins.isEmpty()) {
				Iterator iterator = (Iterator) logins.iterator();
				UserLogin ul = (UserLogin) iterator.next(); 
				
				session.setAttribute("username", username);
				session.setAttribute("userid", ul.getUserId());
			} else {
				return false;
			}
			
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null) tx.rollback();
			e.printStackTrace();
		} finally {
			sessionDB.close();
		}
		
		return true;
    }
    
    public void logout() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if (session != null) {  
		    session.invalidate();  
		}
    }

}
