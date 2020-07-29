<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<marquee>Please Note: Form will not accept value for than 5000</marquee>
<head>
<meta charset="ISO-8859-1">
 <link rel="icon" type="image/png" href="images/icons/rupee.png"/>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
<title>Pay Bill</title>
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
      <a class="mr-5 hover:text-white" href="Customer.jsp" >Dashboard</a>
      
      
    </nav>
    
  </div>
</header>
<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-col text-center w-full mb-12">
      <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Pay Bill</h1>
      <p class="lg:w-2/3 mx-auto leading-relaxed text-base">Pay your bill in one click, please select firm you want to pay money to.</p>
    </div>
   <form action="Paybill" method="post">
    <div class="flex lg:w-2/3 w-full sm:flex-row flex-col mx-auto px-8 sm:px-0" align="center">
      <input type="hidden" value="<%=session.getAttribute("noid") %>" name="noid">
      <div class="relative">
        <select type="text" class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-state" name="rec">
           
          <option selected>Click here </option>
          <option value="68">Electric</option>
          <option value="69">Vodafone</option>
          <option value="58">Airtel</option>
          <option value="70">DishTV</option>
          
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input class="flex-grow w-full bg-gray-100 rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mr-4 mb-4 sm:mb-0" placeholder="Enter Amount" type="number" max="5000" name="amount">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
      <button class="text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg">Send</button>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
  </div>
  
</section>


<%}
else
{
	response.sendRedirect("Login.jsp");
}%>
</body>

</html>