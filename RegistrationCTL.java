package dccweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dccweb.bean.adminreg;
import dccweb.model.adminregModel;
import dccweb.utility.ServletUtility;

/**
 * Servlet implementation class RegistrationCTL
 */
@WebServlet(name = "RegistrationCTL", urlPatterns = {"/RegistrationCTL"})
public class RegistrationCTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletUtility.forward(JWAView.AdminRegView, request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
adminreg user = new adminreg();
		
		user.setEmployeeId(request.getParameter("EmployeeRegistrationNumber"));
		user.setTitle(request.getParameter("title"));
		user.setFirstname(request.getParameter("First_Name"));
	    user.setLastname(request.getParameter("Last_name"));
	    user.setDeparment(request.getParameter("Department"));
	    user.setContactNumber(request.getParameter("ContactNo"));
	    user.setAlternateContactNumber(request.getParameter("contactno"));    
	    user.setEmail(request.getParameter("emailid"));
	    user.setPassword(request.getParameter("Password"));
		   
	    
	    long i = adminregModel.addUser(user);
	    if(i>0) {
	      ServletUtility.setSuccessMessage("User Register Sucessful", request);
	      
	    }else {
	      ServletUtility.setErrorMessage("User Register Failed", request);
	    }
	    request.getRequestDispatcher(JWAView.AdminRegView).forward(request, response);

	}

}
