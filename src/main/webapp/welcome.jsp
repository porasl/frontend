<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>I N R I K</title>

<link rel="icon"
	href="${contextPath}/resources/images/inrik_logo3_white.ico"
	width='200px' height='80px'>
<link
	href="<c:url value='resources/css/bootstrap/5.3/bootstrap.css'/>"
	rel="stylesheet">
<link href="<c:url value='resources/css/dragdrop.css' />"
	rel="stylesheet">
<link href="<c:url value='resources/css/index.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/style.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/common.css' />" rel="stylesheet">
<link href="<c:url value='resources/css/jquery-ui.css' />"
	rel="stylesheet">
	
<script src="${contextPath}/resources/js/jquery-1.12.0.js"></script>
<script src="${contextPath}/resources/js/jquery-3.3.1.slim.min.js"></script>
<script src="${contextPath}/resources/js/popper.min.js"></script>
<script src="${contextPath}/resources/js/tether.min.js"></script>
<script
	src="${contextPath}/resources/js/bootstrap/5.2/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/jquery-2.1.1.min.js"></script>
<script src="${contextPath}/resources/js/jquery-ui.js"></script>
<script> window.Tether = {}; </script>
<script src="${contextPath}/resources/js/config.js"
	type="text/javascript"></script>
<script src="${contextPath}/resources/js/post.js" type="text/javascript"></script>
<script src="${contextPath}/resources/js/confirm.js"
	type="text/javascript"></script>
<script src="${contextPath}/resources/js/modes.js"
	type="text/javascript"></script>
<script src="${contextPath}/resources/js/menu/stmenu.js"
	type="text/javascript"></script>
<script src="${contextPath}/resources/js/stringUtils.js"
	type="text/javascript"></script>
<script src="${contextPath}/resources/js/channel.js"
	type="text/javascript"></script>
<script src="${contextPath}/resources/js/modal.js"
	type="text/javascript"></script>


<script type="text/javascript">
         window.google_analytics_uacct = "UA-15926901-3";
         var mainImage = "";
         var username ="";
         function showAlbumSubMenu() {
         	document.getElementById("albumsubMenu").style.display = 'block';
         }
         
         function hideAlbumSubMenu() {
         	document.getElementById("albumsubMenu").style.display = 'none';
         }
            
            $( function() {
                $("#eventDatepickerId").datepicker();
                $("#memeoryDatepickerId").datepicker();
               // showDropArea();
              } );
            
           // showDropArea();
      </script>
