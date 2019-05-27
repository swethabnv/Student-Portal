<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Portal</title>
${request.getContextPath()}

<link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
 <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
            
            $("#smsg").show();
            setTimeout(function() { $("#smsg").hide(); }, 5000);
        </script>
  
</head>

<body>
 <%@include file="/header.jsp" %>

<div class="design" style="background-color:white;width:100%;height:550px">
<div class="jumbotron jumbotron-fluid" style="background-color:#f2f2f2; color:#0071bc;">
  <div class="container">
    <h1>Welcome!</h1> 
    <p>Please Enroll to Student Portal.. </p> 
  </div>
</div>
<table class="table table-striped " style="width:100px;margin-left:400px;">

<tr><td><a href="Welcome.jsp"><button class="btn btn-default" id="btnset1">Enroll</button></a></td></tr>
<tr><td><a href="view.jsp"> <button class="btn btn-default" id="btnset1">Update</button></td></tr>
<tr><td><form class="navbar-form" action="view">
      
      <button type="submit" class="btn btn-default" id="btnset1">View</button>
    </form></td></tr>


</table>


</div>
<div class="footer" style="background-color:#29abe2;width:100%;height:100px">

<div style="padding-top:15px;padding-bottom:15px;">
	
				
					<p style="margin-left:40% !important;font-size:10px;color:white;">
						<a href="#" id="white">Terms of Use</a> | <a href="#" id="white">Privacy Policy</a> | <a href="#" id="white">Cookie Policy</a>
					</p>
				
				
			</div>
</div>
</div>



<!-- some Js here -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>