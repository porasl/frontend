
function updateMyChannelDivContent(sourcePath){alert("1");
    var videoPath = "<video  width='1000px' controls autoplay='autoplay' loop='loop'  muted='muted'> <source src='"+
     hostname +"/"+ videostorage +"/"+ decodeURIComponent(sourcePath)+ "'> </video>";

    $("#myVideoChannelMain").html(videoPath);
}
