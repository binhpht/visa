// default package
// Generated Nov 21, 2014 9:23:55 PM by Hibernate Tools 3.4.0.CR1

/**
 * CustomerContact generated by hbm2java
 */
public class CustomerContact implements java.io.Serializable {

	private Integer customerId;
	private String fullName;
	private String address;
	private String email;
	private String phoneNumber;
	private Integer customerKey;

	public CustomerContact() {
	}

	public CustomerContact(String fullName, String address, String email,
			String phoneNumber) {
		this.fullName = fullName;
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}

	public CustomerContact(String fullName, String address, String email,
			String phoneNumber, Integer customerKey) {
		this.fullName = fullName;
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.customerKey = customerKey;
	}

	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getFullName() {
		return this.fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Integer getCustomerKey() {
		return this.customerKey;
	}

	public void setCustomerKey(Integer customerKey) {
		this.customerKey = customerKey;
	}

}