function getAlbumData(albumname,publicItem,details,tmpFolder,selectedTemplate,username){
	var item = new Object();
	item.albumname = albumname;
	item.publicItem = publicItem;
	item.details = details;
	item.selectedTemplate = selectedTemplate;
	item.username = username;
	
	return item;
 }