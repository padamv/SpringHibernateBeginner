<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
		<form:label path="firstName">First name:</form:label>
		<form:input path="firstName"/>

		<br><br>
		<form:label path="lastName">Last name:</form:label>
		<form:input path="lastName" />

		<br><br>
		
		<form:label path="country">Country:</form:label>
		<form:select path="country">
		
			<form:options items="${student.countryOptions}"/>
		
		</form:select>
		
		<br><br>
		Favorite Language:<br>
		
		<form:label path="" for="Java">Java</form:label>
		<form:radiobutton path="favoriteLanguage" value="Java" id="Java"/>
		<form:label path="" for="C#">C#</form:label>
		<form:radiobutton path="favoriteLanguage" value="C#" id="C#"/>
		<form:label path="" for="PHP">PHP</form:label>
		<form:radiobutton path="favoriteLanguage" value="PHP" id="PHP"/>
		<form:label path="" for="Ruby">Ruby</form:label>
		<form:radiobutton path="favoriteLanguage" value="Ruby" id="Ruby"/>
		
		<br><br>
		Operating Systems: <br>
		<form:label path="" for="Linux">Linux</form:label>
		<form:checkbox path="operatingSystems" value="Linux" id="Linux"/>
		<form:label path="" for="Windows">MS Windows</form:label>
		<form:checkbox path="operatingSystems" value="MS Windows" id="Windows"/>
		<form:label path="" for="MacOS">Mac OS</form:label>
		<form:checkbox path="operatingSystems" value="Mac OS" id="MacOS"/>
		
		<br><br>
		
		<input type="submit" value="Submit" />
	</form:form>

</body>
</html>