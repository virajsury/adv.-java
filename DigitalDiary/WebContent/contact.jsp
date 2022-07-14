<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Contact Us</title>
<link rel="stylesheet" href="contact.css" />
</head>
<body>
   	<div class="sticky-top">
        <nav class="navbar navbar-dark navbar-expand-md " style=" background: linear-gradient(120deg,#c2c2a3, #2e2e1f);">
        <div class="container-fluid"><a class="navbar-brand" href="#"style="font-size:25px;color:white;"><i class="fa fa-life-ring" id="brand-logo"></i>DigitalDiary</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                 	<tr>
                        <td><a href="index.jsp" style="color:white;margin-right: 10px;font-size:16px;">Home</a></td>
                    </tr>
                </ul>
            </div>
        </div>
     </nav>
    </div>
	

    <div >
        <div class="container" >
        <form id="contactus" action="" method="post">
            <h3>Contact Us form</h3>
            <fieldset> <input placeholder="Name" type="text" tabindex="1" required autofocus> </fieldset>
            <fieldset> <input placeholder="Email Address" type="email" tabindex="2" required> </fieldset>
            <fieldset> <textarea placeholder="Type your message here..." tabindex="5" required></textarea> </fieldset>
            <fieldset> <button name="submit" type="submit" id="contactus-submit" data-submit="...Sending">Send </Nowbutton> </fieldset>
        </form>
    </div>
</div>

</body>
</html>