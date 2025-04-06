 
function realestateParser(data) {
	realestateClients = data.realestateClients;
	
	var realestateHtml = "";
	if (typeof (realestateClients.length) != "undefined") {
		for (i = 0; i < realestateClients.length; i++) {
			realestateHtml += parseRealestate(data.realestateClients[i]);
		}
	} else {
		realestateHtml = parseRealestate(data.realeasteClients);
	}
	return realestateHtml;
  }

   function parseRealestate(data) {
	   
	msg = "realestateClientId: " + data.advertisementId + ",price:"
			+ data.price +", streetAddress=" + data.streetAddress +
			"'country=" + data.country +", house =" + data.house +
			", buildYear=" + data.buildYear +", landScale=" + data.landScale +
			", scaleUnit=" + data.scaleUnit +", city=" + data.city+
			", zipCode=" + data.zipCode+", state=" + data.state+
			", currencySymbol" + data.currencySymbol+
			", numberOfRooms=" + data.numberOfRooms+
			",numberOfBathRooms=" + data.numberOfBathRooms+
			", hos = " + data.hos+ ",type:" + data.type + 
			+ data.madeYear + ",advertisemntId:"
			+ data.advertisemntId + ",category:"
			+ data.category + ",paid:" + data.paid
			+ ",approved:" + data.approved + ",startDate:"
			+ data.startDate + ",expireDate:"
			+ data.expireDate + ",deleteCode:"
			+ data.deleteCode + ",details:" + data.details
			+ ",image1:" + data.image1 + ",image2:"
			+ data.image2 + ",image3:" + data.image3
			+ ",image4:" + data.image4 + ",image5:"
			+ data.image5 + ",advertismentType:"
			+ data.advertismentType + ",city:" + data.city
			+ ",contactLastname:" + data.contactLastname
			+ ",contactName:" + data.contactName + ",country:"
			+ data.country + ",emailAddress:"
			+ data.emailAddress + ",principalId:"
			+ data.principalId + ",phoneNumber:"
			+ data.phoneNumber + ",state:" + data.state
			+ ",zipCode:" + data.zipCode;

	return msg;
}