package techhub.admin.enquiry.enqmodel;

public class EnquiryModel {

	private String name;
	private String email;
	private String contact;
	private String cource;
	private String college; 
	
	private String status  ; 
	private String candidatetype  ; 
	private String batchtype; 

	
public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCandidatetype() {
		return candidatetype;
	}
	public void setCandidatetype(String candidatetype) {
		this.candidatetype = candidatetype;
	}
	public String getBatchtype() {
		return batchtype;
	}
	public void setBatchtype(String batchtype) {
		this.batchtype = batchtype;
	}
	private String university;  
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	private String address;
	private String reference;
	
	
	
	
	
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getCource() {
		return cource;
	}
	public void setCource(String cource) {
		this.cource = cource;
	}
	
}
	
	