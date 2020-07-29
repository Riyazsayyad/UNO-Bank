<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Cashier </title>
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
      <a class="mr-5 hover:text-white" href="SearchC.jsp" >Search Account</a>
      <a class="mr-5 hover:text-white" href="Transactionrepca.jsp" >Transaction Report</a>
    </nav>
    
  </div>
</header>
<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-wrap w-full mb-20">
      <div class="lg:w-1/2 w-full mb-6 lg:mb-0">
        <h1 class="sm:text-3xl text-2xl font-medium title-font mb-2 text-gray-900">Welcome to UNO Bank <%=session.getAttribute("name") %></h1>
        <div class="h-1 w-20 bg-indigo-500 rounded"></div>
      </div>
      <p class="lg:w-1/2 w-full leading-relaxed text-base">Being a cashier of the UNO Bank it is your duty to serve our customers with all Love, Respect & Sincerity.</p>
    </div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="flex flex-wrap -m-4">
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="design/deposit.jpg" alt="content">
           <a href="Deposit.jsp">  <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Click Here</h3> </a>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Deposit</h2>
          
        </div>
      </div>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="design/withdraw.jpg" alt="content">
           <a href="Withdraw.jsp">  <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Click Here</h3> </a>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Withdraw</h2>
         
        </div>
      </div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="design/transfer.jpeg" alt="content">
         <a href="TransferCa.jsp">  <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Click Here</h3> </a>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Transfer</h2>
          
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