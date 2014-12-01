package net.vietnamvisaonarrival.dao;

import java.util.Iterator;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import net.vietnamvisaonarrival.listener.HibernateListener;
import net.vietnamvisaonarrival.model.Applicants;
import net.vietnamvisaonarrival.model.CustomerContact;
import net.vietnamvisaonarrival.model.Order;

public class SecondStepDao {
	CustomerContact customer;
	private int customerID;
    private int orderID;
	public CustomerContact addCustomerContact(CustomerContact customerContact) {
		try {
			System.out.println("1	");

			// get hibernate session from the servlet context
			SessionFactory sessionFactory = (SessionFactory) ServletActionContext
					.getServletContext().getAttribute(
							HibernateListener.KEY_NAME);

			Session session = sessionFactory.openSession();

			session.beginTransaction();
			System.out.println("Daaa");
			session.saveOrUpdate(customerContact);
			System.out.println(customerContact.getEmail()
					+ "after save : user id's = "
					+ customerContact.getCustomerId());
			setCustomerID(+customerContact.getCustomerId());

			session.getTransaction().commit();
			return customerContact;
		} catch (HibernateException he) {
			throw he;
		}

	}

	public Order addNewOrder(Order newOrder) {
	
		try {
			System.out.println("1	");

			// get hibernate session from the servlet context
			SessionFactory sessionFactory = (SessionFactory) ServletActionContext
					.getServletContext().getAttribute(
							HibernateListener.KEY_NAME);

			Session session = sessionFactory.openSession();

			session.beginTransaction();
			System.out.println("Daaa");
			session.saveOrUpdate(newOrder);
			setOrderID(newOrder.getOrderId());
			

			session.getTransaction().commit();
			return newOrder;
		} catch (HibernateException he) {
			throw he;
		}	}
		
	public Order addApplicant(List<Applicants> applicant, Integer id) {
		
		try {
			System.out.println("1	");

			// get hibernate session from the servlet context
			SessionFactory sessionFactory = (SessionFactory) ServletActionContext
					.getServletContext().getAttribute(
							HibernateListener.KEY_NAME);

			Session session = sessionFactory.openSession();

			session.beginTransaction();
			System.out.println("Daaa");
		    Iterator it = applicant.iterator();
		    while(it.hasNext()){ 
		        Applicants obj = (Applicants) it.next();
		        obj.setOrderOrderId(id);        
		        session.saveOrUpdate(obj);
 		        
		    }

			

			session.getTransaction().commit();
			return null;
		} catch (HibernateException he) {
			throw he;
		}	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int i) {
		this.customerID = i;
	}

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	
	
}
