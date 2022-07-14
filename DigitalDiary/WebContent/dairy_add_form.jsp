
<%@page import="com.cdac.dto.User"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
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

    <spr:form action="dairy_add.htm" method="post" commandName="dairy"><!-- POST -->
    <div style="margin-left: 900px;margin-top: 200px; font-family: Sofia;  style=color: black; text-decoration: none;font-size: 30px;">Add Diary</div>

        <div style="margin-top:250px;"></div>
            <!-- Write home code here -->
            <div style="margin-bottom: -50px;">
        <div  style=" margin-left: 300px; font-size: 20px; margin-top: 10px; color: black;font-family: Sofia; ">Hello<br><br><%=(session.getAttribute("user")!=null) ? ((User)session.getAttribute("user")).getEmailId() : "!!!!!!!!" %> </div>
        
   
        
                <div style="margin-left: 775px;margin-top: -200px; font-family: Sofia;  style=color:black;text-decoration: none;font-size: 20px;">Title: 
                
                	<spr:input style="border: 0px; background-color: transparent;color: black;margin-left: 10px;" path="title"/> </div>


                <div style="margin-left: 775px;margin-top: 20px; font-family: Sofia;  style=color:black;text-decoration: none;font-size: 20px;">Date: 
                
                	<spr:input style="border: 0px; background-color: transparent;color: black;margin-left: 10px;" path="contentDate"/> </div>

                
                <div style="margin-left: 775px;margin-top: 20px; font-family: Sofia;  style=color:black;text-decoration: none;font-size: 20px;">Diary: 
                
                	<div style="margin-top:10px">
                	
                	<spr:textarea rows = "5" cols = "30" path="dairyData"/></textarea></div>
                	
                	 </div>
    </div>



        <div style="margin-left: 870px;margin-top: 70px;font-family: Sofia;font-size: 20px;">
        
        
        <input type="submit" value="Back" style="text-decoration: none" formaction="home.jsp">
       	<input type="submit" value="Add" style="text-decoration: none"> 
        </div>
        
</spr:form>
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















