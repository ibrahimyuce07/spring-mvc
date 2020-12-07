<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
</head>
<body>

	<table>

<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Student ID</th>
					<th>Department</th>
					<th>Action</th>

				</tr>
				
				<c:forEach var="tempStudent" items="${students}"> 

					<tr>
						<td>${tempStudent.id}</td>
						<td>${tempStudent.firstName}</td>
						<td>${tempStudent.lastName}</td>
						<td>${tempStudent.studentId}</td>
						<td>${tempStudent.department}</td>
						<td>
							<!-- display the update link --> <a href="${updateLink}"
							style="color: green;">Update</a> | <a href="${deleteLink}"
							style="color: red;"
							onclick="if (!(confirm('Are you sure?'))) return false">Delete</a>
						</td>
					</tr>

</c:forEach>
	</table>

</body>
</html>