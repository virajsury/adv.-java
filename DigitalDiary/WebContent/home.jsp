<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.cdac.dto.User"%>
<%@ include file="cache_control.jsp" %>
<%	
	User user = (User)session.getAttribute("user");
	if(user !=null && user.getUserId()>0)
	{

%>    
    

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <title>DigitalDiary</title>
</head>
<style>
    body{
        background-image: url(particle.jpg);
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>

<body style="width:100vw;">
    <div>
        <nav class="navbar navbar-dark navbar-expand-md sticky-top" id="app-navbar">
        <div class="container-fluid"><a class="navbar-brand" href="#"style="font-size:25px;color:white;"></i><i class="fa fa-edit" style="font-size:24px"></i>
            DigitalDiary</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <tr>
                        <td> <a href="logout.jsp" style="color:white;margin-right: 20px;text-decoration: none;font-size: 20px;">Logout</a> </td>
                    </tr>

                    <!-- <li class="nav-item" role="presentation"><a class="nav-link" href="#">Sign up</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">Sign in</a></li> -->
                </ul>
            </div>
        </div>
     </nav>
    </div>

        <div style="margin-top:200px;"></div>
            <!-- Write home code here -->
            <div style="margin-bottom: -50px;">
        <div  style=" margin-left: 300px; font-size: 20px; margin-top: 10px; color: black;font-family: Sofia; ">Hello<br><%=(session.getAttribute("user")!=null) ? ((User)session.getAttribute("user")).getEmailId() : "!!!!!!!!" %>
        </div>
                <div style="margin-left: 850px; font-family: Sofia; "><a href="prep_dairy_add_form.htm" style="color:black;text-decoration: none;font-size: 20px;">Add Dairy</a></div>
                <div style="margin-left: 850px; font-family: Sofia;margin-top: 50px; "><a href="dairy_list.htm" style="color:black;text-decoration: none;font-size: 20px;">Dairy List</a></div>
    			
    </div>

        <!-- <div class="row" style="height: 50px; width: 50px;">
            <div style="background-image: url(diary.jpg); background-repeat: no-repeat;background-size: cover;"></div>
        </div> -->

        <div style="height: 450px;width: 1350px;"></div>


   
        
</body>
</html>

<% 
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>


