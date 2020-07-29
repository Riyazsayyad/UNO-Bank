<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="images/icons/rupee.png"/>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
<title>Change Password</title>
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
      <a class="mr-5 hover:text-white" href="Customer.jsp" >Dashboard</a>
      
      
    </nav>
    
  </div>
</header>
<script> 
          
            
            function checkPassword(form) { 
                password1 = form.password1.value; 
                password2 = form.password2.value; 
  
                
                if (password1 == '') 
                    alert ("Please enter Password"); 
                      
                
                else if (password2 == '') 
                    alert ("Please enter confirm password"); 
                      
                
                else if (password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
  
               
                else{ 
                    alert("Password Match: New password set!") 
                    return true; 
                } 
            } 
        </script> 
<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto flex flex-wrap items-center">
    <div class="lg:w-3/5 md:w-1/2 md:pr-16 lg:pr-0 pr-0">
      <h1 class="title-font font-medium text-3xl text-gray-900">Change Password</h1>
      <p class="leading-relaxed mt-4">Being a responsible customer it is your duty to change password oftenly .</p>
    </div>
   
    <div class="lg:w-2/6 md:w-1/2 bg-gray-200 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
     <form action="Changepass" method="post" onSubmit = "return checkPassword(this)">
     <input type="hidden" value="<%=session.getAttribute("noid") %>" name="noid">
      <input class="bg-white rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mb-4"  placeholder="New Password" name="password1">
      <input class="bg-white rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mb-4"  placeholder="Confirm Password" name="password2"><br>
      <button class="text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg" type="submit" onclick="Validate()">Submit</button>
      <p class="text-xs text-gray-500 mt-3">Keep password as strong as possible.</p>
    </form>
    </div>
   
  </div>
 
</section>

</body>
<%}
else
{
	response.sendRedirect("Login.jsp");
}%>s
</html>