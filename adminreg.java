package dccweb.bean;

public class adminreg {

	private int RegNumber;
	private String Title;
	
	private String Firstname;
	private String Lastname;
	private String EmployeeId;
	private String Deparment;
	private String ContactNumber;
	private String AlternateContactNumber;
	private String Email;
	private String Password;
	
	public int getRegNumber() {
		return RegNumber;
	}
	public void setRegNumber(int regNumber) {
		RegNumber = regNumber;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	
	
	public String getFirstname() {
		return Firstname;
	}
	public void setFirstname(String firstname) {
		Firstname = (((firstname.trim()).length()) == 0) ? null : firstname.trim() ;
	}
	public String getLastname() {
		return Lastname;
	}
	public void setLastname(String lastname) {
		Lastname = (((lastname.trim()).length()) == 0) ? null : lastname.trim() ;
	}
	public String getEmployeeId() {
		return EmployeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.EmployeeId = (((employeeId.trim()).length())==0) ? null : employeeId.trim();
	}
	public String getDeparment() {
		return Deparment;
	}
	public void setDeparment(String deparment) {
		Deparment = (((deparment.trim()).length())==0)? null:deparment.trim();
	}
	public String getContactNumber() {
		return ContactNumber;
	}
	public void setContactNumber(String contactNumber) {
		ContactNumber = (((contactNumber.trim()).length())==0)? null:contactNumber.trim();
	}
	public String getAlternateContactNumber() {
		return AlternateContactNumber;
	}
	public void setAlternateContactNumber(String alternateContactNumber) {
		AlternateContactNumber = alternateContactNumber;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = (((email.trim()).length())==0)?null:email.trim();
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = (((password.trim()).length())==0)?null:password.trim();
	}
	
	

	
	
	
	
}
