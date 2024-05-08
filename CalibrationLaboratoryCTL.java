package dccweb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dccweb.bean.Dcc4CalLabInfo;
import dccweb.model.Dcc4CalLabInfoModel;
import dccweb.utility.ServletUtility;

/**
 * Servlet implementation class CalibrationLaboratoryCTL
 */
@WebServlet(name = "CalibrationLaboratoryCTL", urlPatterns = {"/CalibrationLaboratoryCTL"})
public class CalibrationLaboratoryCTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalibrationLaboratoryCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher(JWAView.DCC4View);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Dcc4CalLabInfo user = new Dcc4CalLabInfo();
		
		user.setLabname(request.getParameter("calibrationlaboratoryname"));
		user.setEmail(request.getParameter("emailid"));
		user.setPhoneNumber(request.getParameter("phonenumber"));
	    user.setFax(request.getParameter("fax"));
	    user.setCountry(request.getParameter("country"));
	    user.setState(request.getParameter("city"));
	    user.setPostCode(request.getParameter("postcode"));
	    user.setStreet(request.getParameter("street"));    
	  
		   
	    
	    long i = Dcc4CalLabInfoModel.addUser(user);
	    if(i>0) {
	      ServletUtility.setSuccessMessage("Saved Successfully", request);
	      
	    }else {
	      ServletUtility.setErrorMessage("Try Again", request);
	    }
	    request.getRequestDispatcher(JWAView.DCC4View).forward(request, response);
	  
	}


	

}
