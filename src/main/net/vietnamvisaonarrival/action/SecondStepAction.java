package net.vietnamvisaonarrival.action;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;

import net.vietnamvisaonarrival.dao.SecondStepDao;
import net.vietnamvisaonarrival.model.Applicants;
import net.vietnamvisaonarrival.model.CustomerContact;
import net.vietnamvisaonarrival.model.Order;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionSupport;

public class SecondStepAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<String> strCountries;
	public List<String> getStrCountries() {
		return strCountries;
	}

	public void setStrCountries(List<String> strCountries) {
		this.strCountries = strCountries;
	}

	SecondStepDao secondStepDao;
	Order order;
	private String applicantNumbers;
	private String visaTypes;
	private String radiogroup;
	private String visaPurpose;
	// Contact
	private String strFullName;
	private String strAddress;
	private String strEmail;
	private String strConfirmEmail;

	private String strContactNumber;
	HttpServletRequest request;
	HttpServletResponse response;

	
	private Date dateExit;
	private Date dateArrival;
	private String orderDay;
	private List<Applicants> applicants;
	CustomerContact customerContact;
	private BigDecimal amount;
 
	Data country ;
	// Count display records begin
	private Integer count;

	// Count display reconds end

	// Contact

	public SecondStepAction() {
		applicants = new ArrayList<Applicants>();
		strCountries = new ArrayList<String>();
		country = new Data();
		strCountries = country.getStrListCountry();
		
	}

	public String stepThreeAction() {
	   // count record
		if (applicantNumbers != null) {
			count = Integer.parseInt(Character.toString(applicantNumbers
					.charAt(0)));
		}
		// Get customer contact first begin
		customerContact = new CustomerContact();
		customerContact.setAddress(getStrAddress());
		customerContact.setEmail(getStrEmail());
		customerContact.setFullName(getStrFullName());
		customerContact.setPhoneNumber(getStrContactNumber());
		secondStepDao = new SecondStepDao();
		secondStepDao.addCustomerContact(customerContact);
		System.out.println("dfdf" + secondStepDao.getCustomerID());
		// Get customer contact first end
		order = new Order();
		order.setCustomerContactCustomerId(secondStepDao.getCustomerID());
		order.setVisaPurpose(visaPurpose);
		order.setVisaTypes(visaTypes);
		order.setDateExit(dateExit);
		order.setDateArrival(dateArrival);
		order.setOrderDay(orderDay);
		order.setProcessTime(radiogroup);
		order.setApplicantNumber(applicantNumbers);
		secondStepDao.addNewOrder(order);
		amount = new BigDecimal(22);
		// Add Applicants infor

		secondStepDao.addApplicant(applicants, secondStepDao.getOrderID());

		return "SUCCESS";

	}
	public String payment() throws IOException
	{ expresscheckout ex = new expresscheckout();
	ex.checkout();
	
		return "success";

	}	

	public String stepTwoAction() {
		if (applicantNumbers != null) {
			count = Integer.parseInt(Character.toString(applicantNumbers
					.charAt(0)));
		}
		return "success";

	}

	public void addCustomerInfo(CustomerContact customerContact) {
	}

	

	public String getApplicantNumbers() {
		return applicantNumbers;
	}

	public void setApplicantNumbers(String applicantNumbers) {
		this.applicantNumbers = applicantNumbers;
	}

	public String getVisaTypes() {
		return visaTypes;
	}

	public void setVisaTypes(String visaTypes) {
		this.visaTypes = visaTypes;
	}

	public String getRadiogroup() {
		return radiogroup;
	}

	public void setRadiogroup(String radiogroup) {
		this.radiogroup = radiogroup;
	}

	public String getVisaPurpose() {
		return visaPurpose;
	}

	public void setVisaPurpose(String visaPurpose) {
		this.visaPurpose = visaPurpose;
	}

	public String getStrFullName() {
		return strFullName;
	}

	public void setStrFullName(String strFullname) {
		this.strFullName = strFullname;
	}

	public String getStrAddress() {
		return strAddress;
	}

	public void setStrAddress(String strAddress) {
		this.strAddress = strAddress;
	}

	public String getStrEmail() {
		return strEmail;
	}

	public void setStrEmail(String strEmail) {
		this.strEmail = strEmail;
	}

	public String getStrContactNumber() {
		return strContactNumber;
	}

	public void setStrContactNumber(String strContactNumber) {
		this.strContactNumber = strContactNumber;
	}

	public String getStrConfirmEmail() {
		return strConfirmEmail;
	}

	public void setStrConfirmEmail(String strConfirmEmail) {
		this.strConfirmEmail = strConfirmEmail;
	}

	public Date getDateExit() {
		return dateExit;
	}

	public void setDateExit(Date dateExit) {
		this.dateExit = dateExit;
	}

	public Date getDateArrival() {
		return dateArrival;
	}

	public void setDateArrival(Date dateArrival) {
		this.dateArrival = dateArrival;
	}

	public String getOrderDay() {
		return orderDay;
	}

	public void setOrderDay(String orderDay) {
		this.orderDay = orderDay;
	}

	public List<Applicants> getApplicants() {
		return applicants;
	}

	public void setApplicants(List<Applicants> applicants) {
		this.applicants = applicants;
	}

	public void validate() {

		Validator val = new Validator();
		if (strFullName != null && strFullName.length() < 2) {
			addFieldError("strFullName", "Fullname is required.");
		}
		if (strAddress != null && strAddress.length() < 2) {
			addFieldError("strAddress", "Address is required.");
		}
		if (strEmail != null) {
			if (val.emailValidate(strEmail)) {
				addFieldError("strEmail", "Email is wrong.");
			}
			if (!strEmail.equals(strConfirmEmail))
				addFieldError("strEmail", "Confirm email is wrong.");

		}

		if (strContactNumber != null && strContactNumber.length() < 1) {
			addFieldError("strContactNumber", "Contact Number is required.");
		}
		if (strContactNumber != null
				&& !val.validatePhoneNumber(strContactNumber)) {
			addFieldError("strContactNumber", "Contact Number is wrong.");
		}

		if (dateArrival != null && dateExit != null) {
			if (dateArrival.after(dateExit)) {
				addFieldError("dateArrival", "Day arrival is before exit day.");
			}
		}
		if (applicants != null) {
		 count = applicants.size();
			for (int i = 0; i < applicants.size(); i++) {
				if (applicants.get(i).getFullName().length() < 1) {
					String string = String.format("applicants[%s].fullName", i);

					addFieldError(string, "Name of applicant " + (i + 1)
							+ " is wrong.");
					break;
				}
				if (applicants.get(i).getGender() == '-') {
					String string = String.format("applicants[%s].Gender", i);

					addFieldError(string, "Gender of applicant " + (i + 1)
							+ " is wrong.");
					break;
				}
				if (applicants.get(i).getDayofBirth() == null) {
					String string = String.format("applicants[%s].dayofBirth",
							i);

					addFieldError(string, "Birth of day of applicant "
							+ (i + 1) + " is wrong.");
					break;
				}
				if (applicants.get(i).getPassportExpDate() == null) {
					String string = String.format(
							"applicants[%s].passportExpDate", i);

					addFieldError(string, "Passport ext date of applicant "
							+ (i + 1) + " is wrong.");
					break;
				}
				if (!val.isNumeric(applicants.get(i).getPassportNumber())) {
					String string = String.format(
							"applicants[%s].passportNumber", i);

					addFieldError(string, "Passport number of applicant "
							+ (i + 1) + " is wrong.");
					break;
				}
			}
		}

	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	// Valida for applicants
}
