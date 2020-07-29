<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="beans.DBConnector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="images/icons/rupee.png"/>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
<title>Transactions </title>
</head>
<body>


<% 
if(session.getAttribute("name")!=null)
{
	
%>






<header class="text-gray-500 bg-gray-900 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
    <a class="flex title-font font-medium items-center text-white mb-4 md:mb-0">
      
      <span class="ml-3 text-xl">UNO Bank</span>
    </a>
    <nav class="md:mr-auto md:ml-4 md:py-1 md:pl-4 md:border-l md:border-gray-700	flex flex-wrap items-center text-base justify-center">
      <a class="mr-5 hover:text-white" href="Manager.jsp" > Dashboard  </a>
      
      
    </nav>
    
  </div>
</header>
<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-col text-center w-full mb-20">
      <h1 class="sm:text-4xl text-3xl font-medium title-font mb-2 text-gray-900">Today's Transactions</h1>
      
    </div>
    
    
</section>
<section>



<div class="lg:w-2/3 w-full mx-auto overflow-auto">
      <table class="table-auto w-full text-left whitespace-no-wrap">
<thead>
          <tr>
            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tl rounded-bl">Account Number</th>
            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Transaction type</th>
            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Date</th>
            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Amount</th>
            <th class="w-10 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tr rounded-br"></th>
          </tr>
        </thead>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	DBConnector dbc = new DBConnector();
	con=dbc.getDbconnection();
	pst=con.prepareStatement("select * from acctrans where trdate=curdate() ;");
	
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		
        <tbody>
          <tr>
            <td class="px-4 py-3"><%=rs.getString("accno") %></td>
            <td class="px-4 py-3"><%=rs.getString("trtype") %></td>
            <td class="px-4 py-3"><%=rs.getString("trdate") %></td>
            <td class="px-4 py-3 text-lg text-gray-900"><%=rs.getString("amt") %></td>
            <td class="w-10 text-center">
              
            </td>
          </tr>
</tbody>

	
		
		<%
	}
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
</section>

<%}
else
{
	response.sendRedirect("Login.jsp");
}%>





</body>
</html>