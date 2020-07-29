package prog;
import static java.lang.System.out;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.DBConnector;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nm,Em,Psw,Mob,ge,db,aa,de,an;
		nm=request.getParameter("name");
		Em=request.getParameter("email");
		Psw=request.getParameter("passw");
		Mob=request.getParameter("phone");
		ge=request.getParameter("gender");
		db=request.getParameter("dob");
		aa=request.getParameter("aadhar");
		de=request.getParameter("desig");
		an=request.getParameter("ans");
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		try
		{
			DBConnector dbc = new DBConnector();
    		con=dbc.getDbconnection();		
    		pst=con.prepareStatement("insert into users (name,gender,dob,email,phone,aadhar,desig,passw,balance,ans) values(?,?,?,?,?,?,?,?,5000,?);");
			pst.setString(1, nm);
			pst.setString(2, ge);
			pst.setString(3, db);
			pst.setString(4, Em);
			pst.setString(5, Mob);
			pst.setString(6, aa);
			pst.setString(7, de);
			pst.setString(8, Psw);
			pst.setString(9, an);
		    pst.executeUpdate();
		 	
			
			
			HttpSession ses=request.getSession(true);
			ses.setAttribute("usernm", nm);
			ses.setAttribute("email", Em);
			//ses.setAttribute("mentid", Mi);
			
			
			
			
			
			
			PrintWriter writer = response.getWriter();
	         

	        String htmlRespone = "<html>";
	        htmlRespone += "<h4>Successfully Registered.<br/>";      
	        
	        htmlRespone += " <a href='Manager.jsp'>Click here to go to Dashboard.<a></h4>";
	        htmlRespone += "</html>";
	       	writer.println(htmlRespone);
			con.close();
			
		}
		catch(Exception e)
		{
			out.println(e);
			response.sendRedirect("Manager.jsp");
		}
		
	}

}
