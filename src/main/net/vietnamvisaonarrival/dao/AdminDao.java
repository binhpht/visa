package net.vietnamvisaonarrival.dao;

import java.util.ArrayList;
import java.util.List;

import net.vietnamvisaonarrival.listener.HibernateListener;
import net.vietnamvisaonarrival.model.Applicants;
import net.vietnamvisaonarrival.model.CustomerContact;
import net.vietnamvisaonarrival.model.Order;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
public class AdminDao {
	List<Order>  lstOrder;
	CustomerContact customerContact;
	List<Applicants> lstApplicants;
	Order order;

	public List<Order> getListOrder() {
		try {

			// get hibernate session from the servlet context
			SessionFactory sessionFactory = (SessionFactory) ServletActionContext
					.getServletContext().getAttribute(
							HibernateListener.KEY_NAME);

			Session session = sessionFactory.openSession();
			lstOrder = new ArrayList<Order>();
			lstOrder = session.createCriteria(Order.class).list();

			session.beginTransaction();
			session.getTransaction().commit();
			return lstOrder;
		} catch (HibernateException he) {
			throw he;
		}

	}
	@SuppressWarnings("unchecked")
	public List<Applicants> getListApplicants(int orderID) {
		try {

			// get hibernate session from the servlet context
			SessionFactory sessionFactory = (SessionFactory) ServletActionContext
					.getServletContext().getAttribute(
							HibernateListener.KEY_NAME);

			Session session = sessionFactory.openSession();
			lstApplicants = new ArrayList<Applicants>();
			lstApplicants = (List<Applicants>) session.createCriteria(Applicants.class)
					 .add(Restrictions.eq("orderOrderId", orderID)).list();


			session.beginTransaction();
			session.getTransaction().commit();
			return lstApplicants;
		} catch (HibernateException he) {
			throw he;
		}

	}
	public CustomerContact customerContact(int customerID) {
		try {

			// get hibernate session from the servlet context
			SessionFactory sessionFactory = (SessionFactory) ServletActionContext
					.getServletContext().getAttribute(
							HibernateListener.KEY_NAME);

			Session session = sessionFactory.openSession();
			customerContact = new CustomerContact();
			customerContact = (CustomerContact) session.get(CustomerContact.class, customerID);

			session.beginTransaction();
			session.getTransaction().commit();
			return customerContact;
		} catch (HibernateException he) {
			throw he;
		}
	}
		public Order getOrder(int orderID) {
			try {

				// get hibernate session from the servlet context
				SessionFactory sessionFactory = (SessionFactory) ServletActionContext
						.getServletContext().getAttribute(
								HibernateListener.KEY_NAME);

				Session session = sessionFactory.openSession();
				order	 = new Order();
				order = (Order) session.get(Order.class, orderID);

				session.beginTransaction();
				session.getTransaction().commit();
				return order;
			} catch (HibernateException he) {
				throw he;
			}

	}

}
