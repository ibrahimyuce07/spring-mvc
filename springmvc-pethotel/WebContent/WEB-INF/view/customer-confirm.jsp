<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Customer Confirmation Page</title>
<link rel="stylesheet" type="text/css"
	href="..\resources\css\forms.css">
</head>




<body>
<div class="container">
<p>
<b>The customer is confirmed:</b>
<br><br>
<b>Customer:</b> ${customer.firstName}  ${customer.lastName} <br>
<b>Pet:</b> ${customer.petName}  -  ${customer.petSpecies}  -  ${customer.petAge} <br>
<b>Contact:</b> ${customer.phoneNumber}  -   ${customer.mail}  <br>
<b>Date:</b> ${customer.arrivalDate}<br>
<b>Comment:</b> ${customer.comments}
 </p>
</div>


</body>
<footer>
	<a href="/pet-hotel-web">Main Menu</a>
</footer>
</html>