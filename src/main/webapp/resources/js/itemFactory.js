

function getCarData(){
	var item = new Object();
	item.approved = 0;
	item.details="Same details 3 ...";
	item.locale='en';
	item.type="big";
	item.name='item name';
	item.size="mini";
	item.longDescription='long desc';
	item.shortDescription="short desc";
	item.label="label";
	item.format="format";
	item.version="version";
	item.type ="SUV";
	item.category="CAR";
	item.expireDate = new Date();
	item.price=1200;
	item.currencySymbol="$";
	item.audioPath="c://audioPath";
	item.videoPath="c://videoPath";
	item.imagePath="c://imagePath";
	item.paid = flase;
	item.paidAmount = 1200;
	item.notified = false;
	item.deleted = false;
	item.deleteCode = "";
	item.creationDate = new Date();
	item.deletionDate = null;
	item.modificationDate =  null;
	item.expirationDate = null;
	
	var publisherInfo = new Object();
	publisherInfo.contactName="Hamid";
	publisherInfo.contactLastname="Porasl";
	publisherInfo.phoneNumber="650-293-1966";
	publisherInfo.emailAddress="hamid@porasl.com";
	publisherInfo.city="San Francisco";
	publisherInfo.state="California";
	publisherInfo.country="USA";
	publisherInfo.zipcode="94002";
	publisherInfo.address="1021 Alameda Ave";
	item.publisherInfo= publisherInfo;

	return item;
}