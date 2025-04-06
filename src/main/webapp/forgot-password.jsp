<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Forgot My Password</title>
<link rel="icon" href="${contextPath}/resources/images/inrik_logo2.png">
<link rel="icon" href="${contextPath}/resources/images/inrik_logo2.png"
	width='120px' height='50px'>
<link
	href="<c:url value='resources/css/bootstrap/5.3/bootstrap.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='resources/css/dragdrop.css' />"
	rel="stylesheet">
<link href="<c:url value='resources/css/index.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/dragdrop.css' />"
	rel="stylesheet">
<link href="<c:url value='resources/css/style.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/common.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/jquery-ui.css' />"
	rel="stylesheet">

</head>
<body>
	<center>
	<div class="container">
	<h2 class="form-signin-heading">Forgot My Password</h2>
	<form:form method="POST" modelAttribute="userForm" class="form-signin">
	    <div class="form-group ${error != null ? 'has-error' : ''}">
        <span>${message}</span>
			<spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Email Address"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>
			
			<spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

			<input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					
			<button class="btn btn-lg btn-primary btn-block" bgcolor="6899D3"
					type="submit">Log In</button>
				<h4 class="text-center">
					<a href="${contextPath}/registration">Create an account</a>
				</h4>
		</form:form>

	</center>
	</div>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap/4.2.1/bootstrap.min.js"></script>
</body>
</html>