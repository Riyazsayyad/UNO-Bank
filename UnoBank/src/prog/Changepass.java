package prog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.DBConnector;

/**
 * Servlet implementation class Changepass
 */
@WebServlet("/Changepass")
public class Changepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Changepass() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ps,no;
		
		
		ps=request.getParameter("password1");
		no=request.getParameter("noid");
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		response.setContentType("text/html; charset=utf-8");
		try
		{
			DBConnector dbc = new DBConnector();
    		con=dbc.getDbconnection();		
    		
    		
    		pst=con.prepareStatement("update users set passw=? where noid=?; ");
			pst.setString(1, ps);
			pst.setString(2, no);
			
			pst.executeUpdate();	
			
			
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>Password has been set .</h1> <br/>";      
		        htmlRespone += " <h3><a href='Customer.jsp'>Click here to go back to Dashboard.<a></h3>";
		        htmlRespone += "</html>";
		       	writer.println(htmlRespone);
				    
				
			
			
				
	       	con.close();
			
		}
		catch(Exception e)
		{
			out.println("there is something wrong please try again");
		}
		
	
	}

}