</head>
<body class='body'>
	<center>
		<table align='center' bgcolor='#eeeeee'>
			<td align='center' width='170px'>
				<div id="channelIconDiv"></div>
			</td>
		</table>

		<table bgcolor='#eeeeee' align='center'> 
			<td valign="top" id='leftColumn'>
				<!--    Plaseholder for postinfoid -->
				<div id="postinfoid" style="display: none"></div> <diiv
					id="itemInfoId" style="display:none"></diiv>
				<div id="logo2">
					<img src="resources/images/inrik_logo3d_gray.png"
						onclick="homeSelected()">
				</div> <br>
				<button class='btn  btn-sm m-2' padding='15px'
					id='createPostRightbanner' onclick="showDropArea()">
					<img src='resources/images/defaultProfile.png' padding-left="80px"
						width='70px'> <b> My Profile</b>
				</button> <br>
				<button class='btn  btn-sm m-2' padding='15px' id='createPostRightbanner' onclick="showDropArea()">
					<img src="resources/images/bergman.png"><b> Create a Post</b>
				</button> <br>
				<button class='btn  btn-sm m-2' padding='15px'
					id='myChannelRightbanner' onclick="myChannelSelected()">
					<img src="resources/images/myChannel_selected.png" width="130px"">
				</button> <br>

				<button class='btn  btn-sm m-2' padding='15px'
					id='publicVideobanner' onClick="publicVidosSelected()">
					<img src="resources/images/public_video_selected.png" width="90px"
						height="60px"><b> Public Videos</b>
				</button> <br>
				<button class='btn  btn-sm m-2' padding='15px'
					id='myPhotoRightbanner' onclick="myPhotosSelected()">
					<image src="resources/images/myphotos.png" width="80px""> <b>
						My Photos </b>
				</button> <br>

				<button class='btn  btn-sm m-2' padding='15px' id='addContact'
					onclick="myDiarySelected()">
					<img src="resources/images/diary.jpg" width='90'><b> My
						Diary</b>
				</button> <br> <br>
				<div class='' valign='top'>
					<font color='#6899D3'><b> Popular Channels </b></font>
					<div align='left'>
						<li>Inrik's News Channel </i>
						<li>Inrik's Music Channel </i>
						<li>Art Channel </b>
						</li>
						<li>German Food </b></li>
					</div>
				</div> <br> <c:if
					test="${pageContext.request.userPrincipal.name != null}">
					<form id="logoutForm" method="POST" action="${contextPath}/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <a
							onclick="document.forms['logoutForm'].submit()"> <img
							src="resources/images/logout.png" width="40px"></a>
					</form>
				</c:if> <!---
                  <script type="text/javascript">
                  google_ad_client = "pub-0934845296487679";
                  /* 160x600, created 8/11/08 */
                  google_ad_slot = "4310898637";
                  google_ad_width = 160;
                  google_ad_height = 600;
                  </script> <script type="text/javascript"  src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
                  -->
			</td>
			<td valign='top' id='notDroppable' padding="50px">
				<div id=" " box-shadow='2px 3px #888888'>
					<div id="homeDiv" border="1">
						<table align='center' id='main_tab1' width="1100">
							<td align='center' valign='top'>
					<!--			    <button class='btn btn-primary btn-sm m-2' padding='15px' id='createPostRightbanner'
						     onclick="showDropArea()"><img src="resources/images/bergman.png"><b>Create a Post</b> </button>
                    -->
								<div class='topPostCreationbanner'></div>
								<!--  set class modal -->
							<div id="dropAreaPost" tabindex="-1"  align='center' class="modal feed"> 
									<div class="modal-dialog  modal-lg" align='center' valign='top'>
										<div id="modal-content" class="modal-content" >
											<div class="modal-header">
												<h5 class="modal-title">Create Post</h5>
											</div>
											<div class="modal-body">

												<div id='uploadingId' class="uploading">Uploading ...</div>
												<div id="content">
													<div id="row">
														<div id=left align='left'>
															<div id='publicPost'>
																<input type="checkbox" id="publicSwitch" checked>
																<label for="publicSwitch">Public</label> <br> <input
																	type="checkbox" id="memorySwitch"
																	onclick="displayMemeory(this.id)"> <label
																	for="memorySwitch">Memory</label> <br> <input
																	type="checkbox" id="eventSwitch"
																	onclick="displayEvent(this.id)"> <label
																	for="eventSwitch">Event</label>
															</div>
														</div>
														<div id="middle" align='middle'>
															<div class="form-group shadow-textarea">
																<textarea class="form-control z-depth-2"
																	id="postTextArea" rows="5" cols="60"
																	onfocus='showPostComponents()'
																	style="background-color: #lightgray"
																	placeholder="Type a text or drag an image or Video file here ..."></textarea>
															</div>
														</div>
														<div id="right" valign='top'>
															<form class="my-form">
																<input type="file" id="fileElem" multiple
																	accept="image/*" onchange="handleFilesPost(this.files)">
																<label id="cameraIconLabel" class="button"
																	for="fileElem"> <img id="cameraIconImage"
																	src="resources/images/browse.png" border='0'
																	width='35px'></label>
															</form>
														</div>
													</div>
													<br>
													<table width='500'>
														<td align="left" style="size: 10; display: none"
															id="eventDateTd"><font size='2'>Event Date:</font> <input
															type="text" id="eventDatepickerId" size="10"></td>
														<td align="right" id="memeoryDateTd"
															style="size: 10; display: none"><font size='2'>Memory
																Date: </font> <input type="text" id="memeoryDatepickerId"
															size="10"></td>
													</table><br>
												</div>
												<div id="videoAttach" style="display: none"></div>
												<div id="videoAttachSub" style="display: none"></div>
												<div id="imageAttach" style="display: none"></div>
												<div id="imageAttachSub" style="display: none"></div>
												<div id="audioAttach" style="display: none"></div>
												<div id="audioAttachSub" style="display: none"></div>
												<div id="otherAttach" style="display: none"></div>
											</div>

											<div d="submitDiv" class="modal-footer" align-="center">
												<button type="button" id='closeButton' class="btn btn-secondary">Close</button>
												  &nbsp;&nbsp;&nbsp;&nbsp;
												<button type="button" onclick="sendThePost()" id='textPostButton' class="btn btn-primary">Post</button>
											</div>
										</div> 
									</div>
								</div> <!-- Removed BR 
                           <span id='editMyProfile'>  -->
								<div id="posts" color="#000000"></div>
							</td>
							<td valign='top' align='center'>
								
								<!--  Right column   ***********************--> <!--  
						   <button class='btn btn-primary btn-sm m-2' padding='15px' id='createPostRightbanner'
						     onclick="showDropArea()"> <img src="resources/images/send.png"><b>Create a Post</b> </button>
                           -->
								<div>
									<div id="dropBoxIconDiv">
										<img src="resources/images/desktopview.png" height="100px"
											title='Content Box' onclick="contectboxSelected()">
									</div>
									<br> <br> <b>Sponsored </b> <br>
									<button class='btn  btn-sm m-2' padding='15px' id='addContact'
										onclick="addContact()">
										<img src="resources/images/logo_bazar_shadow.jpg" width='170'
											height='50'>
									</button>
									<br>
									<div class='myContents'>
										<img src='resources/images/currency.jpg' width='150px'>
										<hr>
										<img src='resources/images/news_publisher.png' width='150px'>
									</div>

									<button class='btn  btn-sm m-2' padding='15px' id='addContact'
										onclick="myPhotosSelected()">
										<img src="resources/images/photo_selected.png" width='90'><b>
											Add friends</b>
									</button>
									<br>
								</div>
							</td>
						</table>
					</div>
					<div id="myChannelDiv" class='myChannelDivClass'>
						<table id='addMyVideoTable' align='center'>
							<td>
								<div id="drop-area" align='center'>
									<form class="my-form">
										<p>Upload with the file dialog or by dropping file onto
											the dashed region</p>
										<input type="file" id="fileElemVideo" accept="image/*"
											onchange="handleFilesVideo(this.files)"> <label
											class="button" for="fileElemVideo">Upload Video File</label>
									</form>
								</div> <br>
							</td>
						</table>
						<table class="padding-tasble-column" align='center'>
							<tr>
								<td valign='top' class="channelSetting" id='settingcol1'>
									<fieldset>
										<legend class='legend'>Visible to </legend>
										<input type="radio" id="publicRadio" name="scope"
											value="public" checked> <label for="piublic">Public</label><br>
										<input type="radio" id="contactsRadio" name="scope"
											value="connection"> <label for="contactsRadio">Contact
											list</label><br> <input type="radio" id="privateRadio"
											name="scope" value="private"> <label
											for="privateRadio">Private </label>
									</fieldset>
								</td>
								<td class="channelSetting" id='settingcol2'><input
									id='channelNameNewId' value="" size="10" class="form-control"
									placeholder="Channel Name"> <br>
									<div id="drop-area-channel-logo">
										<form>
											<center>
												<p>Drop channel logo here</p>
												<input type="file" id="fileElemVideo" accept="image/*"
													onchange="handleChannelIcon(this.files)"> <label
													class="button" for="fileElemVideo">Upload Channel
													logo </label>
											</center>
										</form>
									</div></td>
								<td valign='top' class="channelSetting" id="settingcol3">
									<div class="channelHashTags">
										<textarea id="channelHashTagsId" name="channelHashTagsId"
											rows="3" cols="25" class="form-control"
											placeholder="#HashTag1 #HashTag2 #Hashtag3"></textarea>
									</div>
									<div class="channelHashTags">
										<textarea id="channeltagsId" name="channeltagsId" rows="3"
											cols="25" class="form-control"
											placeholder="e.g: Nature, movie, game"></textarea>
									</div>
								</td>
								<td valign='top' class="channelSetting" id='settingcol4'>
									<fieldset>
										<legend class='legend'>Accessibility </legend>
										<input type="radio" id="activeYesid" name="active"
											value="active" checked> <label for="activeYesid">Active</label><br>
										<input type="radio" id="susspendchannelId" name="active"
											value="susspended"> <label for="susspendchannelId">Suspend
											</lable>
									</fieldset> <input type="checkbox" id="featuredYesId" name="featured"
									checked> <label for="featuredYesId">Featured</label>
								</td>
								<td class="channelSetting" id='settingcol5' valign='bottom'>
									<br> <br> <br> <br> <br>
									<div valign='bottom' padding="10px" class="button"
										id='saveSettingsbtn' onclick='saveChannelsettings();'>Save
										Settings</div>
								</td>
								<td valign='top' width="100px" id='settingcol6' align='right'>
									<br>
									<div padding="10px" id='hideSettingsbtn'
										onclick='hideSettings();'>
										<img src='resources/images/cancel.png' width='20px'>
									</div>

								</td>
							</tr>
						</table>
						<div id='notDroppable1' width="800px">
							<table width="800px" id="savePanel" style="display: none"></table>
						</div>
						<div id="searchDiv"></div>
						<table bgcolor='white'>
							<td valign='top'>
								<table>
									<td valign='top'>
										<div id="myVideoChannelMain" align="center" valign='top'></div>
										<div id="channelHeaderId">
											<table width="100%" bgcolor='white'>
												<td><img src="resources/images/sport_logo.png"
													width='50px'> <b><span id='channelNameId'>
															Channel Name </span> </b></td>
												<td width='200' align='center' valign='middle'>Like: <b>
														<span id='likeid'> 15 </span>
												</b>
												</td>
												<td width='200' align='center' valign='middle'>View: <b>
														<span id='viewid'> 1 </span>
												</b>
												</td>
												<td align='right'><img src='resources/images/mail.png'
													width='60px' onclick="showEmailForm()"
													title='Send an email'> <img
													src='resources/images/comments.png' width='40px'
													onclick="writecopmments()" title='Write a Comment'></td>
											</table>
										</div>
										<div id='videoComments' align='left' style='display: none'>
											<b> Comments: </b>
											<hr>
										</div>
									</td>

									<td valign='top' align='center'>
										<div id="myChannelVideos"
											style="align: center; background-color: white; width: 250px; valign: middle; padding-top: 15px"></div>
									</td>
								</table>
							</td>
							</tr>
						</table>
					</div>
					<div id="myPhotoDiv" align='center' background-color="#000000"
						style='display: none'>
						<div id="drop-area-image" align='center' style='display: none'>
							<form class="my-form">
								<p>Upload with the file dialog or by dropping images onto
									the dashed region</p>
								<input type="file" id="fileElemImage" accept="image/*"
									onchange="handleFilesImage(this.files)"> <label
									class="button" for="fileElemImage">Upload an Image</label>
							</form>
						</div>
						<br>
						<table width='1000' align="center">
							<td align='center' bgcolor="#000000">
								<div id='bigImage' align='center'></div>
							</td>
							<td align='center' bgcolor="#000000" valign='top'><br>
								<div id='addImageId' align='center' valign='top' width='100px'>
									<img src="resources/images/add.png" width='30px'
										onclick='showAndHide("drop-area-image", "addImageId")'>
									<br> <br> <img src="resources/images/cancel.png"
										width='30px' onclick='deleteSelectedImage()'> <br>
									<br> <img src="resources/images/edit-icon.png"
										width='30px' onclick='editSelectedImage()'> <br>
								</div></td>
						</table>
						<table>
							<td align="center" bgcolor="#000000">
								<div id="myAlbumLinks" class='myAlbumLinks'></div>
							</td>
						</table>
					</div>
					<div id="myContentBoxDiv" style='display: none'>
						<div id="dropBox">
							<div id='harddrive'>
								<table width='1100px'>
									<td align='center'><img
										src="resources/images/harddrive.png" width="80px"
										height="60px" onclick='showDropBoxFolders()'> <br>
										<font color="white" size="2">Inrik Drive</font></td>
									<td align='center'>
										<div class="dropContentstyleCdrive" id='contentBox'>
											<div class='divBoxBorderC'></div>
											<div id='headerVideo' class='headerDivBoxC'>
												<table width="650px">
													<td>Inrik (c:)</td>
													<td align='center' width='50px'><img
														src='resources/images/closeIcon.png' width='15px'
														onclick="hide('contentBox');"></td>
													<tr>
														<td align='center'>
															<table>
																<td id='videoFolderDiv' class='cfolderCellStyle'><img
																	src="resources/images/videoFolder.png" height='60px'
																	width='60px' id='videoFolderImage'
																	onclick="showVideoContentBox()"> <br> <font
																	color="black" size="2">Videos</font></td>
																<td id='photoFolderDiv' class='cfolderCellStyle'><img
																	src="resources/images/photoFolder.png" height='60px'
																	width='60px' id='photoFolderImage'
																	onclick="showPhotoContentBox()"> <br> <font
																	color="black" size="2">Photo & images</font></td>
																<td id='audioFolderDiv' class='cfolderCellStyle'><img
																	src="resources/images/photoFolder.png" height='60px'
																	width='60px' id='audioFolderImage'
																	onclick="showAudioContentBox()"> <br> <font
																	color="black" size="2">Audios</font></td>
																<td id='otherFolderDiv' class='cfolderCellStyle'><img
																	src="resources/images/otherFolder.png" height='60px'
																	width='60px' id='otherFolderImage'
																	onclick="showOtherContentBox()"> <br> <font
																	color="black" size="2">Other Files</font></td>
															</table>
														</td>
												</table>
											</div>
										</div>
									</td>
									<td align='right'>
										<div id='canId' ondrop="dropToCan(event)"
											ondragover="allowDrop(event)">
											<img src="resources/images/trash_can_empty.png" width="80px">
										</div>
									</td>
								</table>
								<table>
									<td>
										<!----- drop box content--> <br> <br>
										<table>
											<td valign='top'>
												<!---   Video Clips frame-->
												<div class="headerDivBoxclass" id='videoContentBox'>
													<table width="650px">
														<td>My Video Clips</td>
														<td align='right' width='50px'><img
															src='resources/images/closeIcon.png' width='15px'
															onclick="hide('videoContentBox')"></td>
													</table>
													<div class="dropContentstyle" id='videoContentBoxFiles'>
													</div>
													<div class="footerStyle" id='videofooterId'></div>
												</div>
												<div id='photoContentBox' class='headerDivBoxclass'>
													<table width="650px">
														<td>Images</td>
														<td align='right' width='50px'><img
															src='resources/images/closeIcon.png' width='15px'
															onclick="hide('photoContentBox')"></td>
													</table>
													<div class="dropContentstyle" id='photoContentBoxFiles'>
													</div>
													<div class="footerStyle" id='photofooterId'></div>
												</div>
												<div id='audioContentBox' class='headerDivBoxclass'>
													<table width="650px">
														<td>My Audio files</td>
														<td align='right' width='50px'><img
															src='resources/images/closeIcon.png' width='15px'
															onclick="hide('audioContentBox')"></td>
													</table>
													<div class="dropContentstyle" id='audioContentBoxFiles'>
													</div>
													<div class="footerStyle" id='audiofooterId'></div>
												</div>
												<div id='otherContentBox' class='headerDivBoxclass'>
													<table width="650px">
														<td>My Documents</td>
														<td align='right' width='50x'><img
															src='resources/images/closeIcon.png' width='15px'
															onclick="hide('otherContentBox')"></td>
													</table>
													<div class="dropContentstyle" id='otherContentBoxFiles'>
													</div>
													<div class="footerStyle" id='otherfooterId'></div>
												</div>
											</td>
											<td valign='top'>
												<!---   Photo and  Image frame  --> <!----- temo-->
												<div id="tmpContentDiv" align='center'></div>
										</table>
									</td>
								</table>
								<br>
							</div>
						</div>
					</div>
				</div>
			</td>
		</table>
		<!------  Confirmation popup -->
		<div class="confirm" id="confirmId">
			<div>
				<div align='center'>
					Are you sure you want to do this? <br> <input id="confirmYes"
						type="button" value="Yes" /> <input id="confirmNo" type="button"
						value="No" />
				</div>
			</div>
		</div>
