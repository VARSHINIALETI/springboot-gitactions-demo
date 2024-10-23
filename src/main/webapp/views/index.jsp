<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<h2>Student Enquiry Form</h2>
<p><font color='green'>${msg}</font></p>




<form:form action = "save" modelAttribute="student" method="POST">
<table>
<tr>
<td>Name:</td>
<td> <form:input path="name" /> </td></tr>
<tr><td>Email:</td>
<td><form:input path="email" /> </td></tr>
<tr><td>Gender:</td>
<td> <form:radiobutton path="gender" value ="M"/>Male 
<td> <form:radiobutton path="gender" value ="F"/>Fe-Male </td></tr>

<tr> <td>Courses:</td>
<td> <form:select path="courses" > 
<form:option value="">--Select--</form:option>
<form:options items = "${courses}" />
</form:select></td></tr>

<tr> <td>Timings</td>
			
			
			
				<td><form:checkboxes items="${timings}" path="timings" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>


			








