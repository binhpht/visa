package net.vietnamvisaonarrival.dao;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import net.vietnamvisaonarrival.listener.HibernateListener;
import net.vietnamvisaonarrival.model.User;

public class UserDao {
	public User saveAndUpdateAccount(User user) {
		try {
			
			
			//get hibernate session from the servlet context
			SessionFactory sessionFactory = 
		         (SessionFactory) ServletActionContext.getServletContext()
	                     .getAttribute(HibernateListener.KEY_NAME);
	 
			Session session = sessionFactory.openSession();
			
			
		
			session.beginTransaction();
			System.out.println("Daaa");
			session.saveOrUpdate(user);
			session.getTransaction().commit();
			return user;
		} catch (HibernateException he) {
			throw he;
		}

	}
}
