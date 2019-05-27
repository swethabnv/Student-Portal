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

<div style="padding-top:100px;padding-left:300px;">

<p style="font-style:verdana;font-size:20px;margin-left:200px;color:#f5d100;"><b>Update Student Data</b></p>	
<br>
<form class="form-horizontal" action="edit" >
  <div class="form-group">
   
    <label class="control-label col-sm-2" for="sid">Please Enter the Student ID to Edit the record</label>
    <div class="col-sm-10">
      <input type="text" required class="form-control" id="sid"  name="sid" placeholder="Enter ID">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name:</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="name"  name="name" placeholder="Enter name">
    </div>
  </div>
 <div class="form-group">
    <label class="control-label col-sm-2" for="campus">Campus:</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="campus"  name="campus" placeholder="Enter campus">
    </div>
  </div>
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="grade">GradeLevel:</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="grade"  name="grade" placeholder="Enter GradeLevel">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="year">Year:</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="year"  name="year" placeholder="Enter year">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="date">Entry Date:</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="datepicker"  name="date" placeholder="Enter Date" >
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" style="background-color:#0071bc;color:white">Submit</button>
    </div>
  </div>
</form>

	<p style="padding-left:60px;font-size:20px;color:#f5d100;" id="smsg"> ${result }</p>
	



	</div>

</div>
<div class="footer" style="background-color:#29abe2;width:100%;height:100px">

<div style="padding-top:15px;padding-bottom:15px;">
	
				
					<p style="margin-left:40% !important;font-size:10px;color:white;" >
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