function TreeViewRemoveNode(TreeViewName, NodeID){
	RemoveHTMLChildElementByID(TreeViewName+'_TreeViewItem_'+NodeID);
}

function TreeViewAddNode(TreeViewName, ParentNodeID, NodeID, ParameterName, ToggleIconBaseURL, ToggleState, Icon, Caption, URL, URLTarget, Check, Radio, Script, ClassModifier){
	// Add node to  PHP/Library TreeView control

	Title='<span class=\"'+ClassModifier+'TreeViewItemTitleCaption\">'+Caption+'</span>';
	if(Icon!='')Title='<img src=\"'+Icon+'\" alt=\"'+Caption+'\" class=\"'+ClassModifier+'TreeViewItemTitleIcon\"> '+Title;
	if(URL!='')'<a href="'+URL+'" target="'+URLTarget+'" class="">'+Title+'</a>';
	if(Check)Title='<input type=\"checkbox\" name=\"'+ParameterName+'_Check['+NodeID+']\" value=\"'+NodeID+'\" class=\"'+ClassModifier+'TreeViewItemTitleInputCheck\"> '+Title;
	if(Radio)Title='<input type=\"radio\" name=\"'+ParameterName+'_Radio\" value=\"'+NodeID+'\" class=\"'+ClassModifier+'TreeViewItemTitleInputRadio\"> '+Title;

	HTML='<div id=\"'+TreeViewName+'_TreeViewItemTitle_'+NodeID+'\" class=\"'+ClassModifier+'TreeViewItemTitle\" onclick=\"TreeViewSelectNode(\''+TreeViewName+'\', \''+NodeID+'\', \''+ParameterName+'\', \''+ClassModifier+'\', function(){'+Script+'});\"><img id=\"'+TreeViewName+'_TreeViewToggleIcon_'+NodeID+'\" src=\"'+ToggleIconBaseURL+'toggle_'+ToggleState.toLowerCase()+'.png\" alt=\"Toggle\" class=\"'+ClassModifier+'TreeViewItemTitleToggleIcon\" onclick=\"TreeViewToggleNode(\''+TreeViewName+'\', \''+NodeID+'\', \''+ToggleIconBaseURL+'\');\"> '+Title+'</div> <!-- TreeViewItemTitle --> <input type=\"hidden\" id=\"My_TreeView_Trace_'+NodeID+'\" value=\"\"> <div id=\"'+TreeViewName+'_TreeViewItemChildren_'+NodeID+'\" class=\"'+ClassModifier+'TreeViewItemChildren\" style=\"display: none;\"></div>  <!-- TreeViewItemChildren -->';
	//alert(HTML);
	AppendHTMLChildElement(TreeViewName+'_TreeViewItemChildren_'+ParentNodeID, 'DIV', 'My_TreeViewItem_'+NodeID, HTML, ClassModifier+'TreeViewItem', '', '', '', false, false)
	document.getElementById(TreeViewName+'_TreeView_Trace_'+NodeID).value=document.getElementById(TreeViewName+'_TreeView_Trace_'+ParentNodeID).value+','+ParentNodeID;
	//alert(document.getElementById(TreeViewName+'_TreeView_Trace_'+NodeID).value);
}

function TreeViewSelectNode(TreeViewName, NodeID, ParameterName, ClassModifier, CallBack){
	// Node selector for PHP/Library TreeView control

	objInput=document.getElementById(TreeViewName+'_TreeView_'+ParameterName);
	if(objInput.value!=0)document.getElementById(TreeViewName+'_TreeViewItemTitle_'+objInput.value).className=ClassModifier+'TreeViewItemTitle';
	objInput.value=NodeID;
	document.getElementById(TreeViewName+'_TreeViewItemTitle_'+NodeID).className=ClassModifier+'TreeViewItemTitleSelected';
	document.getElementById(TreeViewName+'_TreeView_Trace').value=document.getElementById(TreeViewName+'_TreeView_Trace_'+NodeID).value;
	if(CallBack!=null&&CallBack!='')CallBack();
}

function TreeViewToggleNode(TreeViewName, NodeID, ImageBaseURL){
	// Node toggler for PHP/Library TreeView control

	objToggleIcon=document.getElementById(TreeViewName+'_TreeViewToggleIcon_'+NodeID);
	ToggleVisibilityByElementID(TreeViewName+'_TreeViewItemChildren_'+NodeID);
	objToggleIcon.src=ImageBaseURL+'toggle_expand.png';
	if(document.getElementById(TreeViewName+'_TreeViewItemChildren_'+NodeID).style.display=='')objToggleIcon.src=ImageBaseURL+'toggle_collapse.png';
	StopEventFlow(event);
}

function RemoveHTMLChildElementByID(ElementID){
    RemoveHTMLChildElement(document.getElementById(ElementID));
}

function RemoveHTMLChildElement(Element){
    Element.parentNode.removeChild(Element);
}

function AppendHTMLChildElement(ParentID, Tag, ID, HTML, CSSClass, Style, Name, Value, Selected, Checked, OnClick){
	ParentElement=document.getElementById(ParentID);

	if(ParentElement){
		NewElement = document.createElement(Tag);

		if(HTML)NewElement.innerHTML=HTML;
		if(ID)NewElement.setAttribute('id', ID);
		if(CSSClass)NewElement.setAttribute('class', CSSClass);
		if(Style)NewElement.setAttribute('style', Style);
		if(Name)NewElement.setAttribute('name', Name);
		if(Value)NewElement.setAttribute('value', Value);
		if(Selected)NewElement.setAttribute('selected', '');
		if(Checked)NewElement.setAttribute('checked', '');
		if(OnClick)NewElement.setAttribute('onclick', OnClick);

		ParentElement.appendChild(NewElement);

		Result=NewElement;
	}
	else{
		alert('Parent element not found with ID = '+ParentID+'');
		Result=false;
	}

	return Result;
}

