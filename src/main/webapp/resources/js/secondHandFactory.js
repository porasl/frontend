
function getsecondHandData(){
	var secondHand = new Object();
	secondHand.type="SecondHand";
	
	secondHand.startDate=new Date();
	secondHand.address= "1288 Ala Meda De Las";
	secondHand.category= "Secondhand";
	secondHand.name="Table";
	secondHand.size="big";
	secondHand.madeYear="1999";
	secondHand.city = "San Francisco";
	secondHand.zipCode="31221";
	secondHand.state="ca";
	secondHand.currencySymbol="$";
	secondHand.country="USA";
	secondHand.paid=false;
	secondHand.approved=0;
	secondHand.details=" Details fdafaf ";
	secondHand.price="234";
	
	var advertisementImageInfo = new Object();
	advertisementImageInfo.image1="secondHamd_image1";
	advertisementImageInfo.image2="secondHamd_image2";
	advertisementImageInfo.image3="secondHamd_image3";
	advertisementImageInfo.image4="secondHamd_image4";
	advertisementImageInfo.image5="secondHamd_image5";
	secondHand.advertisementImageInfo=advertisementImageInfo;
	
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
	secondHand.setAdPrincipalInfo= adPrincipalInfo;

	return secondHand;
}