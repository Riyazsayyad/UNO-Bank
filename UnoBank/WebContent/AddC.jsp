<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
   <link rel="icon" type="image/png" href="images/icons/rupee.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGNUP</title>
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <!-- https://fonts.google.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo-video-catalog.css">
    
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">

	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<!--

TemplateMo 552 Video Catalog

https://templatemo.com/tm-552-video-catalog

-->
<body style="background-color: #999999;">
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
	 <% 
if(session.getAttribute("name")!=null)
{
	
%>
	<div class="tm-page-wrap mx-auto">
		<div class="position-relative">
			<div class="potition-absolute tm-site-header">
				<div class="container-fluid position-relative">
					<div class="row">						
                        <div class="col-7 col-md-4">
                            <!-- <a href="index.html" class="tm-bg-black text-center tm-logo-container">
                                <i class="fas fa-video tm-site-logo mb-3"></i>
                                <h1 class="tm-site-name">Video Catalog</h1>
                            </a> -->
                        </div>
                        <div class="col-5 col-md-8 ml-auto mr-0">
                            <div class="tm-site-nav">
                                <nav class="navbar navbar-expand-lg mr-0 ml-auto" id="tm-main-nav">
                                   
                                </nav>
                            </div>
                        </div>
					</div>
				</div>
			</div>
			<div class="tm-welcome-container tm-fixed-header tm-fixed-header-1">
				<div class="text-center">
					<p class="pt-5 px-3 tm-welcome-text tm-welcome-text-2 mb-1 text-white mx-auto"><font size="140">Please Fill all Details Asked Below.</font><br><a href="Manager.jsp"><h2><font color="white">Go back to <u> DASHBOARD.</u> </font></h2></a> </p>                	
				</div>                
            </div>

			<!-- Header image -->
            <div id="tm-fixed-header-bg"></div> 
		</div>

		

                
                <div class="limiter">
		<div class="container-login100">
		<form class="login100-form validate-form" action="Signup" method="post" onSubmit = "return checkPassword(this)">	 
					
					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">Full Name</span>
						<input class="input100" type="text" name="name" placeholder="Name..." required >
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<input class="input100" type="text" name="email" placeholder="Email addess..." required>
						<span class="focus-input100"></span>
					</div>
					&nbsp;
				
					<select class="browser-default custom-select custom-select-lg mb-3" name="gender" required>
					  
					  <option selected>Gender</option>
					  <option value="male">Male</option>
					  <option value="female">Female</option>
					  <option value="trans">Trans</option>
					
					</select>
				
					<div class="wrap-input100 validate-input" data-validate="Enter Date Of Birth" >
						<span class="label-input100">Date Of Birth</span>
						<input class="input100" type="date" name="dob" placeholder="Date Of Birth" required>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Enter Blood Group" >
						<span class="label-input100">Phone </span>
						<input class="input100" type="text" name="phone" placeholder="Phone Number" required>
						<span class="focus-input100"></span>
					</div> 
					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Aadhar</span>
						<input class="input100" type="text" name="aadhar" placeholder="Aadhar number" required>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Special mark on body</span>
						<input class="input100" type="text" name="ans" placeholder="Security Question" max="100"  required autocomplete="off" autocapitalize="off" accept="small">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="focus-input100"></span>
					</div>
					<input class="browser-default custom-select custom-select-lg mb-3" name="desig"  value="cust" type="hidden"  required>
					 
					 
					  
					
					
					

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="pass" id="txtPassword" placeholder="*************" required>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Repeat Password is required" >
						<span class="label-input100">Repeat Password</span>
						<input class="input100" type="password" name="passw"  id="txtConfirmPassword" placeholder="*************" required>
						<span class="focus-input100"></span>
					</div>
					

				<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a> 
								</span>
							</label>
						</div>

						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Sign Up
							</button>
						</div>
						</div>
						</form>

						
  
					</div>
				 
			 </div>
		</div>
		
	
                
             
                
                
                <footer class="row pt-5">
                    <div class="col-12">
                        <p class="text-right">Copyright 2020   UNO Bank                      
                        - Designed by <a href="https://templatemo.com" rel="nofollow" target="_parent">Riyaz</a></p>
                    </div>
                </footer>
			

    <%}
else
{
	response.sendRedirect("Login.jsp");
}%>
</body>
</html>