package prog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.DBConnector;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Searchc")
public class Searchc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Searchc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		
	String sr;
	
		Connection con;
		PreparedStatement pst;
		response.setContentType("text/html; charset=utf-8");
		//ResultSet rs;
		sr=request.getParameter("noid");
		try
		{
			DBConnector dbc = new DBConnector();
    		con=dbc.getDbconnection();		
    		PreparedStatement st = con.prepareStatement("SELECT * FROM users WHERE noid = ?");
    		st.setString(1, sr);
    		ResultSet rs = st.executeQuery();
			
			if(rs.next())
			{
				
				String nm= rs.getString("name");
				String ge= rs.getString("gender");
				String db= rs.getString("dob");
				String em= rs.getString("email");
				String ph= rs.getString("phone");
				String aa= rs.getString("aadhar");
				int no= rs.getInt("noid");
				String stt= rs.getString("status");
				String de= rs.getString("desig");
				//name   | gender | dob        | email            | phone    | aadhar  | noid | status | desig | passw
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>Account Information of " + nm + ".</h1> <br/> <hr>";      
		        htmlRespone += "<h2>Name of the holder is " + nm  +" .</h2> ";  
		        htmlRespone += "<h2>Account Holder is " + ge  +".</h2> ";  
		        htmlRespone += "<h2>Account Holder's date of bith is " + db  +".</h2> ";  
		        htmlRespone += "<h2>Account Holder's email is  " +  em  +".</h2> ";  
		        htmlRespone += "<h2>Account Holder's phone number is " + ph  +" .</h2> ";  
		        htmlRespone += "<h2>Account Holder's aadhar number is " + aa  + " .</h2> ";  
		        htmlRespone += "<h2>Account Holder's account number is " + no  + " .</h2> ";  
		        htmlRespone += "<h2>Account Holder's status is " + stt + "  .</h2> ";  
		        htmlRespone += "<h2>Account Holder's designation is " + de  + " .</h2> ";  
		       	htmlRespone += " <h2><a href='SearchC.jsp'>Click here to go back to Search page.<a></h2>";
		        htmlRespone += "</html>";
		       	writer.println(htmlRespone);
				}
			else 
			{
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>Account doesn't Exist.</h1> <br/>";      
		        htmlRespone += " <h3><a href='SearchC.jsp'>Click here to go back to Search page.<a></h3>";
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