function AddOptionToSelectList(SelectID, OptionValue, OptionCaption){
	objSelect=document.getElementById(SelectID);
    objSelect.options[objSelect.options.length]=new Option(OptionCaption, OptionValue);
}

function SetNumberOfDaysInDropDown(DropDownListID, Month, Year){
	DropDownList=document.getElementById(DropDownListID);

	Month=parseFloat(Month);
	Year=parseInt(Year);

	LastDayInList=parseInt(DropDownList.options[DropDownList.options.length-1].value); // Detect number of days in current list
	if(LastDayInList<30){for(i=LastDayInList+1;i<31;i++)AddOptionToSelectList(DropDownListID, i, i);} // Make sure the list has at least 30 days
	if(LastDayInList>30){for(i=DropDownList.options.length;i>30;i--)DropDownList.options[i-1]=null;} // Trim the list to 30 days
    LastDayInList=30;

	if((Month<8 && Month%2==1)||(Month>7 && Month%2==0)){ // //Add 31th days for appropriate months
		AddOptionToSelectList(DropDownListID, 31, 31);
	    LastDayInList=31;
	}

	if(Month==2){ // Check for February
		if(parseInt(Year/4)!=(Year/4)){ // Normal year, set days to 28
	        DropDownList.options[DropDownList.options.length-1]=null;
	        DropDownList.options[DropDownList.options.length-1]=null;
		    LastDayInList=28;
		}
		else{ // Leap year, set days to 29
	        DropDownList.options[DropDownList.options.length-1]=null;
		    LastDayInList=29;
		}
	}

	return true;
}

function SetDateStringFromHTMLUIDateInput(TagID){
	document.getElementById(TagID + '_String').value = document.getElementById(TagID + '_Year').value + '/' + document.getElementById(TagID + '_Month').value + '/' + document.getElementById(TagID + '_Day').value;

	console.log('Year = ' + document.getElementById(TagID + '_Year').value);
	console.log('Month = ' + document.getElementById(TagID + '_Month').value);
	console.log('Day = ' + document.getElementById(TagID + '_Day').value);

	return true;
}

function XMLURLToSelectOption(XMLURL, ValueColumn, CaptionColumn, objSelect, BlankValue, BlankCaption, DefaultValue){
	//alert('function XMLURLToSelectOption(XMLURL = \''+XMLURL+'\', ValueColumn = \''+ValueColumn+'\', CaptionColumn = \''+CaptionColumn+'\', objSelect = \''+objSelect+'\', BlankValue = \''+BlankValue+'\', BlankCaption = \''+BlankCaption+'\', DefaultValue = \''+DefaultValue+'\')');

	objSelect.style.display='none';
	objSelect.options.length=0;
	SelectOptionAdd(objSelect, BlankValue, BlankCaption);

	XMLDoc=LoadXMLDocumentFromString(HTTPRequest(XMLURL, 'get', false, null));
	ValueNode=XMLDoc.getElementsByTagName(ValueColumn);
	CaptionNode=XMLDoc.getElementsByTagName(CaptionColumn);
	for(NodeCounter=0; NodeCounter<ValueNode.length; NodeCounter++)SelectOptionAdd(objSelect, ValueNode[NodeCounter].childNodes[0].nodeValue, CaptionNode[NodeCounter].childNodes[0].nodeValue);

	objSelect.value=DefaultValue;
	if(ValueNode.length>1)objSelect.style.display='';
}

function UpdateChildrenSelectOption(Entity, EntityAlias, EntityParent, CaptionColumn, DefaultValue, FormName, BlankOptionCaption){
	//alert('function UpdateChildrenSelectOption(Entity = \''+Entity+'\', EntityAlias = \''+EntityAlias+'\', EntityParent = \''+EntityParent+'\', CaptionColumn = \''+CaptionColumn+'\', DefaultValue = \''+DefaultValue+'\', FormName = \''+FormName+'\', BlankOptionCaption = \''+BlankOptionCaption+'\')');

	for(EntityCounter=0; EntityCounter<Entity.length; EntityCounter++){
		//alert('Entity[EntityCounter] = \''+Entity[EntityCounter]+'\'');
		XMLURLToSelectOption('./?Script=XMLEntitySelect&Entity='+Entity[EntityCounter]+'&Where='+EntityAlias[EntityCounter]+'.'+EntityParent[EntityCounter]+'ID = '+document.getElementById(''+FormName+'_'+EntityParent[EntityCounter]+'ID').value+'', ''+Entity[EntityCounter]+'ID', CaptionColumn[EntityCounter], document.getElementById(''+FormName+'_'+Entity[EntityCounter]+'ID'), '', BlankOptionCaption, DefaultValue[EntityCounter]);
	}
}

function AJAXEntityInsertUpdate(Entity, csvColumn, lstValue, ValueSeparator, Where, CallBackFunction){
	HTTPRequest('./?Script=EntityInsertUpdateFromURL&Entity='+Entity+'&csvColumn='+csvColumn+'&lstValue='+lstValue+'&ValueSeparator='+ValueSeparator+'&Where='+Where+'', 'get', true, CallBackFunction);
}