package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

import model.UserLogin;
import util.HibernateUtil;

public class LoginManagement 
{
	public void Register(UserLogin ul)
	{	
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(ul);
		session.getTransaction().commit();
	}

}
