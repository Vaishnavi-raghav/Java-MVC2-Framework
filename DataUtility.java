package dccweb.utility;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;

public class DataUtility {
	

	    public static Date getDate(String dateString) {
	        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy"); // Adjust the format as needed
	        try {
	            return dateFormat.parse(dateString);
	        } catch (ParseException e) {
	            e.printStackTrace(); // Add logging to see the parsing error
	            return null;
	        }
	    }

	    // Other utility methods
	
	  }



	

