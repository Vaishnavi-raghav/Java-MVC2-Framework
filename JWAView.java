package dccweb.controller;

public interface JWAView {
	
	public String APP_CONTEXT = "/DCCWEB";
	public String PAGE_FOLDER = "/jsp";
	public String PAGE_FOLDER2 = "/WEB-INF";
	
	public String indexView =PAGE_FOLDER +"/index.jsp";
    public String indexCTL = APP_CONTEXT +"/indexCTL";
	
	public String LoginView =PAGE_FOLDER +"/Login.jsp";
    public String LoginCTL = APP_CONTEXT +"/LoginCTL";
    
    public String AdminRegView = PAGE_FOLDER + "/Registration.jsp";
    public String AdminRegCTL = APP_CONTEXT +"/RegistrationCTL";

    public String CustomerInfoView= PAGE_FOLDER + "/CustomerInformation.jsp";
    public String CustomerInfoCTL = APP_CONTEXT +"/CustomerInformationCTL";
    
    public String DCC1View= PAGE_FOLDER + "/AdministrativeData.jsp";
    public String DCC1CTL = APP_CONTEXT +"/AdministrativeDataCTL";
    
    
    public String DCC2View= PAGE_FOLDER + "/TimeAndLocation.jsp";
    public String DCC2CTL = APP_CONTEXT +"/TimeAndLocationCTL";
    
    public String DCC3View= PAGE_FOLDER + "/Manufacturer.jsp";
    public String DCC3CTL = APP_CONTEXT +"/ManufacturerCTL";
    
    public String DCC4View= PAGE_FOLDER + "/CalibrationLaboratory.jsp";
    public String DCC4CTL = APP_CONTEXT +"/CalibrationLaboratoryCTL";
    
    public String DCC5View= PAGE_FOLDER + "/CalibrationEquipment.jsp";
    public String DCC5CTL = APP_CONTEXT +"/CalibrationEquipmentCTL";
    
    public String DCC6View= PAGE_FOLDER + "/MeasurementResults.jsp";
    public String DCC6CTL = APP_CONTEXT +"/MeasurementResultsCTL";
    
    public String DCC7View= PAGE_FOLDER + "/CalibrationAuthorities.jsp";
    public String DCC7CTL = APP_CONTEXT +"/CalibrationAuthoritiesCTL";
    
    public String DCCMeasureView = PAGE_FOLDER + "/ResultCalculation.jsp";
    public String DCCMeasureCTL = APP_CONTEXT +"/ResultCalculationCTL";
    
    public String DigitalCalibrationView = PAGE_FOLDER + "/DigitalCalibration.jsp";
    public String DigitalCalibrationCTL = APP_CONTEXT +"/DigitalCalibrationCTL CTL";
    
 
}