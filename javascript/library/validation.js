function IsIPv4Address(IPAddress) {
    //Remember, this function will validate only Class C IP.
    //change to other IP Classes as you need
    IPAddress = IPAddress.replace( /\s/g, "") //remove spaces for checking
    var re = /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/; //regex. check for digits and in
                                          //all 4 quadrants of the IP
    if (re.test(IPAddress)) {
        //split into units with dots "."
        var parts = IPAddress.split(".");
        //if the first unit/quadrant of the IP is zero
        if (parseInt(parseFloat(parts[0])) == 0) {
            return false;
        }
        //if the fourth unit/quadrant of the IP is zero
        if (parseInt(parseFloat(parts[3])) == 0) {
            return false;
        }
        //if any part is greater than 255
        for (var i=0; i<parts.length; i++) {
            if (parseInt(parseFloat(parts[i])) > 255){
                return false;
            }
        }
        return true;
    } else {
        return false;
    }
}

function IsPositiveInteger(Figure){
	return Figure && parseInt(Figure) == Figure ? true : false;
}

function IsEmail(EmailAddress){
	var reg = /^[\w\-\.]+@?[\w\-\.]+$/u;

	return reg.test(EmailAddress);
}

function IsAlphanumeric(TextToValidate){
	var reg = /^\w+$/;

	return reg.test(TextToValidate);
}

function IsAlphabetic(TextToValidate){
	var regexNum = /\d/;
	var regexLetter = /([a-zA-Z])/;
	Valid=true;

	//if(!regexNum.test(TextToValidate) || !regexLetter.test(TextToValidate))Valid=false;

	return Valid;
}

function IsNonNegetive(Figure){
	return !isNaN(Figure) && Figure >= 0;
}

function IsNumeric(Figure){
	Valid=false;

	return !isNaN(Figure);
}

function IsNumber(Figure){
	Valid=false;

	return !isNaN(Figure);
}

function IsInteger(Figure){
	Valid=false;

	if(parseInt(Figure)==Figure)Valid=true;

	return Valid;
}

function IsPositive(Figure){
	return !isNaN(Figure) && Figure > 0;
}

function IsURL(Value){


	return true;
}

function MarkInputForValidation(Input, BorderColor, BackgroundColor){
	Input.style.borderColor = BorderColor;
	Input.style.backgroundColor = BackgroundColor;
}

function IsDateString(Value){


	return true;
}
