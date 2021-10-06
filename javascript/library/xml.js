function LoadXMLDocumentFromString(XMLString){
	if(!window.DOMParser)alert('function LoadXMLDocumentFromString(): XML DOM Parser is not available on this browser!');
	Parser=new DOMParser();
	return Parser.parseFromString(XMLString, 'text/xml');
}

function StringToXML(XMLString){
	if(window.DOMParser){
		Parser=new DOMParser();
		XMLDoc=parser.parseFromString(XMLString, 'text/xml');
	}
	else{ // Internet Explorer
		XMLDoc=new ActiveXObject('Microsoft.XMLDOM');
		XMLDoc.async='false';
		XMLDoc.loadXML(XMLString);
	}
	
	return xmlDoc;
}