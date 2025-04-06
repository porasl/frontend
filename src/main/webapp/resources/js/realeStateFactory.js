


function getRealestateData(){
	var realestate = new Object();
	realestate.address="1288 Ala Meda De Las";
	realestate.country="USA";
	realestate.house = true;;
	realestate.buildYear="63";
	realestate.landScale="5000";
	realestate.scaleUnit="sqf";
	realestate.city="Belmont";
	realestate.zipCode="94002";
	realestate.price="880000";
	realestate.state="Ca";
	realestate.currencySymbol="$";
	realestate.numberOfRooms="3";
	realestate.numberOfBathRooms="2";
	realestate.hos = "100";
	realestate.startDate=new Date();
	realestate.expireDate = new Date();
	realestate.paid=1200;
	realestate.approved = 0;
	realestate.details="Same details 3 ...";
	realestate.type ="Single Home";
	realestate.category="House";
	
	var advertisementImageInfo = new Object();
	advertisementImageInfo.image1="image1";
	advertisementImageInfo.image2="image2";
	advertisementImageInfo.image3="image3";
	advertisementImageInfo.image4="image4";
	advertisementImageInfo.image5="image5";
	advertisementImageInfo.image6="image6";
	advertisementImageInfo.image7="image7";
	advertisementImageInfo.image8="image8";
	advertisementImageInfo.image9="image9";
	advertisementImageInfo.image10="image10";
	advertisementImageInfo.image11="image11";
	advertisementImageInfo.image12="image12";
	advertisementImageInfo.image13="image13";
	advertisementImageInfo.image14="image14";
	advertisementImageInfo.image15="image15";
	advertisementImageInfo.image16="image16";
	advertisementImageInfo.image17="image17";
	advertisementImageInfo.image18="image18";
	advertisementImageInfo.image19="image19";
	advertisementImageInfo.image20="image20";
	realestate.advertisementImageInfo=advertisementImageInfo;
	
	var adPrincipalInfo = new Object();
	adPrincipalInfo.contactName="Hamid";
	adPrincipalInfo.contactLastname="Porasl";
	adPrincipalInfo.phoneNumber="650-293-1966";
	adPrincipalInfo.emailAddress="hamid@porasl.com";
	adPrincipalInfo.city="San Francisco";
	adPrincipalInfo.state="California";
	adPrincipalInfo.country="USA";
	adPrincipalInfo.zipcode="94002";
	adPrincipalInfo.address="1021 Alameda Ave";
	realestate.adPrincipalInfo= adPrincipalInfo;


	return realestate;
}