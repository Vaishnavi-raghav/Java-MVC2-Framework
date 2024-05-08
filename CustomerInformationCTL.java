package dccweb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dccweb.bean.Customerinfo;

import dccweb.model.customerinfoModel;
import dccweb.utility.ServletUtility;

/**
 * Servlet implementation class CustomerInfoCTL
 */
@WebServlet(name = "CustomerInformationCTL", urlPatterns = {"/CustomerInformationCTL"})
public class CustomerInformationCTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerInformationCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//RequestDispatcher rd = request.getRequestDispatcher(JWAView.CustomerInfoView);
		//rd.forward(request, response);
		ServletUtility.forward(JWAView.CustomerInfoView, request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Customerinfo user = new Customerinfo();
		
		user.setCustomerName(request.getParameter("customername"));
		user.setEmail(request.getParameter("emailid"));
		user.setPhoneNumber(request.getParameter("phonenumber"));
	    user.setFax(request.getParameter("fax"));
	    user.setCountry(request.getParameter("countrycode"));
	    user.setState(request.getParameter("city"));
	    user.setPostCode(request.getParameter("customerpostcode"));    
	  
		   
	    
	    long i = customerinfoModel.addUser(user);
	    if(i>0) {
	      ServletUtility.setSuccessMessage("Saved Successfully", request);
	      
	    }else {
	      ServletUtility.setErrorMessage("Try Again", request);
	    }
	    request.getRequestDispatcher(JWAView.CustomerInfoView).forward(request, response);
	  
	}

}
