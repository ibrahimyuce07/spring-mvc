<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="..\resources\css\forms.css">
<title>Customer Form</title>
</head>


<body>

	<div class="container">

		<form:form action="processAddForm" modelAttribute="customer">

			<form:input path="firstName" placeholder="First Name" />
			<form:errors path="firstName" cssClass="error" />
			<br>
			<form:input path="lastName" placeholder="Last Name" />
			<form:errors path="lastName" cssClass="error" />
			<br>
			<form:input path="petName" placeholder="Pet Name" />
			<form:errors path="petName" cssClass="error" />
			<br>


			<form:select path="petSpecies">
				<option value="" disabled selected>Select your pet's
					species</option>
				<form:options items="${customer.petSpeciesList}" />
			</form:select>

			<br>

			<form:input path="petAge" type="number" placeholder="Pet Age" min="0" />
			<form:errors path="petAge" cssClass="error" />
			<br>
			<form:input path="phoneNumber" placeholder="Phone Number" />
			<form:errors path="phoneNumber" cssClass="error" />
			<br>
			<form:input path="mail" type="email" placeholder="E-mail" />
			<form:errors path="mail" cssClass="error" />
			<br>
			<form:input type="date" path="arrivalDate" />
			<br>
			<form:textarea path="comments" placeholder="comments" />
			<br>
			<input type="submit" value="Submit" />



		</form:form>

	</div>

</body>

<footer>
	<a href="/pet-hotel-web">Main Menu</a>

</footer>

</html>