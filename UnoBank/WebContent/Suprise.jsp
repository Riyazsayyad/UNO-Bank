<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suprise</title>
 <link rel="icon" type="image/png" href="images/icons/rupee.png"/>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
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
<%
Cookie c[]=request.getCookies();

String cho="home";
if(c!=null)
{
	for(int i=0;i<c.length;i++)
	{
		//out.println("<br>Name : "+c[i].getName()+"      |       ");
		//out.println("Value : "+c[i].getValue());
		
		if(c[i].getName().equals("interest"))
			cho=c[i].getValue();
	}
}
else
	out.println("No cookies found...");
%>

<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto flex flex-wrap">
    <div class="flex flex-wrap -mx-4 mt-auto mb-auto lg:w-1/2 sm:w-2/3 content-start sm:pr-10">
      <div class="w-full sm:p-4 px-4 mb-6">
        <h1 class="title-font font-medium text-xl mb-2 text-gray-900">Get Anything You Dream of </h1>
        <div class="leading-relaxed">Yes you read it right now you can get anything you dream of by the help of our loan, we are always here for you.</div>
      </div>
     <!--  <div class="p-4 sm:w-1/2 lg:w-1/4 w-1/2">
        <h2 class="title-font font-medium text-3xl text-gray-900">2.7K</h2>
        <p class="leading-relaxed">Users</p>
      </div>
      <div class="p-4 sm:w-1/2 lg:w-1/4 w-1/2">
        <h2 class="title-font font-medium text-3xl text-gray-900">1.8K</h2>
        <p class="leading-relaxed">Subscribes</p>
      </div>
      <div class="p-4 sm:w-1/2 lg:w-1/4 w-1/2">
        <h2 class="title-font font-medium text-3xl text-gray-900">35</h2>
        <p class="leading-relaxed">Downloads</p>
      </div>
      <div class="p-4 sm:w-1/2 lg:w-1/4 w-1/2">
        <h2 class="title-font font-medium text-3xl text-gray-900">4</h2>
        <p class="leading-relaxed">Products</p>
      </div> -->
    </div>
    <div class="lg:w-1/2 sm:w-1/3 w-full rounded-lg overflow-hidden mt-6 sm:mt-0">
      <img class="object-cover object-center w-full h-full" src="design/<%=cho%>.jpg" alt="stats">
    </div>
  </div>
</section>
</body>
</html>




