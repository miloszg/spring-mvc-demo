<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>Customer Confirmation</head>
<body>

	The customer is confirmed: ${customer.firstName} ${customer.lastName} 
	<br />
	<%-- From: ${student.country}
	<br />
	Favourite programming language: ${student.favoriteLanguage }
	<br />
	Operating System: 
	<ul>
		<c:forEach var="temp" items="${student.operatingSystem }">
			<li>${temp}</li>
		</c:forEach>
	</ul> --%>
</body>

</html>