<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration Form</title>

<style type="text/css">
.error {
	color: red;
}
</style>

</head>
<body>

	<i> Fill out the form. Asterisk (*) means required. </i>
	<form:form action="processForm" modelAttribute="customer">

		<form:label path="firstName">First name: </form:label>
		<form:input path="firstName" />

		<br>
		<br>

		<form:label path="lastName">Last name(*): </form:label>
		<form:input path="lastName" />
		<form:errors path="lastName" cssClass="error" />

		<br>
		<br>

		<form:label path="freePasses">Free passes:</form:label>
		<form:input path="freePasses" />
		<form:errors path="freePasses" cssClass="error" />

		<br>
		<br>

		<form:label path="postalCode">Postal code:</form:label>
		<form:input path="postalCode" />
		<form:errors path="postalCode" cssClass="error" />

		<br>
		<br>

		<form:label path="courseCode">Course code:</form:label>
		<form:input path="courseCode" />
		<form:errors path="courseCode" cssClass="error" />

		<br>
		<br>
		<input type="submit" value="Submit">

	</form:form>
</body>
</html>