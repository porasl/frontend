

function getJobData(){
	var job = new Object();
	job.approved = 0;
	job.details="Some details ...";
	job.role="Software Developer";
	job.city="San Francisco";
	job.title="A title";
	job.state="California";
	job.country="USA";
	job.zipcode="1234";
	job.currencySymbol="$";
	job.expireDate=new Date();
	job.paid=1200;
	//Salary
	job.price="120,000";
	job.startDate=new Date();
	
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
	job.advertisementImageInfo=advertisementImageInfo;
	
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
	job.adPrincipalInfo= adPrincipalInfo;

	return job;
}