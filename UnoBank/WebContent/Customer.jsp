<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Customer </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/icons/rupee.png"/>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    
</head>
 <% 
if(session.getAttribute("name")!=null)
{
	
%>
<body>

<header class="text-gray-500 bg-gray-900 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
    <a class="flex title-font font-medium items-center text-white mb-4 md:mb-0">
      
      <span class="ml-3 text-xl">UNO Bank</span>
    </a>
    <nav class="md:mr-auto md:ml-4 md:py-1 md:pl-4 md:border-l md:border-gray-700	flex flex-wrap items-center text-base justify-center">
      <a class="mr-5 hover:text-white" href="Logout.jsp" >Logout</a>     
       <a class="mr-5 hover:text-white" href="Changepass.jsp" >Change Password</a>
      <a class="mr-5 hover:text-white" href="Suprise.jsp" >Surprise Me</a>
    </nav>
    
  </div>
</header>
<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-wrap w-full mb-20">
      <div class="lg:w-1/2 w-full mb-6 lg:mb-0">
        <h1 class="sm:text-3xl text-2xl font-medium title-font mb-2 text-gray-900">Welcome to UNO Bank <%=session.getAttribute("name") %> </h1>
        <div class="h-1 w-20 bg-indigo-500 rounded"></div>
      </div>
      <p class="lg:w-1/2 w-full leading-relaxed text-base">Thank you for being customer of ours.</p>
    </div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="flex flex-wrap -m-4">
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src= "design/showtransac.jpg" alt="content">
           <a href="Customertrans.jsp">  <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Click Here</h3> </a>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Show my transactions</h2>
          
        </div>
      </div>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="design/p2p.jpg" alt="content">
           <a href="Transfercust.jsp">  <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Click Here</h3> </a>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Transfer money</h2>
         
        </div>
      </div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="design/bill.png" alt="content">
         <a href="Paybill.jsp">  <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Click Here</h3> </a>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Pay Bill</h2>
          
        </div>
      </div>
      
    </div>
  </div>
</section>

</body>
<%}
else
{
	response.sendRedirect("Login.jsp");
}%>
</html>