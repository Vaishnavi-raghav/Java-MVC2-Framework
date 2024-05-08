package dccweb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dccweb.bean.Dcc5CalEqInfo;

import dccweb.model.Dcc5CalEqInfoModel;
import dccweb.utility.ServletUtility;

/**
 * Servlet implementation class TimeAndLocationCTL
 */
@WebServlet(name = "CalibrationEquipmentCTL", urlPatterns = {"/CalibrationEquipmentCTL"})
public class CalibrationEquipmentCTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalibrationEquipmentCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher(JWAView.DCC5View);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Dcc5CalEqInfo user = new Dcc5CalEqInfo();
		
		user.setEquipmentName(request.getParameter("measurementequipmentname"));
		user.setEquipmentNumber(request.getParameter("measurementequipmentnumber"));
		
	      	   
	    
	    long i = Dcc5CalEqInfoModel.addUser(user);
	    if(i>0) {
	      ServletUtility.setSuccessMessage("Saved Successfully", request);
	      
	    }else {
	      ServletUtility.setErrorMessage("Try Again", request);
	    }
	    request.getRequestDispatcher(JWAView.DCC5View).forward(request, response);
	  
	}
	

}
