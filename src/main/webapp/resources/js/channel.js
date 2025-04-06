	function getSelectedRadioBtnValue(id){
        var radios = document.getElementsByName(id);
        var  radioValue =""
        for (var i = 0, length = radios.length; i < length; i++) {
             if (radios[i].checked) {
                radioValue = radios[i].value;
                break;
             }
        }
        return radioValue;
    }

	 
	function setCheckedValueOfRadioButtonGroup(radios, value) {
    	//var radios = document.getElementsByName(radioObj.name);
    	for (var j = 0; j < radios.length; j++) {
        	if (radios[j].value == value) {
            	radios[j].checked = true;
            	break;
        	}
    	}
	}

	function getLocale(){
		const getNavigatorLanguage = () => (navigator.languages && navigator.languages.length) ? navigator.languages[0] : navigator.userLanguage || navigator.language || navigator.browserLanguage || 'en';
		//TODO: Any need to change tje
		return getNavigatorLanguage;

	}