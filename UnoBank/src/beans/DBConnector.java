package beans;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector 
{
private Connection dbconnection;
	
	public DBConnector()
	{
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		dbconnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/unobankingdb?user=root&password=Riyaz@786");
	}
	catch(Exception e)
	{
	System.out.println(e);	
	}
	}

	public Connection getDbconnection() {
		return dbconnection;
	}
	

}
