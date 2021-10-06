function SetCookie(Name, Value, ExpiryDays){
	var exdate=new Date();
	exdate.setDate(exdate.getDate() + ExpiryDays);
	var c_value=escape(Value) + ((ExpiryDays==null) ? "" : "; expires="+exdate.toUTCString());
	document.cookie=Name + "=" + c_value;

	//alert('Name = "'+Name+'"\nValue = "'+Value+'"\nExpiryDays = "'+ExpiryDays+'"\n\nString = "'+Name + "=" + c_value+'"');

	return true;
}

function GetCookie(Name){
	var c_value = document.cookie;
	var c_start = c_value.indexOf(" " + Name + "=");

	if (c_start == -1)c_start = c_value.indexOf(Name + "=");

	if (c_start == -1){
		c_value = null;
	}
	else{
		c_start = c_value.indexOf("=", c_start) + 1;
		var c_end = c_value.indexOf(";", c_start);

		if (c_end == -1)c_end = c_value.length;
		c_value = unescape(c_value.substring(c_start,c_end));
	}

	return c_value;
}

function DeleteCookie(Name, Path, Domain){
	if(GetCookie(Name))document.cookie = Name + "=" +
	((Path)? ";path=" + Path : "")+
	((Domain)? ";domain=" + Domain : "")+
	";expires=Thu, 01-Jan-1970 00:00:01 GMT";
}
