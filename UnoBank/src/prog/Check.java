package prog;

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
//import beans.sendemail;

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id,ps,ty;
		PrintWriter out = response.getWriter();
		id=request.getParameter("emailid");
		ps=request.getParameter("pass");
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try
		{
			DBConnector dbc = new DBConnector();
			con=dbc.getDbconnection();
			pst=con.prepareStatement("select * from Users where email=? and passw=? and status='active';");
			pst.setString(1,id);
			pst.setString(2,ps);
			rs=pst.executeQuery();
			if(rs.next())
			{
				HttpSession ses=request.getSession(true);
				ses.setAttribute("emailid",id);
				ses.setAttribute("email",rs.getString("email"));
				ses.setAttribute("name",rs.getString("name"));
				ses.setAttribute("noid",rs.getString("noid"));
				//sendemail eml= new sendemail("Crown Banking","Login Status","You Have Successfully Login in crown online banking.....",String.valueOf(ses.getAttribute("email")));
				ty=rs.getString("desig");
				if(ty.equals("Manager"))
					response.sendRedirect("Manager.jsp");
				else if(ty.equals("cashier"))
					response.sendRedirect("Cashier.jsp");
				else
					response.sendRedirect("Customer.jsp");
				
				
			}
			else
			{
				response.sendRedirect("Failure.jsp");
			}
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
