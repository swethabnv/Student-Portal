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
 <script type="text/javascript">
 
 

 
 function validateForm()    {
	    var RE = /^\d+$/;
		  var x = document.getElementById("searchkey").value;
	    	if(!RE.test(x)){
	    		alert("GradeLevel is Numeric");
	    		return false;
	    		
	    	}
	    }
	
 
 </script>
  
</head>

<body>
<div class="header" >
<nav class="navbar navbar-default">
  <div class="container-fluid" ">
    <div class="navbar-header">
      <a style="font-size:35px;font-style:Courier;padding-top:20px;padding-left:10px;color:#f5d100" class="navbar-brand" href="#">Student Portal</a>
    
    </div>
  
    <ul class="nav navbar-nav navbar-right" style="padding-top:20px;">
      <li><a href="index.jsp"><span id="white"> Home</span></a></li>
      <li><a href="Welcome.jsp"> <span id="white">Enroll Student</span></a></li>
      <li><a href="view.jsp"> <span id="white">Edit Student</span></a></li>
   
    <li><form class="navbar-form" action="view">
      
      <button type="submit" class="btn btn-default" id="btnset"><span id="white">Student List</span></button>
    </form></li>
    
    <li><form onsubmit="return validateForm()" class="navbar-form " action="search" >
      <div class="form-group">
        <input type="text" required class="form-control" placeholder="Enter Grade Level" name="searchkey"  id="searchkey" style="width:100% !important;">
      </div>
      <button type="submit" class="btn btn-default" style="border:1px solid transparent;background-color:#0071bc;" ><span id="white">Search</span></button>
      
    </form>
     </ul>
  </div>
</nav>

</div>



<!-- some Js here -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>