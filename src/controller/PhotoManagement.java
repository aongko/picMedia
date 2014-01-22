package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import model.Photo;
import util.HibernateUtil;

public class PhotoManagement extends HibernateUtil{
	 public Photo add(Photo photo) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(photo);
        session.getTransaction().commit();
        return photo;
	 }
	 
	 public Photo delete(Long photoId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Photo photo = (Photo) session.load(Photo.class, photoId);
        if(null != photo) {
            session.delete(photo);
        }
        session.getTransaction().commit();
        return photo;
	 }
	 
	 public List<Photo> list() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Photo> photos = null;
        try {
            photos = (List<Photo>)session.createQuery("from Photo").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        session.getTransaction().commit();
        return photos;
    }
}
