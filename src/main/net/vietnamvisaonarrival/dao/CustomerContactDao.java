package net.vietnamvisaonarrival.dao;

import net.vietnamvisaonarrival.listener.HibernateListener;
import net.vietnamvisaonarrival.model.CustomerContact;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class CustomerContactDao {
	public CustomerContact saveAndUpdateCustomerInfo(CustomerContact CustomerInfor) {
		try {
			
			
			//get hibernate session from the servlet context
			SessionFactory sessionFactory = 
		         (SessionFactory) ServletActionContext.getServletContext()
	                     .getAttribute(HibernateListener.KEY_NAME);
	 
			Session session = sessionFactory.openSession();
						
		
			session.beginTransaction();
			System.out.println("Daaa");
			session.saveOrUpdate(CustomerInfor);
			session.getTransaction().commit();
			return CustomerInfor;
		} catch (HibernateException he) {
			throw he;
		}

	}

}
