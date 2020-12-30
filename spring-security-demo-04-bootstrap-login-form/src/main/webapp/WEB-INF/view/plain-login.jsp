<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Login Page</title>

<style>
	.failed {
	color: red;
	}
</style>

</head>
<body>

 <h3>My Custom Login Page</h3>
 <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
 	
 	<!-- Check for login error -->
 	
 	<c:if test="${param.error != null}">
 	
 		<i class="failed">Sorry! You entered invalid username/password</i>
 	
 	</c:if>
 	
 	<p>
 		<label for="username">User name: </label>
 		<input type="text" name="username" id="username"/>
 	</p>
 	<p>
 		<label for="password">Password: </label>
 		<input type="password" name="password" id="password"/>
 	</p>
 
 	<input type="submit" value="Login"/>
 </form:form>

</body>
</html>