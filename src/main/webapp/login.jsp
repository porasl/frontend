<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" >
  <head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
      <title>INRIK</title>
      <link rel="icon" href="${contextPath}/resources/images/inrik_logo3_white.png">
	    <link href="${contextPath}/resources/css/bootstrap/5.3/bootstrap.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/style.css" rel="stylesheet"> 
      <link href="${contextPath}/resources/css/index.css" rel="stylesheet"> 
      <script src="${contextPath}/resources/js/showFeatures.js" type="text/javascript"></script>
      <script src="${contextPath}/resources/js/config.js" type="text/javascript"></script>
      <script src="${contextPath}/resources/js/hlsjs.js"></script>
         <script>
            function isMobile(){
             return (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ); 
            }

            if(isMobile()){
              window.location='https://inrik.com/mobile';
            }
              
         </script>
  </head>

  <body  class=''>
   <table align='center' bprder="1"  width="1200">,
   
   <!--  <td  valign='top' align='center' class='leftDivFirstPage'> -->
   <td  valign='top'>
   <div><img src="resources/images/inrik_logo3_white.png" width='190'></div> 
     	<br>
     	<div style='font-size:30px;color:#6899D3;font-weight: bold'>
     		We give you more choice to share your ideas
     	</div>
     	
     	<div style='font-size:20px;font-weight:bold'>
     	 	We are different, we don't sell your private data, we pay you</div>
      <div style='font-size:20px'> 
        We distribute the ad income
     	</div>
   </td>
   <td valign='top'>
    <div class="container">
      <form method="POST" action="${contextPath}/login" class="form-signin">
        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" bgcolor="6899D3" type="submit">Log In</button>
            <br>
            <h6 class="text-center"><a href="${contextPath}/registration">Create an account</a></h5>

            <table width='400px'>
              <td width='200px'>
                 <font color="blue"><a href="${contextPath}/forgot-password">Forgot password</a></font>
              </td>
              <td width='200px'>
                <font color="blue"><a href="${contextPath}/activate.jsp">Activate account</a></font>
              </td>
            </table>
        </div>
      </form>
    </div>
      </td>
      </table>
      <br>
      
      <center> <table><td style='width:250;padding:10px'>
                <div  style='width:250;padding:30px'>
                <span style="float:left">
                       <b> Sea and Palms 1 </b></span> <span style="float:right"><b> 12/18/2020</b></span></div>
            <video height="250" id="video1" controls></video>
                   </td>
                   
                <td style='width:250;padding:10px'> 
                <div  style='width:250;padding:30px'>
                <span style="float:left">
                       <b> Sea and Palms 2 </b></span> <span style="float:right"><b> 12/18/2020</b></span></div>
            <video height="250" id="video2" controls></video>
             </td>
             <td style='width:250;padding:10px'> 
                <div  style='width:250;padding:30px'>
                <span style="float:left">
                       <b> Flying over palms </b></span> <span style="float:right"><b> 12/18/2020</b></span></div>
            <video height="250" id="video3" controls></video>
             </td><tr>
            <td style='width:250;padding:10px'>
            <div  style='width:250;padding:30px'>
                <span style="float:left">
                       <b> Women's Pole Vault - Oslo - 2018 </b></span> <span style="float:right"><b> 12/18/2020</b></span></div>
            <video height="250" id="video4" controls></video>
             </td>
             <td style='width:250;padding:10px'> 
             <div  style='width:250;padding:30px'>
             <span style="float:left">
                       <b> Sonia Malavisi   Ancona 2019 </b></span> <span style="float:right"><b> 12/18/2020</b></span></div>

            <video height="250" id="video5" controls></video>
             </td>
             <td style='width:250;padding:10px'>
             <div  style='width:250;padding:30px'>
             <span style="float:left">
                       <b> Women's Pole Vault - Zurich 2018 </b></span> <span style="float:right"><b> 12/18/2020</b></span></div>
            <video height="250" id="video6" controls></video>
             </td></table>
          </center>
      <div id='featured'></div>
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap/5.2/bootstrap.min.js"></script>

     <script>
        if(Hls.isSupported()) {
          var video1 = document.getElementById('video1');
          var hls = new Hls({
              debug: true    
          });
          hls.loadSource('https://inrik.com/test/stream.m3u8');
          hls.attachMedia(video1);
          hls.on(Hls.Events.MEDIA_ATTACHED, function() {
            video1.muted = true;
            video1.autoplay='autoplay';
            video1.loop='loop';
            video1.muted='muted';
            video1.play();
        });
        
          var video2 = document.getElementById('video2');
          var hls = new Hls({
              debug: true    
          });
          hls.loadSource('https://inrik.com/nature/2/stream.m3u8');
          hls.attachMedia(video2);
          hls.on(Hls.Events.MEDIA_ATTACHED, function() {
            video2.muted = true;
            video2.autoplay='autoplay';
            video2.loop='loop';
            video2.muted='muted';
            video2.play();
        });

          var video3 = document.getElementById('video3');
          var hls = new Hls({
              debug: true    
          });
          hls.loadSource('https://inrik.com/nature/1/stream.m3u8');
          hls.attachMedia(video3);
          hls.on(Hls.Events.MEDIA_ATTACHED, function() {
            video3.muted = true;
            video3.autoplay='autoplay';
            video3.loop='loop';
            video3.muted='muted';
            video3.play();
        });

          var video4 = document.getElementById('video4');
          var hls = new Hls({
              debug: true
          });
          hls.loadSource('https://inrik.com/sport/1/stream.m3u8');
          hls.attachMedia(video4);
          hls.on(Hls.Events.MEDI4A_ATTACHED, function() {
            video4.muted = true;
            video4.autoplay='autoplay';
            video4.loop='loop';
            video4.muted='muted';
            video4.play();
          });

          var video5 = document.getElementById('video5');
          var hls = new Hls({
              debug: true
          });
          hls.loadSource('https://inrik.com/sport/2/stream.m3u8');
          hls.attachMedia(video5);
          hls.on(Hls.Events.MEDIA_ATTACHED, function() {
            video5.muted = true;
            video5.autoplay='autoplay';
            video5.loop='loop';
            video5.muted='muted';
            video5.play();
          });

          var video6 = document.getElementById('video6');
          var hls = new Hls({
              debug: true
          });
          hls.loadSource('https://inrik.com/sport/3/stream.m3u8');
          hls.attachMedia(video6);
          hls.on(Hls.Events.MEDIA_ATTACHED, function() {
            video5.muted = true;
            video5.autoplay='autoplay';
            video5.loop='loop';
            video5.muted='muted';
            video5.play();
          });

          var video6 = document.getElementById('video6');
          var hls = new Hls({
              debug: true
          });
          hls.loadSource('https://inrik.com/sport/3/stream.m3u8');
          hls.attachMedia(video6);
          hls.on(Hls.Events.MEDIA_ATTACHED, function() {
            video6.muted = true;
            video6.autoplay='autoplay';
            video6.loop='loop';
            video6.muted='muted';
            video6.play();
          });
       }
      </script>
  </body>
</html>