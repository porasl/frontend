  //Modal
      function showProfileModal(username) {
      	var albumUrl = serverUrl + "${contextPath}/profile?username=${pageContext.request.userPrincipal.name}&${_csrf.parameterName}=${_csrf.token}";
      	$.ajax({
      				type : "GET",
      				headers : {
      					'Accept' : 'application/json',
      					'Content-Type' : 'application/json'
      				},
      				url : profileUrl,
      				//async: false,
      				success : function(data) {
      					var contentNames = data[0].contentNames.split(";");
      					var images = "<table>";
      					for (i = 0; i < contentNames.length - 1; i++) {
      						if (i % 4 == 0) {
      							images += "<tr>";
      						}
      						var bigImagePath = data[0].imagePath +"/"+contentNames[i];
      						images += "<td><div style='margin: 15px; border: solid 1px;'><input type='checkBox'>"
      								+ " <img src='resources/images/fb.png' width='15'> &nbsp;"
      								+ "<img src='resources/images/twit.png' width='15'> &nbsp; "
      								+ "<img src='resources/images/whats.png' width='15'> &nbsp; "
      								+ "<img src='resources/images/insta.png' width='15'> &nbsp; "
      								+ "<img src='resources/images/mail.png' width='15'><br><img src='images/tmpImages/"+ bigImagePath +"' width=150  height=150></div></td>";
      					}
      					images += "</table>";
      
      					$('#modal_body').html("");
      					$('#modal_body').html(
      							"<font size='4'><b>" + decodeURI(data[0].name)
      									+ "</b></font>" + "<br> "
      									+ decodeURI(data[0].description)
      									+ "<br>" + images);
      				},
      
      				error : function(xhr, status, error) {
      					var errorMessage = xhr.status + ': ' + xhr.statusText
      					alert('Error - ' + errorMessage);
      				}
      			});
      
      	return false;
      } 