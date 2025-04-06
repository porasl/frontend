   function itemParser(data) {
	itemClients = data.itemClients;
	
	var itemHtml = "";
	if (typeof (itemClients.length) != "undefined") {
		for (i = 0; i < itemClients.length; i++) {
			itemHtml += parseItem(data.itemClients[i]) +"<br><br>";
		}
	} else {
		itemHtml = parseItem(data.itemClients);
	}
	return itemHtml;
  }
  
 
 
   function parseItem(data) {
	msg = "audioPath: " + data.audioPath 
		+ ",creationDate:"+ data.creationDate 
		+ ",format:" + data.format 
		+ ",imagePath:"+ data.imagePath 
		+ ",version:" + data.version 
		+ ",itemInfoId:" + data.itemInfoId 
		+ ",type:"+ data.type 
		+ ",size:"+ data.size 
		+ ",name:"+ data.name 
		+ ",modificationDate:"+ data.modificationDate 
		+ ",itemInfoId:"+ data.itemInfoId 
		+ ",longDescription:"+ data.longDescription 
		+ ",locale:" + data.locale
		+ ",Label:" + data.Label 
		+ ",imagePath:"+ data.imagePath 
		
		+ ",publisherClient.address:" + data.publisherClient.address
		+ ",publisherClient.city:" + data.publisherClient.city
		+ ",publisherClient.contactLastname:" + data.publisherClient.contactLastname
		+ ",publisherClient.contactName:" + data.publisherClient.contactName
		+ ",publisherClient.country:" + data.publisherClient.country
		+ ",publisherClient.creationDate:" + data.publisherClient.creationDate
		+ ",publisherClient.modificationDate:" + data.publisherClient.modificationDate
		+ ",publisherClient.emailAddress:" + data.publisherClient.emailAddress
		+ ",publisherClient.phoneNumber:" + data.publisherClient.phoneNumber
		+ ",publisherClient.publisherId:" + data.publisherClient.publisherId
		+ ",publisherClient.zipcode:" + data.publisherClient.zipcode
		
		+ ",statusClient.statusClient:" + data.statusClient
		+ ",statusClient.deleteCode:" + data.statusClient.deleteCode
		+ ",statusClient.notified:" + data.statusClient.notified
		+ ",statusClient.deleted:" + data.statusClient.deleted
		+ ",statusClient.paid:" + data.statusClient.paid
		+ ",statusClient.state:" + data.statusClient.state
		+ ",statusClient.statusId:" + data.statusClient.statusId
		
		;

	return msg;
}