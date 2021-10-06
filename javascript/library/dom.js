function StopEventFlow(objEvent){
	// Don't let the events get fired through the parent object, limit it to the currently applied element only
	// http://www.sitepoint.com/forums/showthread.php?330837-window-event-is-not-working-in-Firefox

	if(window.event){ // For Internet Explorer, Google Chrome, Opera & Safari
		window.event.cancelBubble = true;
	}
	else{ // For Mozilla Firefox. Use 'event' as the value for 'objEvent' argument when calling
		objEvent.stopPropagation();
	}

	return true;
}

function InternetExplorerVersion(){
	var rv = 0; // Return value assumes failure.

	if (navigator.appName == 'Microsoft Internet Explorer'){
		var ua = navigator.userAgent;
		var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
		if (re.exec(ua) != null)rv = parseFloat( RegExp.$1 );
	}

	return rv;
}

function WindowDimension(objWindow){
	if(objWindow===null)objWindow=window;

	var winW = 630, winH = 460;

	if (document.body && document.body.offsetWidth) {
		winW = document.body.offsetWidth;
		winH = document.body.offsetHeight;
	}

	if (document.compatMode=='CSS1Compat' && document.documentElement && document.documentElement.offsetWidth ) {
		winW = document.documentElement.offsetWidth;
		winH = document.documentElement.offsetHeight;
	}

	if (window.innerWidth && window.innerHeight) {
		winW = window.innerWidth;
		winH = window.innerHeight;
	}

	return [winW, winH];
}

function Sleep(Delay){
    var start = new Date().getTime();
    while (new Date().getTime() < start + Delay);
}

function SimulateOnMouseLeave(ElementID, CallBack){
	objElement=document.getElementById(ElementID);

	objElement.onmouseout = function(event){
		if (!event) var event = window.event;
		objCheck = (event.relatedTarget) ? event.relatedTarget : event.toElement;

		while(objCheck.tagName!='BODY'){
			if(objCheck == objElement)return;
			objCheck=objCheck.parentNode;
		}

		if(CallBack!=null)CallBack();
	}
}

function InIFrame(){
    try{
        return window.self !== window.top;
    }catch(e){
        return true;
    }
}

