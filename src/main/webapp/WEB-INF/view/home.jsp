<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>

	<h2>
		luv2code Company Home Page
	</h2>
	
	<hr>
	
	<p>
		Welcome to the luv2code company home page!
	</p>

	<hr>
		<p>
			User: <security:authentication property="principal.username"/>
			<br><br>
			Role(s); <security:authentication property="principal.authorities"/>
		</p>	
	<hr>

	<hr>
		<!-- Add a link to point to /leaders... this is for the managers -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
			(Only for Admin folk4)
		</p>
		
				<!-- Add a link to point to /systems... this is for the admins -->
		<p>
			<a href="${pageContext.request.contextPath}/admins">IT Systems Meeting</a>
			(Only for Manager folk)
		</p>
	<hr>


	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
				<input type="submit" value="Logout" />
	</form:form>
	
</body>

</html>