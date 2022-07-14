<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="login_form.css" />

<meta charset="ISO-8859-1">
<title>Registration Form</title>
</head>
<body>

	<div class="full" style="width:100vw;
 	height:100vh;
	background: linear-gradient(#304FFE , #EEEEEE );">
	<spr:form action="reg.htm" method="post" commandName="user" >
	<!--For all screen-->
<div class="page" style="justify-content:center; align-items:center;">
    <!--Login & Signup in single row-->
    <div class="row" style="width:64vw;" >
        <!--Column for signin-->
        <div class="col-sm-8 text-center signin">
            <!-- Default form login -->
            <form action="#!">
                <p class="h4 mb-4 text-center signintext top"><strong>Create an account</strong></p>
                <!--Login with Social Media Buttons-->
                <div class="social-btn text-center"> <a href="#" class="btn btn-primary btn-lg" title="Facebook"><i class="fa fa-facebook"></i></a> <a href="#" class="btn btn-info btn-lg" title="Twitter"><i class="fa fa-twitter"></i></a> <a href="#" class="btn btn-danger btn-lg" title="Pinterest"><i class="fa fa-pinterest"></i></a> </div>
                <p class="text-center signintext">Or Use Your Email Account</p> 
                <!-- first name -->
                <tr>
					<td>
						<spr:input type="text" class="form-control mb-4" placeholder="First Name" style="font-family:Arial, required" path="firstName"/>
						<font color="red" ><spr:errors path="firstName" ></spr:errors></font>
					</td>
				</tr>
				
				<!-- last name -->
				<tr>
					<td>
						<spr:input type="text" class="form-control mb-4" placeholder="Last Name" style="font-family:Arial, required" path="lastName"/>
						<font color="red" ><spr:errors path="lastName" ></spr:errors></font>
					</td>
				</tr>
                <!-- Email -->
                <tr>
					<td>
						<spr:input type="email" class="form-control mb-4" placeholder="Email" style="font-family:Arial, required" path="emailId"/>
					</td>
				</tr>
                <!-- Password -->
                 <tr>
					
					<td>
						<spr:input type="password" class="form-control mb-4" placeholder=" Password" style="font-family:Arial,  required" path="userPass"/>
						<font color="red" ><spr:errors path="userPass" ></spr:errors></font>
					</td>
				</tr>
				
                 <tr>
                  <td>
                   		<input style="border-radius: 25px; width: 25%;
                   			margin: auto;background-color: royalblue;border: solid 1px white;
                   			font-size: 20px" type ="submit" value="Register" >
           		  </td>
           		 </tr>
           		 
                 <!-- Sign in button -->
                 <tr>
                  <td>
                   		<a class="ForgotPassBtn" style="   font-size:10px;" href="prep_log_form.htm" >Already An User?</a> 
                  </td>
                 </tr>
                 
            </form>
        </div>
        <!--Column for signin-->
        <div class="col-sm-4 signup text-center">
            <h2 class="HelloFriend" style= "color:white;"> Hello, Friend!</h2>
            <h4 class="SignupText">Enter your personal details<br>and start journey with us</h4> 
        </div>
    </div>
</div>
	</spr:form>
</body>
</html>