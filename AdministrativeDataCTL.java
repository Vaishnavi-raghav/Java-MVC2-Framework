package dccweb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dccweb.bean.Customerinfo;
import dccweb.bean.Dcc1AdministrativeData;
import dccweb.model.Dcc1AdmistrativeDataModel;
import dccweb.model.customerinfoModel;
import dccweb.utility.ServletUtility;

/**
 * Servlet implementation class DCC1CTL
 */
@WebServlet(name = "AdministrativeDataCTL", urlPatterns = {"/AdministrativeDataCTL"})
public class AdministrativeDataCTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdministrativeDataCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//RequestDispatcher rd = request.getRequestDispatcher(JWAView.DCC1View);
		//rd.forward(request, response);
ServletUtility.forward(JWAView.DCC1View, request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
Dcc1AdministrativeData user = new Dcc1AdministrativeData();
		
		user.setSoftwarename(request.getParameter("software"));
		user.setSoftwareversion(request.getParameter("softwareversion"));
		user.setCountrycode(request.getParameter("countrycode"));
	    user.setUsedLanguageCode(request.getParameter("usedlanguage"));
	    user.setMandatoryLanguageCode(request.getParameter("mandatorylanguage"));
	    user.setUniqueIdentifier(request.getParameter("uniqueidentifier"));
	    user.setOrderNo(request.getParameter("orderno"));    
	  
		   
	    
	    long i = Dcc1AdmistrativeDataModel.addUser(user);
	    if(i>0) {
	      ServletUtility.setSuccessMessage("Saved Successfully", request);
	      
	    }else {
	      ServletUtility.setErrorMessage("Try Again", request);
	    }
	    request.getRequestDispatcher(JWAView.DCC1View).forward(request, response);
	  
	}

}

	

