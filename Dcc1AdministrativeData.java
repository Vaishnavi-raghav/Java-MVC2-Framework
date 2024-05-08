package dccweb.bean;

public class Dcc1AdministrativeData {
	private int RegNumber;
	private String Softwarename;
	private String Softwareversion;
	private String Countrycode;
	private String UsedLanguageCode;
	private String MandatoryLanguageCode;
	private String UniqueIdentifier;
	private String OrderNo;
	
	public int getRegNumber() {
		return RegNumber;
	}
	public void setRegNumber(int regNumber) {
		RegNumber = regNumber;
	}
	public String getSoftwarename() {
		return Softwarename;
	}
	public void setSoftwarename(String softwarename) {
		Softwarename = (((softwarename.trim()).length())==0)?null:softwarename.trim();
	}
	public String getSoftwareversion() {
		return Softwareversion;
	}
	public void setSoftwareversion(String softwareversion) {
		Softwareversion = (((softwareversion.trim()).length())==0)?null:softwareversion.trim();
	}
	public String getCountrycode() {
		return Countrycode;
	}
	public void setCountrycode(String countrycode) {
		Countrycode = (((countrycode.trim()).length())==0)?null:countrycode.trim();;
	}
	public String getUsedLanguageCode() {
		return UsedLanguageCode;
	}
	public void setUsedLanguageCode(String usedLanguageCode) {
		UsedLanguageCode = (((usedLanguageCode.trim()).length())==0)?null:usedLanguageCode.trim();
	}
	public String getMandatoryLanguageCode() {
		return MandatoryLanguageCode;
	}
	public void setMandatoryLanguageCode(String mandatoryLanguageCode) {
		MandatoryLanguageCode = (((mandatoryLanguageCode.trim()).length())==0)?null:mandatoryLanguageCode.trim();
	}
	public String getUniqueIdentifier() {
		return UniqueIdentifier;
	}
	public void setUniqueIdentifier(String uniqueIdentifier) {
		UniqueIdentifier = (((uniqueIdentifier.trim()).length())==0)?null:uniqueIdentifier.trim();
	}
	public String getOrderNo() {
		return OrderNo;
	}
	public void setOrderNo(String orderNo) {
		OrderNo = (((orderNo.trim()).length())==0)?null:orderNo.trim();
	}
	

}
