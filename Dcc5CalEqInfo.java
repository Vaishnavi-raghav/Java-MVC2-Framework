package dccweb.bean;

public class Dcc5CalEqInfo {
	
private int RegNumber;
private String EquipmentName;
private String EquipmentNumber;
public int getRegNumber() {
	return RegNumber;
}
public void setRegNumber(int regNumber) {
	RegNumber = regNumber;
}
public String getEquipmentName() {
	return EquipmentName;
}
public void setEquipmentName(String equipmentName) {
	EquipmentName = (((equipmentName.trim()).length())==0)?null:equipmentName.trim();
}
public String getEquipmentNumber() {
	return EquipmentNumber;
}
public void setEquipmentNumber(String equipmentNumber) {
	EquipmentNumber = (((equipmentNumber.trim()).length())==0)?null:equipmentNumber.trim();
}




}
