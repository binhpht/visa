package net.vietnamvisaonarrival.model;

// default package
// Generated Nov 21, 2014 9:23:55 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * Applicants generated by hbm2java
 */
public class Applicants implements java.io.Serializable {

	private Integer applicantId;
	private char gender;
	private Date dayofBirth;
	private String nationality;
	private String passportNumber;
	private Date passportExpDate;
	private String fullName;
	private int orderOrderId;

	public Applicants() {
	}

	public Applicants(char gender, Date dayofBirth, String nationality,
			String passportNumber, Date passportExpDate, String fullName,
			int orderOrderId) {
		this.gender = gender;
		this.dayofBirth = dayofBirth;
		this.nationality = nationality;
		this.passportNumber = passportNumber;
		this.passportExpDate = passportExpDate;
		this.fullName = fullName;
		this.orderOrderId = orderOrderId;
	}

	public Integer getApplicantId() {
		return this.applicantId;
	}

	public void setApplicantId(Integer applicantId) {
		this.applicantId = applicantId;
	}

	public char getGender() {
		return this.gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public Date getDayofBirth() {
		return this.dayofBirth;
	}

	public void setDayofBirth(Date dayofBirth) {
		this.dayofBirth = dayofBirth;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getPassportNumber() {
		return this.passportNumber;
	}

	public void setPassportNumber(String passportNumber) {
		this.passportNumber = passportNumber;
	}

	public Date getPassportExpDate() {
		return this.passportExpDate;
	}

	public void setPassportExpDate(Date passportExpDate) {
		this.passportExpDate = passportExpDate;
	}

	public String getFullName() {
		return this.fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getOrderOrderId() {
		return this.orderOrderId;
	}

	public void setOrderOrderId(int orderOrderId) {
		this.orderOrderId = orderOrderId;
	}

}
