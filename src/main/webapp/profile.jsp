<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Create an account</title>

      <link href="${contextPath}/resources/css/bootstrap/5.3/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

      <link href="<c:url value='resources/css/bootstrap/5.2/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value='resources/css/dragdrop.css' />"  rel="stylesheet">
    <link href="<c:url value='resources/css/index.css' />" rel="stylesheet">
    <link href="<c:url value='resources/css/dragdrop.css' />" rel="stylesheet">
    <link href="<c:url value='resources/css/style.css' />" rel="stylesheet">
    <link href="<c:url value='resources/css/common.css' />" rel="stylesheet">
    <link href="<c:url value='resources/css/jquery-ui.css' />" rel="stylesheet">

    <script src="${contextPath}/resources/js/jquery-1.12.0.js"></script>
    <script src="${contextPath}/resources/js/jquery-3.3.1.slim.min.js"></script>
    <script src="${contextPath}/resources/js/popper.min.js"></script>
    <script src="${contextPath}/resources/js/tether.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap/5.2/bootstrap.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-2.1.1.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.js"></script>

    <script> window.Tether = {}; </script>
    <script src="${contextPath}/resources/js/config.js" type="text/javascript"></script>
    <script src="${contextPath}/resources/js/post.js" type="text/javascript"></script>
    <script src="${contextPath}/resources/js/menu/stmenu.js" type="text/javascript"></script>
  </head>

<script type="text/javascript">
    
    $( function() {
        $("#birthDatepickerId").datepicker();
    });
    
</script>

  <body>
    <div>
    <!--   
        <form:form method="POST" modelAttribute="userForm">
         
            <table width="1000px" align="center"> 
             <td>
            <h2 class="form-signin-heading">Create your account</h2>
              <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Username"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>
            </td>
            <td>
            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>
            </td>
            <td>
            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>
            </td><tr>
            <td>
             <spring:bind path="name">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="name" class="form-control" placeholder="name"
                                autofocus="true"></form:input>
                    <form:errors path="name"></form:errors>
                </div>
            </spring:bind>
            </td>
            <td>
            <spring:bind path="lastname">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="lastname" class="form-control" placeholder="lastname"
                                autofocus="true"></form:input>
                    <form:errors path="lastname"></form:errors>
                </div>
            </spring:bind>
            </td>
            <spring:bind path="birthday">
               <td align="left" style="size:10;display:block" id="birthDateTd">
					<font size='2'>Birth Date:</font> 
					<input type="text" id="birthDatepickerId"  size="10"></td>
            </spring:bind>
            </td><tr>
            <td>
              <spring:bind path="city">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="city" class="form-control" placeholder="City"
                                autofocus="true"></form:input>
                    <form:errors path="city"></form:errors>
                </div>
            </spring:bind>
            </td>
            <td>
            <spring:bind path="country">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="country" class="form-control" placeholder="Country"
                                autofocus="true"></form:input>
                    <form:errors path="country"></form:errors>
                </div>
            </spring:bind>
            </td>
            <td>
             <spring:bind path="title">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="title" class="form-control" placeholder="Work Title"
                                autofocus="true"></form:input>
                    <form:errors path="title"></form:errors>
                </div>
            </spring:bind>
            </td> <tr>
            <td>
            
            </td>
          <td>
        </form:form>
        </td>
        </table>
        <table width="800">
        <td>
         <spring:bind path="photopath">
            	<form class="my-form">
				<input type="file" id="fileElemVideo" accept="image/*"
					onchange="handleFilesVideo(this.files)"> <label
					class="button" for="fileElemVideo">Upload Your Profile Photo</label>
				</form>
            </spring:bind>
        </td>
        <td>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
            </td>
        </table>
    </div>
       -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap/4.2.1/bootstrap.min.js"></script>
  </body>
</html>