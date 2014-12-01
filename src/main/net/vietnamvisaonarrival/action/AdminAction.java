package net.vietnamvisaonarrival.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import net.vietnamvisaonarrival.dao.AdminDao;
import net.vietnamvisaonarrival.model.Applicants;
import net.vietnamvisaonarrival.model.CustomerContact;
import net.vietnamvisaonarrival.model.Order;

import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	List<Order> lstOrder;
	AdminDao adminDao;
	Integer countLastOrder;
	List<Applicants> lstApplicants;
    HttpServletRequest request;
    Order order;

	

	CustomerContact customer;

	public String getListOrder() {
		AdminDao adminDao = new AdminDao();
		lstOrder = new ArrayList<Order>();
		lstOrder = adminDao.getListOrder();
		countLastOrder = lstOrder.size();
		return "success";

	}

	public String getOrderDetail() {
	System.out.println("fuc");
		AdminDao adminDao = new AdminDao();
		order = new Order();
		String paramValue = ServletActionContext.getRequest().getParameter("orderID");

	    int idOrder = Integer.parseInt(paramValue);

		order = adminDao.getOrder(idOrder);
		lstApplicants = new ArrayList<Applicants>();
		lstApplicants = adminDao.getListApplicants(idOrder);
		customer = adminDao.customerContact(order.getCustomerContactCustomerId());
		


		return "success";
	}
	public List<Applicants> getLstApplicants() {
		return lstApplicants;
	}

	public void setLstApplicants(List<Applicants> lstApplicants) {
		this.lstApplicants = lstApplicants;
	}

	public CustomerContact getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerContact customer) {
		this.customer = customer;
	}
	public Integer getCountLastOrder() {
		return countLastOrder;
	}

	public void setCountLastOrder(Integer countLastOrder) {
		this.countLastOrder = countLastOrder;
	}

	public List<Order> getLstOrder() {
		return lstOrder;
	}

	public void setLstOrder(List<Order> lstOrder) {
		this.lstOrder = lstOrder;
	}

}
