function HTTPRequest(URL, Method, Asynchronous, CallBackFunction, Verbose){
	HTTPObject = window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : (window.XMLHttpRequest ? new XMLHttpRequest() : null);

	if(HTTPObject != null){
		HTTPObject.open(Method, URL, Asynchronous);

		if(Asynchronous){
			HTTPObject.onreadystatechange = function(){
				if(HTTPObject.readyState == 4){
					if(HTTPObject.status == 200){
						if(CallBackFunction != null)CallBackFunction(HTTPObject.responseText);

						return true;
					}
					else{
						if(Verbose && confirm('There has been an error. Do you want to open the URL in a new window?\n\nURL\n\n' + URL + '\n\nMethod = ' + Method + '\n\nStatus = ' + HTTPObject.status + ': ' + HTTPObject.statusText + '\n\nHeaders:\n\n' + HTTPObject.getAllResponseHeaders().replace('\n', ', ') + ''))window.open(URL);

						return false;
					}
				}
				else{
					return false;
				}
			}
		}

		HTTPObject.send(null);

		return HTTPObject.responseText;
	}
	else{
		return false;
	}
}

/*
	Purpose: Fetch contents dynamically using HTTP protocol
	Author: Shahriar Kabir (SKJoy2001@Yahoo.Com)
	Date : Monday, November 20, 2006

	Funtion list:

	    HTTPGet(HTTPURL, UseOwnDomain)
*/

function HTTPGet(HTTPURL, UseOwnDomain){//alert(HTTPURL);
	/*
	    Implementation of AJAX to fetch the output of a given URL for HTPP GET method.

	    HTTPURL (string) = URL to navigate to for HTTP output in GET method
	    UseOwnDomain (boolean) = Will prepend current domain name part before the given url and the output will be "http://" + www.domainname.com + "/" + URL
	*/

	var pageRequest = false; //variable to hold ajax object
	/*@cc_on
	   @if (@_jscript_version >= 5)
	      try {
	      pageRequest = new ActiveXObject("Msxml2.XMLHTTP")
	      }
	      catch (e){
	         try {
	         pageRequest = new ActiveXObject("Microsoft.XMLHTTP")
	         }
	         catch (e2){
	         pageRequest = false
	         }
	      }
	   @end
	@*/

	if(!pageRequest && typeof XMLHttpRequest != 'undefined')pageRequest = new XMLHttpRequest();
	HTTPResponse='Couldn\'t get data!';

	if(pageRequest){ //if pageRequest is not false
	    if(UseOwnDomain)HTTPURL=''+window.location.protocol+'//'+window.location.hostname+window.location.pathname+HTTPURL;

		pageRequest.open('GET', HTTPURL, false); //get page synchronously
		pageRequest.send(null);
		//if viewing page offline or the document was successfully retrieved online (status code=2000)
		if(window.location.href.indexOf("http")==-1 || pageRequest.status==200)HTTPResponse=pageRequest.responseText;
	}

	//alert(HTTPResponse);
	return HTTPResponse;
}

function GetBrowserURL(PathOnly){
	NewURL = window.location.protocol+'//'+window.location.hostname;
	if(PathOnly){
		PathArray = window.location.pathname.split('/');
		for(i=1;i<PathArray.length;i++){
			if(i !=PathArray.length-1){
				NewURL +='/';
				NewURL +=PathArray[i];
			}
		}
		NewURL +='/';
	}
	else{
		NewURL +=window.location.pathname;
	}

	return NewURL;
}

function SetRatingStar(EntityName, EntityID, Rating, StarFile, StarFileFilled, RatingAJAXURLURL){
	for(RatingCounter=1; RatingCounter<=5; RatingCounter++){
		objStar=document.getElementById('RatingStar_'+RatingCounter+'_EntityID_'+EntityID+'');
		if(RatingCounter<=Rating)objStar.src=StarFileFilled;
		objStar.className='RatingStar';
	}

	RatingAJAXURLURL=RatingAJAXURLURL+'&'+EntityName+'ID='+EntityID+'&'+EntityName+'Rating='+Rating+'';
	//alert(RatingAJAXURLURL);

	HTTPRequest(RatingAJAXURLURL, 'get', true, null);

	return true;
}
