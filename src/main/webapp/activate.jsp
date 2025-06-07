<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>I N R I K</title>

<link rel="icon" href="${contextPath}/resources/images/inrik_logo2.png">
<link rel="icon" href="${contextPath}/resources/images/inrik_logo2.png" width='120px' height='50px'>
<link href="<c:url value='resources/css/bootstrap/5.3/bootstrap.min.css'/>" rel="stylesheet">
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
<body width='800px'>    
      <div style='valign:top;padding-left:30px'> 
		<img src="resources/images/inrik_logo3_white.png">
	  </div> 
   <center>
   <div id="activateDiv" width='800px'></div>

   <div  id='activationTable' width='800px'>
     <div  class="text-nowrap bd-highlight" style="width: 25rem;">
      We have sent an email to you.<br>
	  Please use provided activation code and activate your account</div>
	   	<br>
	   
		<table> 
			<td align='center'>   
				<input id='emailAddressId' value="" size="40" class="form-control" placeholder="Email Address">     &nbsp; 	
				<br>
				<span onclick="resendActivationCode()" style=' border:1;
				   border:2px solid #c0c0c0;background:#f5f5f5;padding:4px;position:relative'>
				    <font color='blue'> Resend my activation code </font></span>
				<br><br>
	   			<input id='activationCodeId' value="" size="40" class="form-control" placeholder="Activation code"><br>
				<span  class="btn btn-lg btn-primary btn-block"  align='right' onclick='activate()'>  Activate </span><br><br>
			</td>
		</table>
    </div>
	</center>

<script>


function resendActivationCode() {
    var activationToken = $("#activationCodeId").val();
    var username = getUrlParameter("username");
	if(username == "" || typeof username  === "undefined"){
		username =  $("#emailAddressId").val();
		alert(username);
	}
	$.ajax({
			type : "POST",
			headers : {
						'Accept' : 'application/json',
						'Content-Type' : 'application/json'
					},
			url : serverUrl
							+ "${contextPath}/activate?${_csrf.parameterName}=${_csrf.token}&resendto="+ username,
			success : function(data) {
					var imageNumbers = 0;
                    $("#activateDiv").html("<center><b><font color='green'> The activation token for yout INRIK account for: "  + data[0].username + " is sent to your email account </font></b></center>");
					$("#activationTable").hide();
            }
        });
}


function activateFromPage() {
    var activationToken = $("#activationCodeId").val();
    var username = getUrlParameter("username");
	if(username == "" || typeof username  === "undefined"){
		username =  $("#emailAddressId").val();
		alert(username);
	}
	$.ajax({
			type : "POST",
			headers : {
						'Accept' : 'application/json',
						'Content-Type' : 'application/json'
					},
			url : serverUrl
							+ "${contextPath}/activate?${_csrf.parameterName}=${_csrf.token}&activationToken="+ activationToken +"&username="+ username,
			success : function(data) {
					var imageNumbers = 0;
                    $("#activateDiv").html("<center><b>Your INRIK account for:"  + data[0].username + " is <b> activate </b> now. You should be able to login to <a href='https://inrik.com'>INRIK</a> now</b></center>");

            }
        });
}

function activate() {
    var activationToken = getUrlParameter("activationToken");
    var username = getUrlParameter("username");
   
	if(username == "" || typeof username  === "undefined"){
		username =  $("#emailAddressId").val();
		 activationToken = $("#activationCodeId").val();
	}
		$.ajax({
			type : "POST",
			headers : {
						'Accept' : 'application/json',
						'Content-Type' : 'application/json'
					},
			url : serverUrl
							+ "${contextPath}/activate?${_csrf.parameterName}=${_csrf.token}&activationToken="+ activationToken +"&username="+ username,
			success : function(data) {
					var imageNumbers = 0;
                    $("#activateDiv").html("<center><b>Your INRIK account for:"  + data[0].username + " is <b> activate </b> now. You should be able to login to <a href='https://inrik.com'>INRIK</a> now</b></center>");
					$("#activationTable").hide();

            }
        });
}

function getUrlParameter(sParam)
{
    var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
    for (var i = 0; i < sURLVariables.length; i++) 
    {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] == sParam) 
        {
            return sParameterName[1];
        }
    }
} 


$(document).ready(function() {
		// select home
		//activate();
    $("#emailAddressId").val(getUrlParameter("username"));
    $("#activationCodeId").val(getUrlParameter("activationToken"));
});

</script>
</body>
</html>