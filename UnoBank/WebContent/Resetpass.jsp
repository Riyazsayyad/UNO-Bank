<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="images/icons/rupee.png"/>
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
<title>Reset</title>
</head>

<body>
<header class="text-gray-500 bg-gray-900 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
    <a class="flex title-font font-medium items-center text-white mb-4 md:mb-0">
      
      <span class="ml-3 text-xl">UNO Bank</span>
    </a>
    <nav class="md:mr-auto md:ml-4 md:py-1 md:pl-4 md:border-l md:border-gray-700	flex flex-wrap items-center text-base justify-center">
      <a class="mr-5 hover:text-white" href="Login.jsp">Login</a>
      
    </nav>
    
  </div>
</header>
<script> 
          
            
            function checkPassword(form) { 
                pass = form.pass.value; 
                passw = form.passw.value; 
  
                
                if (pass == '') 
                    alert ("Please enter Password"); 
                      
                
                else if (passw == '') 
                    alert ("Please enter confirm password"); 
                      
                
                else if (pass != passw) { 
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
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-col text-center w-full mb-12">
      <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900" align="left">Reset Password</h1>
      <p class="lg:w-2/3 mx-auto leading-relaxed text-base" align="left">Enter the birth mark or special body you entered while logging in.</p>
    </div>
   <form action="Resetpass" method="post" onSubmit = "return checkPassword(this)">
    <div class="flex lg:w-2/3 w-full sm:flex-row flex-col mx-auto px-8 sm:px-0" align="center">
      
      <div class="relative">
        <input class="flex-grow w-full bg-gray-100 rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mr-4 mb-4 sm:mb-0" placeholder="Enter Special body mark" type="text"  Max="100" name="ans" autocomplete="off">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input class="flex-grow w-full bg-gray-100 rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mr-4 mb-4 sm:mb-0" placeholder="Enter email" type="text"  name="email" autocomplete="off">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input class="flex-grow w-full bg-gray-100 rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mr-4 mb-4 sm:mb-0" placeholder="Password" type="password"  name="pass" autocomplete="off">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input class="flex-grow w-full bg-gray-100 rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mr-4 mb-4 sm:mb-0" placeholder="Confirm Password" type="password"  name="passw" autocomplete="off">
       
       
       <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <br><br><button class="text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg" >Submit</button>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
  </div>
  
</section>



</body>

</html>