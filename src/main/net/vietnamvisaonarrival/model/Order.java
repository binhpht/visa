package net.vietnamvisaonarrival.model;
// default package
// Generated Nov 20, 2014 8:56:40 PM by Hibernate Tools 3.4.0.CR1

import java.math.BigDecimal;
import java.util.Date;

/**
 * Order generated by hbm2java
 */
public class Order implements java.io.Serializable {

	private Integer orderId;
	private String visaTypes;
	private String visaPurpose;
	private String processTime;
	private String applicantNumber;
	private Date dateArrival;
	private Date dateExit;
	private String orderDay;
	private int customerContactCustomerId;
	private BigDecimal amount;
	private String notes;
	private String fromCountry;


	public Order() {
	}

	public Order(int customerContactCustomerId) {
		this.customerContactCustomerId = customerContactCustomerId;
	}

	public Order(String visaTypes, String visaPurpose, String processTime,
			Date dateArrival, Date dateExit, String orderDay,
			int customerContactCustomerId, BigDecimal amount, String notes, String applicantNumber,String fromCountry) {
		this.visaTypes = visaTypes;
		this.visaPurpose = visaPurpose;
		this.processTime = processTime;
		this.dateArrival = dateArrival;
		this.dateExit = dateExit;
		this.orderDay = orderDay;
		this.customerContactCustomerId = customerContactCustomerId;
		this.amount = amount;
		this.notes = notes;
		this.applicantNumber = applicantNumber;
		this.fromCountry = fromCountry;
	}

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getVisaTypes() {
		return this.visaTypes;
	}

	public void setVisaTypes(String visaTypes) {
		this.visaTypes = visaTypes;
	}

	public String getVisaPurpose() {
		return this.visaPurpose;
	}

	public void setVisaPurpose(String visaPurpose) {
		this.visaPurpose = visaPurpose;
	}

	public String getProcessTime() {
		return this.processTime;
	}

	public void setProcessTime(String processTime) {
		this.processTime = processTime;
	}

	public Date getDateArrival() {
		return this.dateArrival;
	}

	public void setDateArrival(Date dateArrival) {
		this.dateArrival = dateArrival;
	}

	public Date getDateExit() {
		return this.dateExit;
	}

	public void setDateExit(Date dateExit2) {
		this.dateExit = dateExit2;
	}

	public String getOrderDay() {
		return this.orderDay;
	}

	public void setOrderDay(String orderDay) {
		this.orderDay = orderDay;
	}

	public int getCustomerContactCustomerId() {
		return this.customerContactCustomerId;
	}

	public void setCustomerContactCustomerId(int customerContactCustomerId) {
		this.customerContactCustomerId = customerContactCustomerId;
	}

	public BigDecimal getAmount() {
		return this.amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getApplicantNumber() {
		return applicantNumber;
	}

	public void setApplicantNumber(String applicantNumber) {
		this.applicantNumber = applicantNumber;
	}

	public String getFromCountry() {
		return fromCountry;
	}

	public void setFromCountry(String fromCountry) {
		this.fromCountry = fromCountry;
	}

}