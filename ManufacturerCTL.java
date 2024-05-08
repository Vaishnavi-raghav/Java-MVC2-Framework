package dccweb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dccweb.bean.Dcc1AdministrativeData;
import dccweb.bean.Dcc3Manufacturer;
import dccweb.model.Dcc1AdmistrativeDataModel;
import dccweb.model.Dcc3manufacturermodel;
import dccweb.utility.ServletUtility;

/**
 * Servlet implementation class ManufacturerCTL
 */
@WebServlet(name = "ManufacturerCTL", urlPatterns = {"/ManufacturerCTL"})
public class ManufacturerCTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManufacturerCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher(JWAView.DCC3View);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
Dcc3Manufacturer user = new Dcc3Manufacturer();
		
		user.setItem(request.getParameter("itemname"));
		user.setManufacturer(request.getParameter("manufacturer"));
		user.setModelNumber(request.getParameter("modelno"));
	    user.setSerialNumber(request.getParameter("serialno"));
	      
	  
		   
	    
	    long i = Dcc3manufacturermodel.addUser(user);
	    if(i>0) {
	      ServletUtility.setSuccessMessage("Saved Successfully", request);
	      
	    }else {
	      ServletUtility.setErrorMessage("Try Again", request);
	    }
	    request.getRequestDispatcher(JWAView.DCC3View).forward(request, response);
	  
	}

	

}
