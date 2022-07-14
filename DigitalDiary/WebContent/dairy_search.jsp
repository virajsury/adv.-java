<%@page import="com.cdac.dto.Dairy"%>
<%@page import="java.util.List"%>
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

    <title>DigitalDiaryr</title>
</head>
<body style="width:100vw;">
    <div>
        <nav class="navbar navbar-dark navbar-expand-md sticky-top" id="app-navbar">
        <div class="container-fluid"><a class="navbar-brand" href="#"style="font-size:25px;color:white;"><i class="fa fa-life-ring" id="brand-logo"></i>DigitalDiary</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <tr>
                        <td> <a href="logout.jsp" style="color:white;margin-right: 10px;">Logout</a> </td>
                    </tr>

                    <!-- <li class="nav-item" role="presentation"><a class="nav-link" href="#">Sign up</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">Sign in</a></li> -->
                </ul>
            </div>
        </div>
     </nav>
    </div>

    
            <!-- Write home code here -->
            
            <div class="row" style="width: 100vw;height: 100vh;">
        <div style="height: 100vh;width: 100vw; background-image: url(particle.jpg);background-repeat: no-repeat;background-position: center;background-size: cover;">
            <table style=" margin-left: 750px; margin-top: 100px;width: 300px;font-family: Sofia;">
          <form action="dairy_search.htm">
                <div style="margin-left: 750px;margin-top: 100px;">
                    <input type="date">
                    <input style="margin-left: 20px;" type="submit" value="search">
                </div>

            </form>
		<thead>
                <tr style="font-size: 20px; text-align: center">
                
                  <th scope="col">Title</th>
                  <th scope="col">Date</th>
                  <!-- <th scope="col">Data</th>-->
                  <th scope="col">Modify</th>
                  <th scope="col">Delete</th>  
                </tr>
               </thead>
          
              <tbody>
               <% 
		List<Dairy> slist = (List<Dairy>)request.getAttribute("searchList");
		for(Dairy sea : slist){
		%>
                <tr style="text-align: center">
                  <td><%=sea.getTitle()%></td>
                  <td><%=sea.getContentDate()%></td>
                
                  <%-- <td><%=dai.getDairyData()%></td> --%>
                  <td><a href="dairy_delete.htm?dairyId=<%=sea.getDairyId()%>">Delete</a>
                				</td>
                				<td>
				<a href="dairy_update_form.htm?dairyId=<%=sea.getDairyId()%>">Update</a>
			</td>
                	
                </tr>
                </tbody>
                <% } %>
                <tr>
                <td>
				<a href="home.jsp" >Back</a>
			</td>
			</tr>
              </table>
            
        
        </div>
        
        </div>
        



            
</body>
</html>
<% 
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>
   
   
   
   
   
   