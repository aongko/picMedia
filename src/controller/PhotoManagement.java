package controller;

import java.util.List;
import java.util.Date;
import java.util.*;

import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import model.Photo;
import model.UserProfile;
import util.HibernateUtil;

public class PhotoManagement 
{
	private static SessionFactory factory; 
	
	public PhotoManagement()
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
	/*public Photo add(Photo photo) 
	{
		Session session = factory.openSession();
		session.beginTransaction();
		session.save(photo);
		session.getTransaction().commit();
		return photo;
	}*/
	
	public List<Photo> photoList() {
		Session session = factory.openSession();
		Transaction tx = null;
		List<Photo> photos = null;

		try {
			tx = session.beginTransaction();
			photos = session.createQuery("SELECT PhotoID, UserID, Name, Caption, UploadDa, Width, Height, Src, Description from photo").list();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null) tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}

		return photos;
	}

}
