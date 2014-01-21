package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

import model.UserProfile;
import util.HibernateUtil;

public class UserManagement extends HibernateUtil {

	public UserProfile add(UserProfile userProfile) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(userProfile);
		session.getTransaction().commit();
		return userProfile;
	}
	
	public UserProfile delete(Long userId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		UserProfile userProfile = (UserProfile) session.load(UserProfile.class, userId);
		if (userProfile != null) {
			session.delete(userProfile);
		}
		session.getTransaction().commit();
		return userProfile;
	}
	
	public List<UserProfile> list() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<UserProfile> userProfiles = null;
		try {
			userProfiles = (List<UserProfile>)session.createQuery("from userprofile").list();
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return userProfiles;
	}
}
