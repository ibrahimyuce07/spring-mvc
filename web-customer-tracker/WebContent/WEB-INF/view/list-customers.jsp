<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<title>Customers List</title>
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Customer Relationship Manager</h2>

		</div>
	</div>

	<div id="container">
		<!--  add a search box -->
		<form:form action="search" method="GET">
                Search customer: <input type="text" name="theSearchName" />

			<input type="submit" value="Search" class="add-button" />
		</form:form>
		<div id="content">

			<!-- put new button: CREATE customer -->
			<input type="button" value="Add Customer"
				onclick="window.location.href='showFormForAdd'; return false;" />
			<!-- add out html table here -->

			<table>
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>

				</tr>

				<!-- loop over and print our customers READ LIST -->
				<c:forEach var="tempCustomer" items="${customers}">

					<!-- construct and UPDATE link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<!-- construct and DELETE link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<tr>
						<td>${tempCustomer.id}</td>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td>
							<!-- display the update link --> <a href="${updateLink}"
							style="color: green;">Update</a> | <a href="${deleteLink}"
							style="color: red;"
							onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>
					</tr>

				</c:forEach>

			</table>
		</div>
	</div>

</body>
</html>