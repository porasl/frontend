

function getFileNameFromPath(filePath){
    var parts = filePath.split("\/");
    return parts[parts.length -1];
}

function updateMyChannelDivContent(sourcePath, itemInfoId){
    var videoPath = "<video  width='1100px' controls autoplay='autoplay' loop='loop'  muted='muted'> <source src='"+
     hostname +"/"+ videostorage +"/"+ decodeURIComponent(sourcePath)+ "'> </video>";
    $("#myVideoChannelMain").html(videoPath);

    renderChannelMetaData(itemInfoId);
    renderComments(itemInfoId);
}

function renderChannelMetaData(itemInfoId){
	$.ajax({
		type : "GET",
		headers : {
            'Accept' : 'application/json',
            'Content-Type' : 'application/json'
			},
		url : serverUrl+ "${contextPath}/videoMetaData?${_csrf.parameterName}=${_csrf.token}&itemId=" + itemInfoId,	
		success : function(data) {
			temInfoId = data.itemInfoId;
			channelIcon = data.icon;
			totalLiked = data.totalLiked;
			title = data.title;
			},
		dataType : "json"
		});
	}


function renderComments(itemInfoId){
    $.ajax({
		type : "GET",
		headers : {
            'Accept' : 'application/json',
            'Content-Type' : 'application/json'
			},
		url : serverUrl+ "${contextPath}/videoComments?${_csrf.parameterName}=${_csrf.token}&itemId="+ itemInfoId,	
		success : function(data) {
			if(data != null && data.length > 0){
                data.forEach(appendComments);
            }
		},
		dataType : "json"
    });
}

function appendComment(item, index){
        
}


function hideSettings(){
	$("#settingcol1").hide("slow");
	$("#settingcol2").hide("slow");
	$("#settingcol3").hide("slow");
	$("#settingcol4").hide("slow");
	$("#settingcol5").hide("slow");
	$("#settingcol6").hide("slow");
	$("#setting").show('slow');
	$("#addMyChannelVideo").hide('slow');
	$("#drop-area").hide('slow');
	$("#addMyChannelVideo").show('show');
}

 function showSettings(){
	$("#settingcol1").show("slow");
	$("#settingcol2").show("slow");
	$("#settingcol3").show("slow");
	$("#settingcol4").show("slow");
	$("#settingcol5").show("slow");
	$("#settingcol6").show("slow");
	$("#setting").hide('slow');
	$("#addMyChannelVideo").hide('slow');
	$("#drop-area").hide('slow');
	$("#addMyChannelVideo").hide('slow');
   }


function showAndHide(showId, hideId){
	$('#'+showId).show();
	$('#'+hideId).hide();
	  }


function hide(id){
	$('#'+id).hide();
}


function show(id){
	$('#'+id).show();
}

function showChannelDropArea(){
	$('#addMyVideoTable').show('slow');
	$('#drop-area').show('slow');
 }


 function showEmailForm (){

 }