<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<marquee>click on logo for logging out.</marquee>
<html lang="en" style="height: 1338px; ">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/icons/rupee.png"/>
    <title>Manager</title>
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <!-- https://fonts.google.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/w3.css">
    
    <link rel="stylesheet" href="css/templatemo-video-catalog.css">
    
<header class="w3-container w3-black">
 
 
 <div class="w3-dropdown-hover">
 
 <button class="w3-button w3-black" >Add</button>
    <div class="w3-dropdown-content w3-bar-block w3-card w3-light-grey" id="myDIV">
      <a class="w3-bar-item w3-button" href="AddE.jsp">Employee</a>
      <a class="w3-bar-item w3-button" href="AddC.jsp">Customer</a>
    </div>
  </div>
  <div class="w3-dropdown-hover">
 
 <button class="w3-button w3-black" >Transactions</button>
    <div class="w3-dropdown-content w3-bar-block w3-card w3-light-grey" id="myDIV">
      <a class="w3-bar-item w3-button" href="Reporttoday.jsp">Today's</a>
      <a class="w3-bar-item w3-button" href="Reportmonthly.jsp">Monthly</a>
    </div>
  </div>
  <div class="w3-dropdown-hover">
 
 <button class="w3-button w3-black" >Option</button>
    <div class="w3-dropdown-content w3-bar-block w3-card w3-light-grey" id="myDIV">
     <a class="w3-bar-item w3-button" href="Remove.jsp"><font size="3">Remove Account</font></a>
       <a class="w3-bar-item w3-button" href="Editstatus.jsp">Edit Status</a>
      <a class="w3-bar-item w3-button" href="Search.jsp">Search</a>
      
    </div>
  </div>
  <div class="w3-dropdown-hover">
 
 <button class="w3-button w3-black" >Transfer</button>
    <div class="w3-dropdown-content w3-bar-block w3-card w3-light-grey" id="myDIV">
      
      <a class="w3-bar-item w3-button" href="Deposmanager.jsp">Send Money</a>
   
    </div>
 <!--  <div class="w3-dropdown-hover">
 
 <button class="w3-button w3-black" ><a class="w3-button" href="AddC.jsp" >Logout</a></button>
   <div class="w3-dropdown-content w3-bar-block w3-card w3-light-grey" id="myDIV">
      <input class="w3-input w3-padding" type="text" placeholder="Search.." id="myInput" onkeyup="myFunction()">
      <a class="w3-bar-item w3-button" href="https://www.britannica.com/">Refrence</a>-->
   
    </div>
  </div>
 
 <div><a href="Logout.jsp" ><img alt="logo" src="design/logobank.png" height="150" align="right"></a></div>
 

</header>

<head>
    

<style>

#myVideo {
  
  min-width: 100%; 
  min-height: 100%;
}
</style>
<!--

TemplateMo 552 Video Catalog

https://templatemo.com/tm-552-video-catalog

-->

</head>

<body>
  <% 
if(session.getAttribute("name")!=null)
{
	
%>
  <div class="tm-welcome-container text-center text-white">
                <div class="tm-welcome-container-fluid">
                 
                    <div class="tm-welcome-text mb-1 text-white"><font size="400">Welcome to UNO Bank <%=session.getAttribute("name") %></font></div>
                   
                </div>
            </div>

            <div id="tm-video-container">
                <video autoplay muted loop id="tm-video">
                    <!-- <source src="video/sunset-timelapse-video.mp4" type="video/mp4"> -->
                        <source src="video/money.mp4" type="video/mp4">
                </video>  
   
              
 </body>             
               
       <footer class="row pt-5">
                    <div class="col-12">
                        <p class="text-right">Copyright 2020 UNO Banking  
                        
                        - Designed by <a href="https://templatemo.com" rel="nofollow" target="_parent">Riyaz</a></p>
                    </div>
                </footer>     
    
<%}
else
{
	response.sendRedirect("Login.jsp");
}%>
</html>