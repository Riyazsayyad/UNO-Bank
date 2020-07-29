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
 * Servlet implementation class Resetpass
 */
@WebServlet("/Resetpass")
public class Resetpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Resetpass() {
        super();
        
    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String an,em,ps;
		int cnt;
		
		an=request.getParameter("ans");
		em=request.getParameter("email");
		ps=request.getParameter("passw");
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		response.setContentType("text/html; charset=utf-8");
		try
		{
			DBConnector dbc = new DBConnector();
    		con=dbc.getDbconnection();		
    		
    		
    		pst=con.prepareStatement("UPDATE users SET passw = ? WHERE email  = ? and ans=?; ");
			pst.setString(1, ps);
			pst.setString(2, em);
			pst.setString(3, an);
			cnt=pst.executeUpdate();	
			
			if(cnt>0)
			{
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>New Password has been set .</h1> <br/>";      
		        htmlRespone += " <h3><a href='Login.jsp'>Click here to go back to  Login page.<a></h3>";
		        htmlRespone += "</html>";
		       	writer.println(htmlRespone);
				    
				
			}
			 	else {
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>Wrong credentials.</h1> <br/>";      
		        htmlRespone += " <h3><a href='Resetpass.jsp'>Click here to go back to Password Reset page.<a></h3>";
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