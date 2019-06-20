<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>Student Confirmation</head>
<body>

	The student is confirmed: ${student.firstName} ${student.lastName} 
	<br />
	From: ${student.country}
	<br />
	Favourite programming language: ${student.favoriteLanguage }
	<br />
	Operating System: 
	<ul>
		<c:forEach var="temp" items="${student.operatingSystem }">
			<li>${temp}</li>
		</c:forEach>
	</ul>
</body>

</html>