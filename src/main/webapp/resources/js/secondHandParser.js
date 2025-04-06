 
function secondHandParser(data) {
	secondHandClients = data.secondHandClients;
	
	var secondHandHtml = "";
	if (typeof (secondHandClients.length) != "undefined") {
		for (i = 0; i < secondHandClients.length; i++) {
			secondHandHtml += parseSecondHand(data.secondHandClients[i]);
		}
	} else {
		secondHandHtml = parseSecondHand(data.secondHandClients);
	}
	return secondHandHtml;
  }

   function parseSecondHand(data) {
	msg = "secondHandClientId: "+
	data.advertisementId+",price:"+data.price+", currencySymbol:"
	+data.currencySymbol+",category:"+ data.category
	+",paid:"+data.paid+",approved:"+data.approved+",startDate:"+data.startDate
	+",expireDate:"+ data.expireDate+",deleteCode:"+ data.deleteCode+",details:"
	+data.details+",image1:"+data.image1+",image2:"+data.image2+",image3:"+
	data.image3+",image4:"+data.image4+",image5:"+data.image5+",advertismentType:"
	+data.advertismentType+",city:"+ data.city + ",contactLastname:"
	+ data.contactLastname+",contactName:"
	+data.contactName+",country:"+data.country+",emailAddress:"+
	+data.emailAddress+",principalId:"+data.principalId+",phoneNumber:"
	+data.phoneNumber+",state:"+data.state+",zipCode:"+data.zipCode;

	return msg;
}