</body>
<script type="text/javascript">
      var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "https://www.");
      document.write(unescape("%3Cscript src='"
      				+ gaJsHost
      				+ "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
      try {
      	var pageTracker = _gat._getTracker("UA-15926901-2");
      	pageTracker._trackPageview();
      } catch (err) {}
      
      
         function homeSelected(){
       	$('#homeIconDiv').html("<center><img src='resources/images/home_selected.png' width='40px' title='Home' onclick='homeSelected()'></center>");
      //	$('#channelIconDiv').html('<center><img src="resources/images/myChannel_notSelected.png" width="130px" onClick="myChannelSelected()"></center>');	
      //	$('#publicVideosIconDiv').html('<center><img src="resources/images/public_video_not_selected.png" height="50px" onClick="publicVidosSelected()"></center>');
      	//$('#photoIconDiv').html('<center><img src="resources/images/photo_not_selected.png" height="40px" ttile="Photo and Images" onclick="myPhotosSelected()"> </center>');
      	//$('#dropBoxIconDiv').html('<center><img src="resources/images/content_box.png" width="90px" title="Content Box" onClick="contectboxSelected()"></center>');
      	$('#homeDiv').show();
      	$('#myAlbumLinks').hide();
      	$('#myChannelDiv').hide();
      	$('#myPhotoDiv').hide();
      	$('#myContentBoxDiv').hide();
      	$('#publicVideosDiv').hide();
      	$('#createPostRightbanner').show();
        $('#leftColumn').show();
      }
      
      function myChannelSelected(){
       	$('#homeIconDiv').html('<center><img src="resources/images/home_not_selected.png"  width="40px" title="Home" onclick="homeSelected()"></center>');
      	$('#publicVideosIconDiv').html('<center><img src="resources/images/public_video_not_selected.png" height="50px" onClick="publicVidosSelected()"></center>');	
      	$('#photoIconDiv').html('<center><img src="resources/images/photo_not_selected.png" height="40px" ttile="Photo and Images" onclick="myPhotosSelected()"></center>');
      	$('#dropBoxIconDiv').html('<center><img src="resources/images/content_box.png" width="90px" title="Content Box" onClick="contectboxSelected()"></center>');		  
		$('#channelIconDiv').html('<img src="resources/images/setting_temp.png" width="25px" id="settingBtn" title="Settings" onclick="showSettings()">&nbsp;&nbsp;&nbsp;<span  padding="10px" class="btn btn-primary" id="addMyChannelVideo" style="display:none" onclick="showChannelDropArea()">Add Video</span>');
      	$('#homeDiv').hide();
      	$('#myChannelDiv').show();
      	$('#myAlbumLinks').hide();
      	$('#myPhotoDiv').hide();
      	$('#myContentBoxDiv').hide();
      	$('#publicVideosDiv').hide();
      	$('#createPostRightbanner').hide();
      	//$('#leftColumn').hide();
      	hide("addMyVideoTable");
      	show("addMyChannelVideo");
      }
      
      function publicVidosSelected(){
      	$('#homeIconDiv').html('<center><img src="resources/images/home_not_selected.png"  width="40px" title="Home" onclick="homeSelected()"></center>');
      	//$('#channelIconDiv').html('<center><img src="resources/images/myChannel_notSelected.png" width="130px" onClick="myChannelSelected()"></center>');
      	//$('#publicVideosIconDiv').html('<center><img src="resources/images/public_video_selected.png" height="50px" onClick="publicVidosSelected()"></center>');	
      	//$('#photoIconDiv').html('<center><img src="resources/images/photo_not_selected.png" height="40px" ttile="Photo and Images" onclick="myPhotosSelected()"></center>');
      //	$('#dropBoxIconDiv').html('<center><img src="resources/images/content_box.png" width="90px" title="Content Box" onClick="contectboxSelected()"></center>');
      
      	$('#homeDiv').hide();
      	$('#myChannelDiv').hide();
      	$('#myPhotoDiv').hide();
      	$('#myAlbumLinks').hide();
      	$('#myContentBoxDiv').hide();
      	$('#publicVideosDiv').show();
      	$('#createPostRightbanner').hide();
      	//$('#leftColumn').hide();
      	hide("addMyVideoTable");
      }
      
      function myPhotosSelected(){
      	$('#homeIconDiv').html('<center><img src="resources/images/home_not_selected.png"  width="40px" title="Home" onclick="homeSelected()"></center>');
      	//$('#channelIconDiv').html('<center><img src="resources/images/myChannel_notSelected.png" width="130px" onClick="myChannelSelected()"></center>');
      	//$('#publicVideosIconDiv').html('<center><img src="resources/images/public_video_not_selected.png" height="50px" onClick="publicVidosSelected()"></center>');	
      	//$('#photoIconDiv').html('<center><img src="resources/images/photo_selected.png" height="40px" ttile="Photo and Images" onclick="myPhotosSelected()"> </center>');
      	//$('#dropBoxIconDiv').html('<center><img src="resources/images/content_box.png" width="90px" title="Content Box" onClick="contectboxSelected()"></center>');
      
      	$('#homeDiv').hide();
      	$('#myChannelDiv').hide();
      	$('#myPhotoDiv').show();
      	$('#myContentBoxDiv').hide();
      	$('#publicVideosDiv').hide();
      	$('#createPostRightbanner').hide();
      	$('#myAlbumLinks').show();  
      //	$('#leftColumn').hide();
      }
      
      function myAudioSelected(){
      	$('#homeIconDiv').html('<center><img src="resources/images/home_not_selected.png"  width="40px" title="Home" onclick="homeSelected()"></center>');
      	//$('#channelIconDiv').html('<center><img src="resources/images/myChannel_notSelected.png" width="130px" onClick="myChannelSelected()"></center>');
      	//$('#publicVideosIconDiv').html('<center><img src="resources/images/public_video_not_selected.png" height="50px" onClick="publicVidosSelected()"></center>');	
      	//$('#photoIconDiv').html('<center><img src="resources/images/photo_not_selected.png" height="40px" ttile="Photo and Images" onclick="myPhotosSelected()"> </center>');
      	//$('#dropBoxIconDiv').html('<center><img src="resources/images/content_box.png" width="90px" title="Content Box" onClick="contectboxSelected()"></center>');
      
      	$('#homeDiv').hide();
      	$('#myChannelDiv').hide();
      	$('#myPhotoDiv').show();
      	$('#myContentBoxDiv').hide();
      	$('#publicVideosDiv').hide();
      	$('#createPostRightbanner').hide();
      	$('myAlbumLinks').show();
      	//$('#leftColumn').hide();
      }
      
      function contectboxSelected(){
       	$('#homeIconDiv').html('<center><img src="resources/images/home_not_selected.png"  width="40px" title="Home" onclick="homeSelected()">');
      	//$('#channelIconDiv').html('<center><img src="resources/images/myChannel_notSelected.png" width="130px" onClick="myChannelSelected()">');
      	//$('#publicVideosIconDiv').html('<center><img src="resources/images/public_video_not_selected.png" height="50px" onClick="publicVidosSelected()"></center>');	
      	//$('#photoIconDiv').html('<center><img src="resources/images/photo_not_selected.png" height="40" ttile="Photo and Images" onclick="myPhotosSelected()"> ');
      	//$('#dropBoxIconDiv').html('<center><img src="resources/images/content_box_selected.png" width="90px" title="Content Box" onClick="contectboxSelected()">');
      
      	$('#homeDiv').hide();
      	$('#myChannelDiv').hide();
      	$('#myPhotoDiv').hide();
      	$('#myContentBoxDiv').show();
      	$('#publicVideosDiv').hide();
      	$('#createPostRightbanner').hide();
      	$('#myAlbumLinks').hide();
      //	$('#leftColumn').hide();
      
      }
      
      function showOtherContentBox(){
       $("#videoContentBox").hide(); 
       $("#photoContentBox").hide();
       $("#audioContentBox").hide();
       $("#otherContentBox").show('slow'); 
       $("#otherContentBoxFiles").show('slow'); 
      }
      
      function showAudioContentBox(){
       $("#otherContentBox").hide();
       $("#videoContentBox").hide();
       $("#photoContentBox").hide();
       $("#photoContentBoxFiles").hide();
       $("#audioContentBox").show('show');
       $("#audioContentBoxFiles").show('show');
      
      }
      
         function showPhotoContentBox(){
       $("#otherContentBox").hide();
        $("#videoContentBox").hide();
       $("#audioContentBox").hide();
      	  $("#photoContentBox").show('slow');
        $("#photoContentBoxFiles").show('slow');
      }
      
         function showVideoContentBox(){ 
           $("#photoContentBox").hide();
        $("#otherContentBox").hide();
        $("#audioContentBox").hide();
        $("#videoContentBox").show('slow');
        $("#videoContentBoxFiles").show('slow');
      }
      
      
      function showDropBoxFolders(){
      	$('#cDriveid').show();
      	$('#videoFolderDiv').show();
      	$('#photoFolderDiv').show();
      	$('#otherFolderDiv').show();
      	$('#videoFolderImage').show();
      	$('#photoFolderImage').show(); 
      	$('#otherFolderImage').show();
      	$('#contentBox').show();
      
      }
       
      function handleDrop(e) { 
      	  let dt = e.dataTransfer;
      	  let files = dt.files;
      	  handleFiles(files);
      	}
      
      function handleFilesPost(files) { //alert("2");
      	  uploadPostFile(files[0]);
      }
      
      function handleFilesImage(files) {
        files.forEach(uploadFile);
      }
      
      function handleFilesVideo(files) {//Invoked when video is selected by buttom ,e.g. from My Channel  
        // alert("...handleFilesVideo method for IE11");
      	preLoading();
       	([...files]).forEach(uploadFile);
      }
      
      function handleFiles(files) { // Invoked by drag and drop
          const promise =  new Promise(resolve => preLoading());
      	Promise.resolve().then( () => ([...files]).forEach(uploadFile));
      }
      
      function preLoading(){
             $("#drop-area").hide();
      	$("#drop-area-image").hide();
      	$("#addImageId").show();
      }
      
      //Drop of image for the post
      function handleDropPost(e) {//alert('6');
        let files = e.dataTransfer.files;
        uploadPostFile(files[0]);
      }
      
      function dropUpload(event) { //alert('7');
      	noop(event);
      	var files = event.dataTransfer.files;
      	for (var i = 0; i < files.length; i++) {
      		upload(files[i]);
      	}
      }
      
      $('#notDroppable').bind('dragover', function(event) {
      	event.stopPropagation();
      	event.preventDefault();
      });
      
      $('#notDroppable').bind('drop', function(event) {
      	event.stopPropagation();
      	event.preventDefault();
      });
      
        $('#notDroppable1').bind('dragover', function(event) { //alert('10');
      	event.stopPropagation();
      	event.preventDefault();
      });
      
      $('#notDroppable1').bind('drop', function(event) { //alert('11');
      	event.stopPropagation();
      	event.preventDefault();
      });
      
      
      // Upload for the POST when image, video and audio is fraggeed for upload for the post
      function uploadPostFile(file) {  //alert('12');
      	var formData = new FormData();
      	formData.append("_csrf", "${_csrf.token}");
      	formData.append("file", file); 
      
      	if(!validateFileUploadExtension(file.name)){
      		alert("Not supported format:  " + file.name);
      		return false;
      	}
      
      	username = "${pageContext.request.userPrincipal.name}";
      	formData.append("username", username);
      	
      	accessType = $('#publicSwitch').val();
      	formData.append("accessType", accessType);
      	
      	discription = $('#postTextArea').val();
      	formData.append("discription", discription);
      	
      	if($('#memorySwitch').is(':checked')){
      		memeoryDatepicker = document.getElementById("memeoryDatepickerId");
      		memoryDate =  $(memeoryDatepicker).datepicker('getDate');
      		if((memoryDate!= null) &&  (typeof  memoryDate!= 'undefined')){
      			memoryDate = memoryDate.getTime();
      		}
      	}else{
      		memoryDate = null;
      	}
      	formData.append("memoryDate", memoryDate);
      	
      	if($('#eventSwitch').is(':checked')){
      		eventDatepicker = document.getElementById("eventDatepickerId");
      		eventDate = $(eventDatepicker).datepicker('getDate');
      		if((eventDate != null) && (typeof eventDate != 'undefined')){
      			eventDate = eventDate.getTime();
      			}
      	}else{
      		eventDate = null;
      	}
      	formData.append("eventDate", eventDate);
      	
      	itemInfoId = document.getElementById("itemInfoId");
      	itemId = $(itemInfoId).val();
      	formData.append("itemId", itemId);
      	
      	isPublic = $('#publicSwitch').is(':checked');
      	formData.append("isPublic", isPublic);
      	
      	locale = "en";
      	formData.append("locale", locale);""
      	
      	// for update check postinfoid
      	postinfoid = $('#postinfoid').val(); 
      	if(postinfoid != ""){
      		formData.append("postinfoid", postinfoid);
      	}
      	
      	var xhr = new XMLHttpRequest();
      	xhr.withCredentials = false;
      	xhr.upload.addEventListener("progress", uploadPostProgress, false);
      	xhr.addEventListener("load", uploadPostComplete, true);
      	xhr.open("POST", "uploadPostServlet", false); // If async=false, then you'll miss progress bar support.
      	xhr.send(formData);
      }
      
      
      // Upload in Albums when image, video and audio is fraggeed for upload for the post
      function uploadFile(file) {
      	var formData = new FormData();
      	formData.append("_csrf", "${_csrf.token}");
      	formData.append("file", file); 
      
      	if(!validateFileUploadExtension(file.name)){
      		alert("Not supported format:  " + file.name);
      		return false;
      	} 
             $('#messageDiv').html("<font color='green'><b>Uploaded Video will be ready soon</b></font>");
      	username= "${pageContext.request.userPrincipal.name}";
      	formData.append("username", username);
      	
      	var xhr = new XMLHttpRequest();
      	xhr.withCredentials = false;
      	xhr.upload.addEventListener("progress", uploadProgress, false);
      	xhr.addEventListener("load", uploadComplete, true);
      	xhr.open("POST", "uploadServlet", false); // If async=false, then you'll miss progress bar support.
      	xhr.send(formData);
      }
      
      function uploadProgress(event) {
      	var progress = Math.round(event.loaded / event.total * 100);
      	document.getElementById("savePanel").style.display = 'block';
      }
      
      function uploadComplete(event) {
      	responseText = event.target.responseText.split("\/");
      	$("#content").show('slow');
      	$("#uploadingId").hide('slow');
      
      	$('#tmpSubFolderName').val(event.target.responseText);
      	show('addMyChannelVideo');
      	//setTimeout(function(){ loadItems() }, 15000);
      	loadItems();
      }
      
      function uploadPostProgress(event) {
      	var progress = Math.round(event.loaded / event.total * 100);
      	document.getElementById("savePanel").style.display = 'block';
      }
      
      
      //Attached upload for POST is completed
      function uploadPostComplete(event) {
      responseText = event.target.responseText.split("\/");
          $("#content").show('slow');
      	$("#uploadingId").hide('slow');
      
      	showPostComponents(); 
      	$("#imageAttach").empty();
      	$("#imageAttachSub").empty();
      	$("#videoAttach").empty();
      	$("#videoAttachSub").empty();
      	$("#audioAttach").empty();
      	$("#audioAttachSub").empty();
      	$("#otherAttach").empty(); 
      	var post = JSON.parse(event.target.responseText);
      	attachments = post[0].attachments;
      	attachments.forEach(showPostAttached);
      	$('#postinfoid').val(post[0].postinfoid);
      	
      }
      
      //Show attached Items after a post request
      function showPostAttached(item){
      		if(item.imagePath != null && item.imagePath != ""){
      			if($("#imageAttach").html() == ''){
      				$("#imageAttach").html("<img src='"+ hostname +"/"+ imagestorage +"/"+item.imagePath+"'  width='800px'>");
      				imageAttach = document.getElementById("imageAttach");
      				$(imageAttach).show('slow');
      			}else{
      				$("#imageAttachSub").append("<img src='"+ hostname +"/"+ imagestorage +"/"+item.imagePath+"' height='100px'  width='150px'>");
      				imageAttachSub = document.getElementById("imageAttachSub");
      				$(imageAttachSub).show('slow');
      			}
      		} 
      		
      		if(item.videoPath != null && item.videoPath != ""){
      			if($("#videoAttach").html() == ''){
      				$("#videoAttach").append("<video src='"+ hostname +"/"+ videostorage +"/"+item.videoPath+"'  width='300px' controls autoplay='autoplay' loop='loop'  muted='muted' title='"+ item.oldfilename+"'>");
      				videoAttach = document.getElementById("videoAttach");
      				$(videoAttach).show('slow');
      			}else{
      				$("#videoAttachSub").append("<video src='"+ hostname +"/"+ videostorage +"/"+item.videoPath+"' width='200px' height='100px'controls autoplay='autoplay' loop='loop'  muted='muted'  title='"+ item.oldfilename+"'>");
      				videoAttachSub = document.getElementById("videoAttachSub");
      				$(videoAttachSub).show('slow');
      			}
      		} 
      		
      		if(item.audioPath != null && item.audioPath != ""){
      			if($("#audioAttach").html() == ''){
      				$("#audioAttach").append("<audio controls><source src='"+ hostname +"/"+ audiostorage +"/"+item.audioPath+"'  type='audio/mpeg'   title='"+ item.oldfilename+"'></video>");
      				audiotAttach = document.getElementById("audioAttach");
      				$(audiotAttach).show('slow');
      			}else{
      				$("#audioAttachSub").append("<audio controls><source src='"+ hostname +"/"+ audiostorage +"/"+item.audioPath+"'  type='audio/mpeg' title='"+ item.oldfilename+"'></video>");
      				audiotAttachSub = document.getElementById("audioAttachSub");
      				$(audiotAttachSub).show('slow');
      				}
      		}
      		
      		 if(item.filePath !=null && item.filePath != ""){
      			$("#otherAttach").append("<td style='padding-right:20px'><a href="+hostname +"/"+ otherstorage +"/"+item.filePath+
      						" target='_blank'><img src=resources/images/"+ getImageName(item.filePath) + " title='"+ item.oldfilename+"' width='50px'></a>"+
      						"<font color='blue'>" + getFileNameFromPath(item.filePath) +"</font></td><tr>");
      			$("#otherAttach").show('slow');
      		}
      
      		$('#postinfoid').val(item.postinfoid);
      	}
      
      function getImageName(filePath){
      	var image ='defaule.png';
      	var extension= getFileExtension(filePath).toUpperCase();
      	if(extension == 'PDF'){
      		image = "pdf.png";	
      	}else if(extension == 'TXT'){
      		image = "txt.png";
      	} else if(extension == 'DOC'){
      		image = "word.png";
      	}else if(extension == 'DOCX'){
      		image = "word.png";
      	}else if(extension == 'PPT'){
      		image = "pptx.png";
      	} else if (extension == 'PPTX'){
      		image = "pptx.png";
      	} else if(extension == 'XLSX' || extension == 'CSV' ){
      		image = "xlsx.png";
      	}
      
      	return image; 
      }
      
      
      function createBigImagesRow(itemInfoId, imagePath) {
      	$("#bigImage").html("");
      	showItem = "<div  align='center'><img src='https://localhost:8081/storage/images/"+ 
      	decodeURI(imagePath)+ "' height=600px'></div>";
      	$("#bigImage").append(showItem);
      } 
      
      
      function createAlbumRow(itemInfoId, imagePath, selectedTemplate, thumbnail) {
      	var albumUrl = "album.jsp?itemInfoId=" + itemInfoId
      			+ "?${_csrf.parameterName}=${_csrf.token}";
      	album = "<div style='display:none' id='"+itemInfoId  +"' class='content-one'>"
      			+ "<img src='resources/images/fb.png' width='15'> &nbsp;"
      			+ "<img src='resources/images/twit.png' width='15'> &nbsp; "
      			+ "<img src='resources/images/whats.png' width='15'> &nbsp; "
      			+ "<img src='resources/images/camera.png' width='15'> &nbsp; "
      			+ "<img src='resources/images/mail.png' width='15'></div>";
      
      	onclickEditAlbumStr = "onclick= editAlbum('" + itemInfoId + "','" + imagePath + "','" + selectedTemplate + "');";
      	onclickShareAlbumStr = "onclick= shareAlbum('" + itemInfoId + "','"+ imagePath + "','" + selectedTemplate + "');";
      	onclickDeleteAlbumStr = "onclick= remove('" + itemInfoId + "');";
      	deleteItem = "<table  style='display:none'  id='"+itemInfoId  +"_image'><td "+ onclickDeleteAlbumStr +"><img src='resources/images/delete.png' class='myAlbum'  title='Delete Album' /> </td>";
      	editItem = "<td "+ onclickEditAlbumStr +" ><img src='resources/images/edit.png' class='myAlbum'  title='Edit Album'></td>";
      	shareItem = "<td "+ onclickShareAlbumStr +"><img src='resources/images/share2.png' class='myAlbum'  title='Share Album' > </td></table>";
      	
      	var image = "http://localhost:8081/storage/images/"+ decodeURI(imagePath);
      	showItem = "<td align='center'  onclick=showImage('"+ image +"')><div class='divBlackbg'>"+
      	"<img src='http://localhost:8081/storage/images/"+ decodeURI(imagePath)+
      	"' width='120' height='80'><br></div></td><tr>";
      	
      	document.getElementById("savePanel").style.display = 'none';
      	
      	$("#myAlbumLinks").append("<td align='center' ><table align='center' width='80px' class='divBlackbg'>"
      					+  showItem + deleteItem + editItem
      					+ shareItem + "<table><td>" + album
      					+ "</td></table></td>");
      }
      
      
      function createVideoRow(itemInfoId, videoPath, selectedTemplate, title, videoNumber) {
      	if(selectedTemplate == 0){
      		$("#myVideoChannelMain").html("<table align='center'><td align='center'><video  width='900px' controls autoplay='autoplay' loop='loop'  muted='muted'>"+
      	   "<source src='"+ hostname +"/"+ videostorage +"/"+ decodeURIComponent(videoPath)+ "'> </video> </td></table>" );
      	}
      	/*	var albumUrl = "album.jsp?itemInfoId=" + itemInfoId
      			+ "?${_csrf.parameterName}=${_csrf.token}";
      		album = "<div style='display:none;align:center' id='"+itemInfoId  +"' class='content-one'>"
      			+ "<img src='resources/images/fb.png' width='15'> &nbsp;"
      			+ "<img src='resources/images/twit.png' width='15'> &nbsp; "
      			+ "<img src='resources/images/whats.png' width='15'> &nbsp; "
      			+ "<img src='resources/images/insta.png' width='15'> &nbsp; "
      			+ "<img src='resources/images/mail.png' width='15'></div>";  */
      
      		//onclickShowDetailsPanel = "onclick= showDetailsPanel('" + itemInfoId + "'_video');";
      		onclickEditAlbumStr = "onclick= editAlbum('" + itemInfoId + "','" + videoPath + "','" + selectedTemplate + "');";
      		onclickShareAlbumStr = "onclick= shareAlbum('" + itemInfoId + "','"+ videoPath + "','" + selectedTemplate + "');";
      		onclickDeleteAlbumStr = "onclick= remove('" + itemInfoId + "');";
      
      		deleteItem = "<table  style='display:none' id='"+itemInfoId  +"_video'><td "+ onclickDeleteAlbumStr +"><img src='resources/images/delete.png' class='myAlbum'  title='Delete Album' /> </td><tr>";
      		editItem = "<td "+ onclickEditAlbumStr +" ><img src='resources/images/edit.png' class='myAlbum'  title='Edit Album'></td><tr>";
      		shareItem = "<td "+ onclickShareAlbumStr +"><img src='resources/images/share2.png' class='myAlbum'  title='Share Album' > </td></table>";
      		
      
      		showVideoItem = " <td colspan='3' bgcolor='white' width='25px' class='thumbnail'><img src='"+ 
      			decodeURIComponent(getFoldername(videoPath))+"/videoImage.gif' width='250px' padding-buttom='20px'   onclick=updateMyChannelDivContent('" + videoPath +"','"+ itemInfoId +"')>"+
      			 "<br>"+ title +  "<br></td>";
      
      		//document.getElementById("savePanel").style.display = 'none';
      
      		$("#myChannelVideos").append(showVideoItem );
      
      		//if(videoNumber > 3 && videoNumber % 4 == 0){
      			$("#myChannelVideos").append("<tr>" );
      		//}
      }
      
      function createOtherRow(itemInfoId, filePath, selectedTemplate, thumbnail) {
      	var imageName = getImageName(filePath);
      	showOtherItem = "<tr class='otherclass'><td class='otherclass'><img src='resources/images/"+ imageName +"' width='50px'></td><td><font color='blue'>" + getFileNameFromPath(filePath) +"</font></td><tr>";
      	$("#myOtherLinks").append(showOtherItem);
      }
      
      function createAudioRow(itemInfoId, audioPath, oldfilename) {
      	var audioTag ="<audio controls draggable='true' ondragstart='dragContent(event)' id='"+ itemInfoId +"'> "+
      				"<source  src='"+ hostname +"/"+ audiostorage +"/"+ audioPath +"'  type='audio/mpeg' title='"+ oldfilename+"' style='width:180px;Padding:5px'></audio><br>"+
      				"<font color='blue'>"+ oldfilename +"</font><hr><br>";
      	$("#myAudioLinks").append(audioTag);
      }
      
      function saveAlbum() {
      	tmpFolder = $('#tmpSubFolderName').val();
      	username = "${pageContext.request.userPrincipal.name}";
      	details = $('#details').val();
      	albumname = $('#albumName').val();
      	publicAlbum = $('#public').is(':checked');
      	var request = $
      			.ajax({
      				type : "POST",
      				headers : {
      					'Accept' : 'application/json',
      					'Content-Type' : 'application/json'
      				},
      				url : serverUrl+ "${contextPath}/item?${_csrf.parameterName}=${_csrf.token}",
      				//async: false,
      				data : {
      					"action" : "save",
      					"albumname" : encodeURIComponent(albumname),
      					"publicAlbum" : encodeURIComponent(publicAlbum),
      					"details" : encodeURIComponent(details),
      					"selectedTemplate" : encodeURIComponent("1"),
      					"userName" : username,
      					"tmpFolder" : encodeURIComponent(tmpFolder),
      					"thumbnail" : encodeURIComponent(mainImage)
      				},
      				success : function(data) {
      					//name = data[0].name;
      					itemInfoId = data[0].itemInfoId;
      					description = data[0].description;
      					imagePath = data[0].imagePath;
      					thumbnail = data[0].thumbnail;
      					selectedTemplate = data[0].selectedTemplate;
      					if(data[0].videoPath != ""){
      						setTimeout(function(){ loadItems() }, 15000);
      						}
      					loadItems();
      				},
      				dataType : "json"
      			});
      	document.getElementById("tmpSubFolderName").value = "";
      	$("#dropbox").html("");
      }
      
      
      function loadItems() {
      	$.ajax({
      		type : "GET",
      		headers : {
      					'Accept' : 'application/json',
      					'Content-Type' : 'application/json'
      				},
      		//async: false,
      		url : serverUrl
      						+ "${contextPath}/items?${_csrf.parameterName}=${_csrf.token}",
      		success : function(data) {
      			var imageNumbers = 0;
      			var videoNumbers = 0;
      			var audioNumbers = 0;
      			var otherNumbers = 0;
      
      			if (data !== undefined) {
      				$("#myAlbumLinks").empty();
      				$("#myChannelVideos").empty();
      				$("#myChannelVideosFeatured").empty();
      				$("myVideoChannelMain").empty();
      				$("#photoContentBoxFiles").empty();
      				$("#videoContentBoxFiles").empty();
      				$("#audioContentBoxFiles").empty();
      				$("#otherContentBoxFiles").empty();
      
      				$("#myChannelVideos").append("<center><table align='center' border-spacing='30px'>");
      				for (i = 0; data.length > i; i++) {
      					//name = data[i].name;
      					itemInfoId = data[i].itemInfoId;
      					description = data[i].description;
      					cretionDate = data[i].creationDate;
      
      					if(data[i].title != null){
      						title = data[i].filename;
      					}
      					if(data[i].imagePath != null){
      						imagePath = decodeURIComponent(data[i].imagePath);
      					}
      					if(data[i].videoPath != null){
      						videoPath = decodeURIComponent(data[i].videoPath);
      					}
      					if(data[i].audioPath != null){
      						audioPath = decodeURIComponent(data[i].audioPath);
      					}
      					if(data[i].filePath != null){
      						filePath = decodeURIComponent(data[i].filePath);
      					} 
      					if(data[i].type === "IMAGE"){
      						++imageNumbers;
      						thumbnail = data[i].thumbnail;
      						selectedTemplate = data[i].selectedTemplate;
      						if(imageNumbers < 2){
      							createBigImagesRow(itemInfoId, imagePath); 
      						}
      						createAlbumRow(itemInfoId, imagePath, 1,thumbnail);  
      						if (imageNumbers % 8 == 0) {
      							$("#myAlbumLinks").append("</tr><tr>");
      						}
      					}else if(data[i].type === "VIDEO"){// Video row
      						++videoNumbers;
      						if(videoNumbers  == 1){
      							createVideoRow(itemInfoId, videoPath, 0, "",0);
      							}else{
      								//$("#myChannelVideos").append("<tr>");
      								createVideoRow(itemInfoId, videoPath, 1, "", videoNumbers);
      							//	$("#myChannelVideos").append("</tr>");
      								}
      					} else if(data[i].type ===  "AUDIO"){
      								++audioNumbers; 
      								$("#myAudioLinks").append("<tr>");  
      								createAudioRow(itemInfoId, audioPath, data[i].oldfilename);
      								$("#myAudioLinks").append("</tr><tr>");
      					} else if(data[i].type === "OTHER"){
      								++otherNumbers; 
      								$("#myOtherLinks").append("<tr>");
      								createOtherRow(itemInfoId, filePath, 1, "");
      								$("#myOtherLinks").append("</tr><tr>");
      					}
      					
      					updateContentBox(data[i]);
      					} //for
      						//update footers
      					$("#videofooterId").html("<font color='blue'>" + videoNumbers + " Items </font>");
      					$("#photofooterId").html("<font color='blue'>"+ imageNumbers + " Items </font>");
      					$("#audiofooterId").html("<font color='blue'>"+ audioNumbers + " Items </font>");
      					$("#otherfooterId").html("<font color='blue'>"+ otherNumbers + " Items </font>");
      					}//if
      					
      					$("#myChannelVideos").append("</table>");
      					$("#messageDev").html('');
      				},
      		error : function(xhr, status, error) {
      					var errorMessage = xhr.status + ': ' + xhr.statusText;
      				}
      			});
      }	
      
       function updateContentBox(data){
      	var itemInfoId = data.itemInfoId;
      	var description = data.description;
      	var creationDate = data.creationDate;
      	var oldfilename = data.oldfilename;
      
      	if(data.imagePath != null){
      		imagePath = decodeURIComponent(data.imagePath);
      		imageFullPath = hostname +"/"+ imagestorage +"/"+ imagePath;
      		var imageTag ="<img src='"+ imageFullPath + "' style='height:80px;Padding:8px' draggable='true' ondragstart='dragContent(event)' title='"+ oldfilename+"'  id='"+ itemInfoId +
      			"'  onclick=replaceImageTag('"+ imageFullPath  +"','" + escape(oldfilename)  +"') >";	
      		$('#photoContentBoxFiles').append(imageTag);
      
      	} else if(data.videoPath != null){
      		videoPath = decodeURIComponent(data.videoPath);
      		var sourcePath = getFoldername(videoPath) +"/videoImage.gif";
      		var videoTag ="<img src='" + sourcePath + "' style='width:180px;Padding:5px' draggable='true' ondragstart='dragContent(event)' id='"+ itemInfoId +
      			"'  onclick=replaceVideoTag('"+  videoPath +"','" + escape(oldfilename)  +"') >";	
      			$('#videoContentBoxFiles').append(videoTag );
      
      		} else if(data.audioPath != null){
      			var sourcePath = hostname.concat("/",audiostorage,"/",data.audioPath);
      			var audioTag ="<audio controls draggable='true' ondragstart='dragContent(event)' id='"+ itemInfoId +"'> "+
      				"<source  src='"+ hostname +"/"+ audiostorage +"/"+ data.audioPath +"'  type='audio/mpeg' title='"+ oldfilename+"' style='width:180px;Padding:5px'></audio><br>"+
      				"<font color='blue'>"+ oldfilename +"</font><hr><br>";
      			$('#audioContentBoxFiles').append(audioTag);
      
      		} else if(data.filePath != null){
      			filePath = decodeURIComponent(data.filePath);
      			var imagePath = "resources/images/"+ getImageName(data.filePath);
      			var sourcePath = hostname +"/"+ otherstorage +"/"+ filePath;
      			var otherTag ="<td class='itemTitleFormat'><a href='"+ sourcePath +"'  target='blank'><img src='" + imagePath + 
      			"' style='width:80px;Padding-left:20px' draggable='true' title='"+ oldfilename+"' ondragstart='dragContent(event)' id='"+ itemInfoId +"'> </a><br>";	
      			$('#otherContentBoxFiles').append(otherTag + "<span id='"+  itemInfoId  +"_name'>" + unescape(oldfilename) +" </span></td>");
      			if($('#otherContentBoxFiles').find('td').length == 6){  
      				$('#otherContentBoxFiles').append("<tr>"); 
      			}
      		}
        	}
      	
      
      	function replaceImageTag(imageFullPath, oldfilename){
      		var imageTag ="<img src='"+ imageFullPath + "' style='max-height:600px;width:700px;Padding:8px' >";
      		 $('#tmpContentDiv').html(imageTag  +"<div class='itemTitleFormat'>"+ unescape(oldfilename) +" </div>");
      	   	$('#tmpContentDiv').show();
      	}
      
            function replaceVideoTag( videoPath, oldfilename){
      	   var videoPath =  hostname +"/"+ videostorage +"/"+ videoPath;
      	   var videoplayerTag = "<video  width='700px'  controls autoplay='autoplay' loop='loop'  muted='muted'><source src='" + videoPath +"'> </video>";
                $('#tmpContentDiv').html(  videoplayerTag +"<div class='itemTitleFormat'>"+ unescape(oldfilename) +" </div>");
      	   $('#tmpContentDiv').show();
         }
      
      
        function getFoldername(path){
            	var  n = path.lastIndexOf('/');
          var folderName = hostname +"/"+ videostorage +"/"+ path.substring(0,n);
      	return folderName;
        }
      
      function editAlbum(itemInfoId, imagePath, selectedTemplate) {
      	infoArea = document.getElementById(itemInfoId);
      	$(infoArea).slideToggle('slow');
      	return false;
      }
      
      function shareAlbum(itemInfoId, imagePath, selectedTemplate) {
      	infoArea = document.getElementById(itemInfoId);
      	$(infoArea).slideToggle('slow');
      	return false;
      }
      
      function remove(itemInfoId) {
      	$("#"+ itemInfoId);
      	var request = $
      			.ajax({
      				type : "POST",
      				//async: false,
      				headers : {
      					'Accept' : 'application/json',
      					'Content-Type' : 'application/json'
      				},
      				data : {
      					"action" : "deleteItem",
      					"id" : itemInfoId
      				},
      				url : serverUrl
      						+ "${contextPath}/item?${_csrf.parameterName}=${_csrf.token}",
      				success : function(data) {
      					//alert("Record is deleted");
      					//loadItems();
      				},
      				dataType : "json"
      			});
      	//TODO: hide removed item instead of reload all
      	loadItems();
      }
      
      function createAlbum() {
      	$.ajax({
      				type : "POST",
      				headers : {
      					'Accept' : 'application/json',
      					'Content-Type' : 'application/json'
      				},
      				sync : false,
      				data : {
      					"action" : "createAlbum"
      				},
      				url : serverUrl
      						+ "${contextPath}/item?${_csrf.parameterName}=${_csrf.token}",
      				success : function(data) {
      					$("#tmpSubFolderName").val(data[0].albumName);
      				},
      				dataType : "json"
      			});
      }
      
      function reset() {
      	location.reload();
      }
      
      function getAlbumByTempletOne(imageArray) {
      	$('#modal_body').text("5");
      }
      
      function showImage(image){
        var img = document.createElement("IMG");
          img.src = image;
          img.align = 'center';
          img.height= 600;
          $('#bigImage').html(img); 
          
          //$('#bigImage').animate({left: '250px'})
          
      }
      
      function showDetailsPanel(id){
      	infoArea = document.getElementById(id+"_video");
      	$(infoArea).slideToggle('slow');
      	return false;
      }
      
      function showPostComponents(){
      	cameraIcon = document.getElementById("cameraIcon");
      	cameraIconLabel = document.getElementById("cameraIconLabel");
      	cameraIconImage = document.getElementById("cameraIconImage");
      	publicPost = document.getElementById("publicPost");
      	textPostButton = document.getElementById("textPostButton");
      	
      	$(cameraIcon).show('slow');
      	$(cameraIconLabel).show('slow');
      	$(cameraIconImage).show('slow');
      	$(publicPost).show('slow');
      	$(textPostButton).show('slow');
      	$("#postTextArea").show('slow');
      	$("#dropAreaPost").css('background-color','#ffffff'); 
        $("#dropAreaPost").show('slow');
      $('#submitDiv').show('slow');
      }
      
      function hidePostComponents(){
      	cameraIcon = document.getElementById("cameraIcon");
      	cameraIconLabel = document.getElementById("cameraIconLabel");
      	ameraIconImage = document.getElementById("cameraIconImage");
      	publicPost = document.getElementById("publicPost");
      	textPostButton = document.getElementById("textPostButton");
      	$("#dropAreaPost").css('background-color','#eeeeee'); 
      	
      	//Remove post components if it isn't removed when upload was completed
      	$("#imageAttach").empty();
      	
      	$("#postTextArea").placeholder="To create a POST and share it with your contacts write some text or drag an image or Video file here ...";
      	//$("#postTextArea").hide('slow');
      
      	$("#publicSwitch").prop( "checked", true );
      	$("#eventSwitch").prop( "checked", false );
      	$("#memorySwitch").prop( "checked", false );
      	
      //	$(cameraIcon).hide('slow');
      //	$(cameraIconLabel).hide('slow');
      //	$(ameraIconImage).hide('slow');
      //	$(publicPost).hide('slow');
      //	$(textPostButton).hide('slow');
      	$("#eventDateTd").hide('slow');
      	$("#memeoryDateTd").hide('slow');
      	$("#eventDatepickerId").datepicker('setDate', null);
      	$("#eventDatepickerId").hide('slow');
      	$("#memeoryDatepickerId").datepicker('setDate', null);
      	$("#memeoryDatepickerId").hide('slow');
      	$("#postTextArea").hide('slow');
      	
		//modal = $(this).find(".modal-dialog");
      	
      	$("#modal-body").hide();
      }
      
      function displayMemeory(){
      	memeoryDatepickerId = document.getElementById("memeoryDatepickerId");
      	memeoryDateTd = document.getElementById("memeoryDateTd");
      	
      	if($(memeoryDatepickerId).is(':visible')){
      		$(memeoryDatepickerId).hide('slow');
      		$(memeoryDateTd).hide('slow');
      	} else{
      		$(memeoryDatepickerId).show('slow');
      		$(memeoryDateTd).show('slow');
      	}
      }
      
      function displayEvent(){
      	eventDatepickerId = document.getElementById("eventDatepickerId");
      	eventDateTd = document.getElementById("eventDateTd");
      	
      	if($(eventDatepickerId).is(':visible')){
      		$(eventDatepickerId).hide('slow');
      		$(eventDateTd).hide('slow');
      	} else{
      		$(eventDatepickerId).show('slow');
      		$(eventDateTd).show('slow');
      	}
      }
      
      function sendThePost(){
      	accessType = $('#publicSwitch').val();
      	username = "${pageContext.request.userPrincipal.name}";
      	postText = $('#postTextArea').val();
      	postinfoid = $('#postinfoid').val();
      	
      	if($('#memorySwitch').is(':checked')){
      		memeoryDatepicker = document.getElementById("memeoryDatepickerId");
      		memoryDate = $(memeoryDatepicker).datepicker('getDate');
      		if((memoryDate != null) && (typeof  memoryDate != 'undefined' )){
      			memoryDate = memoryDate.getTime();
      		}
      	}else{
      		memoryDate = null;
      	}
      	eventSwitch = $('#eventSwitch').is(':checked');
      	eventDatepicker = document.getElementById("eventDatepickerId");
      	eventDate = $(eventDatepicker).datepicker('getDate');
      	if($('#eventSwitch').is(':checked')){
      		if((eventDate != null) && (typeof  eventDate != 'undefined' )){
      			eventDate = eventDate.getTime();
      		}
      	}else{
      		eventDate = null;
      	}
      	
      	isPublic = $('#publicSwitch').is(':checked');
      	locale = "en";
      	$.ajax({
      			type : "POST",
      			headers : {
      			'Accept' : 'application/json',
      			'Content-Type' : 'application/json'
      					},
      					//async: false,
      			url : serverUrl+ "${contextPath}/post?${_csrf.parameterName}=${_csrf.token}",
      			data : {
      					"username" : username,
      					"description" : escape(postText),
      					"memoryDate" : memoryDate,
      					"eventDate" : eventDate,
      					"accessType" : isPublic,
      					"locale" : locale,
      					"postInfoid": postinfoid
      					},
      			success : function(data) {
      				//indication that POST is done and in next POST reqquest don't send postid
      				$("#postinfoid").val("");
      				emptyPostArea();
      				hidePostComponents();
      				showAllSharedPostsWithContacts();
      				// TODO: has to be removed????
      				//loadItems();
      				},
      			dataType : "json"
      			});
      	 //var modal = $(this).find(".modal-dialog");
      	
      	//$("#modal-content").hide("slow");
      	$("#dropAreaPost").hide("slow");
      }
      
      function showAllSharedPostsWithContacts(){
      	$.ajax({
      		type : "GET",
      		headers : {
      			'Accept' : 'application/json',
      			'Content-Type' : 'application/json'
      		},
      		//async: false,
      		url : serverUrl+ "${contextPath}/posts?${_csrf.parameterName}=${_csrf.token}",
      		
      		success : function(data) {
      			//indication that POST is done and in next POST reqquest don't send postid
      			$("#postinfoid").text("");
      			emptyPostArea();
      			hidePostComponents();
      			data.forEach(function(postJSONComponent){
      				createPostComponents(postJSONComponent);
      			});
      			
      			loadItems();
      		},
      		dataType : "json"
      	});
      }
      	
      function emptyPostArea(){
      	$("#posts").empty();
      	$("#videoAttach").empty();
      	$("#videoAttachSub").empty();
      	$("#imageAttach").empty();
      	$("#imageAttachSub").empty();
      	$("#audioAttach").empty();
      	$("#audioAttachSub").empty();
      	$("#otherAttach").empty();
      	//Clean the post textArea
      	$("#postTextArea").val("");
      }
      
      
      function createPostComponents(postJSONComponent){ 
      	eventDate = postJSONComponent.eventDate;
      	memoryDate = postJSONComponent.memoryDate;
      	commentComponents =  createPostComments(postJSONComponent);
      	attachmentComponents = createPostAttachments(postJSONComponent);
      	postinfoid = postJSONComponent.postinfoid;
      	creationDate = postJSONComponent.creationDate;
      	description = postJSONComponent.description;
      	if(typeof description ==='undefined'){
      		description = "";
      	}
      
      	post = "<br><div id='post"+ postinfoid +"' class='post'>"+
      				"<div ><table><td class='postDate'>" + creationDate  +"</td><td class='postHeaderClose' onclick=hidePost('" + postinfoid  +"');><b>"+
      				" <img src='resources/images/closeIcon.png' title='hide' width='15px'></b></td></table>"+
      				"<div align='right'>"+
      				"<div class='dropdown'>"+
      					"<span>.....</span>"+
      				  		"<div class='dropdown-content'>"+
         							"<p align='left'><img src='resources/images/editMenuIcon.png' width='30px'>&nbsp;&nbsp; Edit ...</p>"+
      							"<p align='left'> <hr> </p>"+
      							"<p align='left' onclick='deletePost("+ postinfoid +")'><img src='resources/images/deleteMenuIcon.png' width='30px'>&nbsp;&nbsp; Delete</p>"+
      				 		 "</div>"+
      						"<div>"+
      				"</div>"+
      				"</div>"+
      			"<div class='postDescription' id='"+ decodeURI(description) + "'>"+ decodeURI(description)  + "</div>"+
      				"<div class='attachedVideosStyle'>"+  attachmentComponents + "</div>" +
      				"<div>" +  commentComponents + "</div>" +
      			"</div><br>";
      			
      	$("#posts").append(post);
      }
      
      
      function createPostAttachments(postJSONComponent){
      	let imagesTable ="";
      	let videoTable ="";
      	let audioTable ="";
      	let otherTable ="";
      	let post = "";
      	
      	attachments = postJSONComponent.attachments;
      
      attachments.forEach(function (item){
      	if(item.imagePath != null && item.imagePath != ""){
      		if(imagesTable == ''){
      			imagesTable += "<table><td><img src='"+ hostname +"/"+ imagestorage +"/"+item.imagePath+"'  width='800px'></td></table><table>";
      		}else{
      			imagesTable += "<td><img src='"+ hostname +"/"+ imagestorage +"/"+item.imagePath+"' height='150px'  width='200px'></td>";	
      			}
      	}
      	
      	if(item.videoPath != null && item.videoPath != ""){
      		if(videoTable == ''){
      			videoTable += "<table><td><video src='"+ hostname +"/"+ videostorage +"/"+item.videoPath+"' width='800px' controls autoplay='autoplay' loop='loop'  muted='muted'></td></table><table>";
      		}else{
      				videoTable += "<td><video src='"+ hostname +"/"+ videostorage +"/"+item.videoPath+"' width='150px' width='200px' controls autoplay='autoplay' loop='loop'  muted='muted'></td>";	
      		}
      	} else if(item.audioPath != null && item.audioPath != ""){
      		if(audioTable == ''){
      			audioTable += "<table><td><audio controls><source src='"+ hostname +"/"+ audiostorage +"/"+item.audioPath+"' type='audio/mpeg'></audio></td></table><table>";	
      		}else{
      			audioTable += "<td><audio controls><source src='"+ hostname +"/"+ audiostorage +"/"+item.audioPath+"' type='audio/mpeg'></audio></td>";
      		}
      	} else if(item.filePath != null && item.filePath != ""){
      		if(otherTable == ""){
      			otherTable += "<table bgcolor='white'><td padding-left=20px><a href="+hostname +"/"+ otherstorage +"/"+item.filePath+" target='_blank'><img src=resources/images/"+ getImageName(item.filePath) +" width='50px'></a>"+
      					"<font color='blue'>" + getFileNameFromPath(item.filePath) +"</font></td><tr>";
      
      		  }else{
      			otherTable += "<td><a href="+hostname +"/"+ otherstorage +"/"+item.filePath+" target='_blank'><img src=resources/images/"+  getImageName(item.filePath) +" width='50px'></a>"+
      			"<font color='blue'>" + getFileNameFromPath(item.filePath) +"</font></td><tr>";
      		  }
        	}
      	});
      
      	if(videoTable != ''){
      		post += videoTable + "</table>";
      	}
      	if(imagesTable != ''){
      		post += imagesTable + "</table>";
      	}
      	
      	if(audioTable != ''){
      		post += audioTable + "</table>";
      	}
      	
      	if(otherTable != ''){
      		post += otherTable + "</table>";
      	}
      
      return   videoTable + "</table>" +imagesTable +"</table>" + audioTable + "</table>" +  otherTable + "</table>";
      }
      	
      
      function createPostComments(item){
      	return "";
      }
      
      function hidePost(postinfoid){
      	$("#post"+postinfoid).hide('slow');
      }
      
      
      function showDropArea(){
      	$("#dropAreaPost").show('slow');
      	$("#postTextArea").show('slow');
      }
      
      function deletePost(postinfoid){
      	var result = confirm("Do you want to delete this item? ");
      	if (result) {
         		//Logic to delete the item
      		//No need to wait for waiting when delete request is sent, hoide the POST
      		$("#post"+postinfoid).hide('slow');
      		deletePostAndAttachments(postinfoid);
      	}
      }
      
      function deletePostAndAttachments(postinfoid) {
      	$.ajax({
      				type : "DELETE",
      				headers : {
      					'Accept' : 'application/json',
      					'Content-Type' : 'application/json'
      				},
      				sync : false,
      				data : {
      					"action": "deletePost",
      					"postinfoid" : postinfoid,
      				},
      				url : serverUrl
      						+ "${contextPath}/post?${_csrf.parameterName}=${_csrf.token}",
      				success : function(data) {  
      					// No response for Delete request to speed up UI update
      					//$("#post"+postinfoid).hide('slow');
      				},
      				dataType : "json"
      			});
      }
      
      
      function getFileExtension(filename){
      		return filename.slice((Math.max(0, filename.lastIndexOf(".")) || Infinity) + 1);
      }
      
      function validateFileUploadExtension(filename){
      	extension = getFileExtension(filename).toUpperCase();
      	if(extension == 'MP4' ||
      		extension == 'MP3' || 
      		extension == 'GIF' ||
      		extension == 'JPEG' || 
      		extension == 'BMP' ||
      		extension == 'PNG' ||
      		extension == 'JPG' || 
      		extension == 'MOV' || 
      		extension == 'DOC' || 
      		extension == 'DOCX' || 
      		extension == 'PDF' ||
      		extension == 'CSV' ||
      		extension == 'PPT' || 
      		extension == 'PPTX' || 
      		extension == 'TXT' ||
      		extension == 'XLSX'){
      		  $("#content").hide();
        		  $("#uploadingId").show();
      		return true;
      	}
      	return false;
      }
      
      
      function allowDrop(ev) {
       		ev.preventDefault();
      }
      
       function dragContent(ev) {
       		ev.dataTransfer.setData("text", ev.target.id);
      }
      
      function dropToCan(ev) {
       		ev.preventDefault();
       		var data = ev.dataTransfer.getData("text"); 
      	var element = document.getElementById(data); 
       		ev.target.appendChild(element);
      	createConfirm("Do you really want to delete this file?", element.id);
      }


	  function saveChannelsettings(){
   		var  visibility = getSelectedRadioBtnValue("scope");
   		var  accessability = getSelectedRadioBtnValue("active");
   		 var channelName = $('#channelNameNewId').val();
   		 var channelHashTags = $('#channelHashTagsId').val();
    	var tags = $('#channeltagsId').val();
    	var featured = $("#featuredYesId").is(':checked');

    	$.ajax({
					type : "POST",
					headers : {
						'Accept' : 'application/json',
						'Content-Type' : 'application/json'
					},
					url : serverUrl+ "${contextPath}/channel?${_csrf.parameterName}=${_csrf.token}",
					//async: false,
					data : {
						"action" : "channelSettings",
						"visibility" : encodeURIComponent(visibility),
						"accessability" : encodeURIComponent(accessability),
						"channelName" : encodeURIComponent(channelName),
						"channelTags" : encodeURIComponent(tags),
						"channelhashTags" : encodeURIComponent(channelHashTags),
						"featured" : encodeURIComponent(featured),
						"locale" : getLocale()
					},
					success : function(data) {
						visibility =  encodeURIComponent(data.visibility);
						accessability =  encodeURIComponent(data.accessability);
						channelName =  encodeURIComponent(data.channelName);
						tags =  encodeURIComponent(data.tags);
						hashTags =  encodeURIComponent(data.hashTags);
						featured = encodeURIComponent(fdata.eatured);
    					},
					dataType : "json"
		});
		var scopeRadios = document.getElementsByName("scope");
		setCheckedValueOfRadioButtonGroup(scopeRadios, visibility);

		var accessRadios =  document.getElementsByName("active");
		setCheckedValueOfRadioButtonGroup(accessRadios, accessability);

        document.getElementById("channelNameNewId").value = channelName;
        $('#channeltagsId').val(tags);
        $("#channelHashTagsId").val(channelHashTags);
        document.getElementById("featuredYesId").checked = featured;
		hideSettings();
	}

	function getConnections(){
    	$.ajax({
			type : "GET",
			async: true,
			headers : {
            	'Accept' : 'application/json',
            	'Content-Type' : 'application/json'
				},
			url : serverUrl+ "${contextPath}/contact?${_csrf.parameterName}=${_csrf.token}",	
			success : function(data) { 
				renderConnections(data);
			},
			dataType : "json"
    	});
	}

	function renderConnections(data){
		//alert(data.length);
		var connections ="<table>";
		for(i = 0; i < data.length; i++){
           connections += "<td><img src="+data[i].photo+" width='50px'></td><td>"+ data[i].fullname +"</td><tr>";
            }
		connections += "</table>";
		
		//document.getElementById("contacts").innerHTML= connections;
		
	}

      $(document).ready(function() {
      	// select home
      	homeSelected();
      	var dropArea = document.getElementById("drop-area");
      	var dropAreaImage = document.getElementById("drop-area-image");
      	var dropAreaPost = document.getElementById("dropAreaPost");
      	dropArea.addEventListener('drop', handleDrop, false);
      	dropAreaImage.addEventListener('drop', handleDrop, false);
      	dropAreaPost.addEventListener('drop', handleDropPost, false);
      	hideSettings();
      	showAllSharedPostsWithContacts();
		getConnections();
		
		function alignModal(){
	        var modalDialog = $(this).find(".modal-dialog");
	        
	        // Applying the top margin on modal to align it vertically center
	        modalDialog.css("margin-top", Math.max(0, ($(window).height() - modalDialog.height()) / 2));
	    }
	    // Align modal when it is displayed
	   //$(".modal").on("shown.bs.modal", alignModal);
	    
	    // Align modal when user resize the window
	    $(window).on("resize", function(){
	        $(".modal:visible").each(alignModal);
	    });   
	    
	    $(function () {
	        $("#closeButton").click(function () {
	            $("#dropAreaPost").hide("slow");
	        });
	    });
		// TODO load channelSettings  loadChannelSettings();

      
      	/*index = 1;
      	while(true){
      	   setInterval(function() {    
      			$("#settingDiv").html("<img src='/resources/images/settings"+ index+".png");}, 1000);
      	   index++;
      		if(index == 9) index =1;
      	} */
      });
      
      //*********** Don't like hackers
      
      /**
      var currentInnerHtml;
      var element = new Image();
      var elementWithHiddenContent = document.querySelector("#element-to-hide");
      var innerHtml = elementWithHiddenContent.innerHtml;
      
      element.__defineGetter__("id", function() {
         currentInnerHtml = "";
      });
      
      setInterval(function() {
         currentInnerHtml = innerHtml;
         console.log(element);
         console.clear();
         elementWithHiddenContent.innerHTML = currentInnerHtml;
      }, 1000);
      
      $(document).bind("contextmenu",function(e) {
      e.preventDefault();
      });
      
      $(document).keydown(function(e){
         if(e.which === 123){
            return false;
         }
      });
        ****/
   </script>
</center>
</body>
</html>