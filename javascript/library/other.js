function DisableBrowserContextMenu(){
		//return true;
        return ['INPUT', 'TEXTAREA'].indexOf(document.activeElement.tagName) == -1 ? false : true;
}

function RandomInteger(Minimum, Maximum){
	return Math.floor(Math.random() * (Maximum - Minimum) + Minimum + 1);
}

function WordInitials(Sentence){
	Initial = Sentence.match(/\b(\w)/g);

	return Initial.join('');
}

function SetPikadayDate(objPikaday, strIDPrefix){
	objPikaday.setDate(document.getElementById(strIDPrefix + '_Year').value + '-' + document.getElementById(strIDPrefix + '_Month').value + '-' + document.getElementById(strIDPrefix + '_Day').value);

	return true;
}

function DateDifference(PriorDate, LaterDate){
	if(!PriorDate)PriorDate = new Date().getTime();
	if(!LaterDate)LaterDate = new Date().getTime();

	Miliseconds = LaterDate - PriorDate;

	Years = Math.floor(Miliseconds / 31536000000);
	RemainingMiliseconds = Miliseconds - (Years * 31536000000);

	Months = Math.floor(RemainingMiliseconds / 1000 / 60 / 60 / 24 / 30);
	RemainingMiliseconds = RemainingMiliseconds - (Months * 30 * 24 * 60 * 60 * 1000);

	Days = Math.floor(Months * RemainingMiliseconds / 1000 / 60 / 60 / 24);
	RemainingMiliseconds = RemainingMiliseconds - (Days * 24 * 60 * 60 * 1000);

	Hours = Math.floor(Months * RemainingMiliseconds / 1000 / 60 / 60);
	RemainingMiliseconds = RemainingMiliseconds - (Hours * 60 * 60 * 1000);

	Minutes = Math.floor(Months * RemainingMiliseconds / 60000);
	RemainingMiliseconds = RemainingMiliseconds - (Hours * 60000);

	Seconds = Math.floor(Months * RemainingMiliseconds / 1000);
	RemainingMiliseconds = RemainingMiliseconds - (Hours * 1000);

	return {Year: Years, Month: Months, Day: Days, Hour: Hours, Minute: Minutes, Second: Seconds};
}

function ReplaceAll(Find, Replace, String){
  return String.replace(new RegExp(Find, 'g'), Replace);
}

function LeftPad(String, Pad, Length){
	if(String.length<Length)String=Strings(Pad, Length-String.length)+String;

	return String;
}

function RightPad(String, Pad, Length){
	if(String.length<Length)String=String+Strings(Pad, Length-String.length);

	return String;
}

function Strings(String, Count){
	OriginalString=String;
	for(Counter=1; Counter<Count; Counter++)String=String+OriginalString;

	return String;
}

function OpenUserFileManager(){
	wndFileBrowser=window.open('./?Script=userfilemanager&NoHeader&NoFooter', 'wndFileBrowser', 'status=0,toolbar=0,location=0,menubar=0,directories=0,resizable=1,scrollbars=0,height=400,width=704');
}

function GoogleMapRepaint(Map){
	MapCenterLatLong=Map.getCenter();
	google.maps.event.trigger(Map, 'resize');
	Map.setCenter(MapCenterLatLong);
}

function CopyToClipboard(Text){
	if(window.clipboardData && clipboardData.setData){
		clipboardData.setData('Text', Text); //alert('Copied');
		return true;
	}
	else{
		/*
		unsafeWindow.netscape.security.PrivilegeManager.enablePrivilege('UniversalXPConnect');
        const clipboardHelper = Components.classes["@mozilla.org/widget/clipboardhelper;1"].getService(Components.interfaces.nsIClipboardHelper);
        clipboardHelper.copyString(Text);
		*/

		alert('Feature not available!');

		return false;
	}
}

function MakeRichTextArea(ObjectID){
	RTAObject = document.getElementById(ObjectID);
	RTAObject.style.width = RTAObject.offsetWidth + 'px';
	tinyMCE.execCommand('mceAddControl', false, ObjectID);
}

function RemoveRichTextArea(ObjectID){
	if(tinyMCE.getInstanceById(ObjectID)){
		tinyMCE.execCommand('mceFocus', false, ObjectID);
		tinyMCE.execCommand('mceRemoveControl', false, ObjectID);
	}
}

function ToggleRichTextArea(ObjectID){
	if(tinyMCE.getInstanceById(ObjectID)){
		RemoveRichTextArea(ObjectID);
	}
	else{
		MakeRichTextArea(ObjectID);
	}
}
