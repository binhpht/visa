package net.vietnamvisaonarrival.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class FirstStepAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<String>  strNumberApplicants;
	private List<String> strVisaTypes;
	private List<String> strVisaPurpose;
	private List<String> strProcessTime;
	private String  applicantNumbers;
	private String visaTypes;
	private String visaPurpose;
	private String radiogroup;
	private List<String> strCountry;
	private List<String> strDiffCountry;
	@SuppressWarnings("unused")
	private String processingTimeDefault;
	private Data listCountry;
	

	public List<String> getStrCountry() {
		return strCountry;
	}
	public void setStrCountry(List<String> strCountry) {
		this.strCountry = strCountry;
	}
	@SuppressWarnings("unused")
	private String defaultApplicants;
	public FirstStepAction () { 
	    
		// Number Applicant begin 
		strNumberApplicants = new ArrayList<String>();
		strNumberApplicants.add("2 applicants");
		strNumberApplicants.add("3 applicants");
		strNumberApplicants.add("4 applicants");
		strNumberApplicants.add("5 applicants");
		strNumberApplicants.add("6 applicants");
		strNumberApplicants.add("7 applicants");
		strNumberApplicants.add("8 applicants");
		// Number Applicant  end 
		// Visa types begin
		strVisaTypes = new ArrayList<String>();
		strVisaTypes.add("1 month single");	
		strVisaTypes.add("1 month mutilple");	
		strVisaTypes.add("3 month single");
		strVisaTypes.add("3 month mutilple");
		// Visa types end
		strVisaPurpose = new ArrayList<String> ();
		strVisaPurpose.add("Tourism");

		strVisaPurpose.add("Business");
		
		strProcessTime = new ArrayList<String>();
		strProcessTime.add("Normal Service");
		strProcessTime.add("Urgent");
		strProcessTime.add("Emergency");
		strCountry = new ArrayList<String>();
		listCountry = new Data();
		strCountry = listCountry.getStrListCountry();
		strDiffCountry = new ArrayList<String>();
		strDiffCountry = listCountry.getStrDiffCountry();
	
		


	} 
	public List<String> getStrNumberApplicants() {
		return strNumberApplicants;
	}
	public void setStrNumberApplicants(List<String> strNumberApplicants) {
		this.strNumberApplicants = strNumberApplicants;
	}
	public List<String> getStrVisaTypes() {
		return strVisaTypes;
	}
	public void setStrVisaTypes(List<String> strVisaTypes) {
		this.strVisaTypes = strVisaTypes;
	}
	public List<String> getStrVisaPurpose() {
		return strVisaPurpose;
	}
	public void setStrVisaPurpose(List<String> strVisaPurpose) {
		this.strVisaPurpose = strVisaPurpose;
	}
	public List<String> getStrProcessTime() {
		return strProcessTime;
	}
	public void setStrProcessTime(List<String> strProcessTime) {
		this.strProcessTime = strProcessTime;
	}
	public String execute() {
		return SUCCESS;
	}
 
	public String display() {
		return NONE;
	}
	public String getApplicantNumbers() {
		return applicantNumbers;
	}
	public void setApplicantNumbers(String applicantNumbers) {
		this.applicantNumbers = applicantNumbers;
	}
	public String getDefaultApplicants() {
		return "1 applicant";
	}
	public void setDefaultApplicants(String defaultApplicants) {
		this.defaultApplicants = defaultApplicants;
	}
	public String getVisaTypes() {
		return visaTypes;
	}
	public void setVisaTypes(String visaTypes) {
		this.visaTypes = visaTypes;
	}
	public String getVisaPurpose() {
		return visaPurpose;
	}
	public void setVisaPurpose(String visaPurpose) {
		this.visaPurpose = visaPurpose;
	}
	
	public String getRadiogroup() {
		return radiogroup;
	}
	public void setRadiogroup(String radiogroup) {
		this.radiogroup = radiogroup;
	}
	public String getProcessingTimeDefault() {
		return "Normal Service";
	}
	public void setProcessingTimeDefault(String processingTimeDefault) {
		this.processingTimeDefault = processingTimeDefault;
	}
	public List<String> getStrDiffCountry() {
		return strDiffCountry;
	}
	public void setStrDiffCountry(List<String> strDiffCountry) {
		this.strDiffCountry = strDiffCountry;
	}


}
