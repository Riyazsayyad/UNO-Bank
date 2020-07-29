package prog;

import static java.lang.System.out;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTMLDocument.HTMLReader;
import javax.websocket.SendResult;



import javax.servlet.http.HttpSession;

import beans.DBConnector;

/**
 * Servlet implementation class Remove
 */
@WebServlet("/Remove")
public class Remove extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Remove() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		String in;
		int cnt;
		
		in=request.getParameter("inn");
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		response.setContentType("text/html; charset=utf-8");
		try
		{
			DBConnector dbc = new DBConnector();
    		con=dbc.getDbconnection();		
    		pst=con.prepareStatement("delete from users where noid or email =? ; ");
			pst.setString(1, in);
			cnt=pst.executeUpdate();	
			
			if(cnt>0)
			{
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>Account deleted Succesfully.</h1> <br/>";      
		        htmlRespone += " <h3><a href='Remove.jsp'>Click here to go back to Remove page.<a></h3>";
		        htmlRespone += "</html>";
		       	writer.println(htmlRespone);
				    
				
			}
			 	else {
				PrintWriter writer = response.getWriter();
		        String htmlRespone = "<html>";
		        htmlRespone += "<h1>Account doesn't Exist.</h1> <br/>";      
		        htmlRespone += " <h3><a href='Remove.jsp'>Click here to go back to Remove page.<a></h3>";
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
