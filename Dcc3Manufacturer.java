package dccweb.bean;

public class Dcc3Manufacturer {
	
	private int RegNumber;
	private String Item;
	private String Manufacturer;
	private String SerialNumber;
	private String ModelNumber;
	
	
	public int getRegNumber() {
		return RegNumber;
	}
	public void setRegNumber(int regNumber) {
		RegNumber = regNumber;
	}
	public String getItem() {
		return Item;
	}
	public void setItem(String item) {
		Item =((( item.trim()).length())==0)?null:item.trim();
	}
	public String getManufacturer() {
		return Manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		Manufacturer = (((manufacturer.trim()).length())==0)?null:manufacturer.trim();
	}
	public String getModelNumber() {
		return ModelNumber;
	}
	public void setModelNumber(String modelNumber) {
		ModelNumber =((( modelNumber.trim()).length())==0)?null:modelNumber.trim();
	}
	public String getSerialNumber() {
		return SerialNumber;
	}
	public void setSerialNumber(String serialNumber) {
		SerialNumber = (((serialNumber.trim()).length())==0)?null:serialNumber.trim();
	}
	
	

}
