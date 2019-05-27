<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"  import="com.student.model.Student,java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>K University</title>
</head>
<body>
 <%@include file="/header.jsp" %>

<div class="design" style="background-color:white;width:100%;height:550px">

<div style="padding-top:100px;padding-left:450px;">
<div id="scrollable">
<table class="table table-striped" style="width:590px !important;background-color:white;">
<tr>
<th>Student Id</th>
<th>Name</th>
<th>Campus</th>
<th>GradeLevel</th>
<th>Year</th>
<th>EntryDate</th>
</tr>
<%
ArrayList<Student> studentList =  (ArrayList<Student>) request.getAttribute("studentList");

 for (Student st : studentList) {%>
    
     <tr>
      <td> <%out.println(st.getSid());%></td>
 
   <td>  <%out.println(st.getName());%></td>
    <td> <%out.println(st.getCampus());%></td>
 
   
   <td> <%out.println(st.getGrade());%></td>
 
   <td>  <%out.println(st.getYear());%></td>
   
    <td>  <%out.println(st.getDate());%></td>
     </tr>
<%}

 
%>
</table>


</div>
</div>


</div>

<div class="footer" style="background-color:#29abe2;width:100%;height:100px">

<div style="padding-top:15px;padding-bottom:15px;">
	
				
					<p style="margin-left:40% !important;font-size:10px;color:white;" >
						<a href="#" id="white">Terms of Use</a> | <a href="#" id="white">Privacy Policy</a> | <a href="#" id="white">Cookie Policy</a>
					</p>
				
				
			</div>
</div>

</html>