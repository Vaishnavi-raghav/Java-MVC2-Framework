package dccweb.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.TextFormat.ParseException;

import dccweb.bean.DCC2dateTimeLoc;
import dccweb.model.Dcc2DateTimeLocModel;
import dccweb.utility.DataUtility;
import dccweb.utility.ServletUtility;

/**
 * Servlet implementation class TimeAndLocationCTL
 */
@WebServlet(name = "TimeAndLocationCTL", urlPatterns = {"/TimeAndLocationCTL"})
public class TimeAndLocationCTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimeAndLocationCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*RequestDispatcher rd = request.getRequestDispatcher(JWAView.DCC2View);
		rd.forward(request, response);*/
		ServletUtility.forward(JWAView.DCC2View, request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
       DCC2dateTimeLoc user = new DCC2dateTimeLoc();
       
       user.setBeginDate(request.getParameter("begindate"));
		user.setEndDate(request.getParameter("enddate"));
		user.setLocation(request.getParameter("location"));   
	  
		   
	    
	    long i = Dcc2DateTimeLocModel.addUser(user);
	    if(i>0) {
	      ServletUtility.setSuccessMessage("Saved Successfully", request);
	      
	    }else {
	      ServletUtility.setErrorMessage("Try Again", request);
	    }
	    request.getRequestDispatcher(JWAView.DCC2View).forward(request, response);
	  
	}
	}

