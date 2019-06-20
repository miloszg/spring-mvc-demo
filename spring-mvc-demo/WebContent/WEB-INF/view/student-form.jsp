<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>Student Registration Form</head>
<body>

	<form:form action="processForm" modelAttribute="student">
	First name: <form:input path="firstName"/>
	<br /><br />
	Last name: <form:input path="lastName"/>
	<br /><br />
	<form:select path="country">
		<form:options items="${student.countryOptions}" />
	</form:select>
	<br /><br />
	Favorite Language:
	Java<form:radiobutton path="favoriteLanguage" value="Java"/>
	C#<form:radiobutton path="favoriteLanguage" value="C#"/>
	PHP<form:radiobutton path="favoriteLanguage" value="PHP"/>
	Ruby<form:radiobutton path="favoriteLanguage" value="Ruby"/>
	<br /><br />
	Operating System:
	Linux<form:checkbox path="operatingSystem" value="Linux"/>
	MAC OS<form:checkbox path="operatingSystem" value="Mac"/>
	Windows<form:checkbox path="operatingSystem" value="Windows"/>
	<br /><br />
	<input type="submit" value="Submit" />
	
	
	</form:form>

</body>

</html>