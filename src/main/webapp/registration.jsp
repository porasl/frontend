<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Create an account</title>
<link rel="icon" href="${contextPath}/resources/images/inrik_logo2.png">
<link rel="icon" href="${contextPath}/resources/images/inrik_logo2.png" width='120px' height='50px'>
<link href="<c:url value='resources/css/bootstrap/5.3/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='resources/css/dragdrop.css' />"  rel="stylesheet">
<link href="<c:url value='resources/css/index.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/dragdrop.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/style.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/common.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/jquery-ui.css' />" rel="stylesheet">
  </head>

  <body>
    <div class="container">
        <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <div class="form-group ${error != null ? 'has-error' : ''}">
        <span>${message}</span>
            <h2 class="form-signin-heading">Create your account</h2>
            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Email Address"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="fullname">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="fullname" class="form-control" placeholder="e.g. John Jonson"
                                autofocus="true"></form:input>
                    <form:errors path="fullname"></form:errors>
                </div>
            </spring:bind>
           
            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>
             <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>
            
            
            <spring:bind path="channelname">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="channelname" class="form-control" placeholder="e.g. German Food Channel"
                                autofocus="true"></form:input>
                    <form:errors path="channelname"></form:errors>
                </div>
            </spring:bind>
            
              <spring:bind path="phonenumber">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="phonenumber" class="form-control" placeholder="Phone number"
                                autofocus="true"></form:input>
                    <form:errors path="phonenumber"></form:errors>
                </div>
            </spring:bind>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
        </form:form>
            
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap/4.2.1/bootstrap.min.js"></script>
  </body>
</html>