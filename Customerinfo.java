package dccweb.bean;

public class Customerinfo {
	private int RegNumber;
	private String CustomerName;
	private String Email;
	private String PhoneNumber;
	private String Fax;
	private String Country;
	private String State;
	private String PostCode;
	
	public int getRegNumber() {
		return RegNumber;
	}
	public void setRegNumber(int regNumber) {
		RegNumber = regNumber;
	}
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		CustomerName = (((customerName.trim()).length()) == 0) ? null : customerName.trim() ;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = (((email.trim()).length())==0)?null:email.trim();
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber =(((phoneNumber.trim()).length())==0)?null:phoneNumber.trim();
	}
	public String getFax() {
		return Fax;
	}
	public void setFax(String fax) {
		Fax = fax;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = (((country.trim()).length())==0)?null:country.trim();
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = (((state.trim()).length())==0)?null:state.trim();
	}
	public String getPostCode() {
		return PostCode;
	}
	public void setPostCode(String postCode) {
		PostCode = (((postCode.trim()).length())==0)?null:postCode.trim();
	}

}
