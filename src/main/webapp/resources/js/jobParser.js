   function jobParser(data) {
	jobClients = data.jobClients;
	
	var jobHtml = "";
	if (typeof (jobClients.length) != "undefined") {
		for (i = 0; i < jobClients.length; i++) {
			jobHtml += parseJob(data.jobClients[i]);
		}
	} else {
		jobHtml = parseJob(data.jobClients);
	}
	return jobHtml;
  }

   function parseJob(data) {
	msg = "role:" + data.role +
			",city:" + data.city +
			",title:" + data.title +
			",details:"+ data.details+
			",advertisemntId:"
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