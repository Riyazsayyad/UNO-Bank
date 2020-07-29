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
 * Servlet implementation class Editstatus
 */
@WebServlet("/Editstatus")
public class Editstatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editstatus() {
        super();
        // TODO Auto-generated constructor stub
    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String ofs,ons;
		int cnt;
		
		ofs=request.getParameter("offstat");
		ons=request.getParameter("onstat");
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		response.setContentType("text/html; charset=utf-8");
		try
		{
			DBConnector dbc = new DBConnector();
    		con=dbc.getDbconnection();		
    		
    		
    		pst=con.prepareStatement("UPDATE users SET status = ? WHERE noid  = ?; ");
			pst.setString(1, ons);
			pst.setString(2, ofs);
			cnt=pst.executeUpdate();	
			
			if(cnt>0)
			{
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>Status has been set .</h1> <br/>";      
		        htmlRespone += " <h3><a href='Editstatus.jsp'>Click here to go back to Edit Status page.<a></h3>";
		        htmlRespone += "</html>";
		       	writer.println(htmlRespone);
				    
				
			}
			 	else {
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>Account doesn't Exist.</h1> <br/>";      
		        htmlRespone += " <h3><a href='Editstatus.jsp'>Click here to go back to Edit Status page.<a></h3>";
		        htmlRespone += "</html>";
		       	writer.println(htmlRespone);
			 	
			 	}
			
				
	       	con.close();
			
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
	
	}

}