/*
	Purpose: Various functions to perform DHTML tasks
	Author: Shahriar Kabir (SKJoy2001@Yahoo.Com)
	Date : Monday, November 20, 2006
	Updated : Sun, 22 Oct 2017 12:59:31 GMT+06:00

	Funtion list:

	    SetVisibilityByElement(objElement, Visibility)
	    SetVisibilityByElementID(ElementID, Visibility)
	    ToggleVisibilityByElement(objElement)
	    ToggleVisibilityByElementID(ElementID)
	    WriteHTMLByElement(objElement, NewHTML)
	    WriteHTMLByElementID(ElementID, NewHTML)
*/

function AJAXify(objInput, URL, ContentKey, MinCharCount, StyleClass){
	if(objInput.value.length > (MinCharCount - 1)){ // Process only if length is minimum of 3 characters
		DOM_Input_Element = objInput; // Make the objInput accessible by a global variable
//console.log(ContentKey);
		if(!(objContent = document.getElementById(AJAXContainerID = '' + objInput.id + '_AJAX_Container'))){
			objContent = document.createElement('DIV');
			objContent.setAttribute('id', AJAXContainerID);
			objContent.setAttribute('class', StyleClass);
			objInput.parentNode.insertBefore(objContent, objInput.nextSibling);
		}

		HTTPRequest('' + URL +'=' + objInput.value + '', 'GET', true, function(Content){
//console.log(Content);
			Content = JSON.parse(Content);
//console.log(Content);
			objContent.innerHTML = '';

			Content.forEach(function(Item){
				NewItem = AppendHTMLChildElement(objContent.id, 'A', null, Item[ContentKey], null, null, null, null, null, null, 'DOM_Input_Element.value = this.innerHTML; objContent.style.display = \'none\'; return false;');
				NewItem.setAttribute('href', '#');

				return true;
			});

			if(Content.length > 0)objContent.style.display = 'block';

			return true;
		}, true);
	}

	return true;
}

function LeftTopWidthHeighter(ElementID, FromLeft, ToLeft, FromTop, ToTop, MinimumWidth, MaximumWidth, MinimumHeight, MaximumHeight, Step, Interval, Period, LeftSend, TopSend, WidthGrow, HeightGrow, MinimumOpacity, MaximumOpacity, CallBack){
	LeftToper(ElementID, FromLeft, ToLeft, FromTop, ToTop, Step, Interval, Period, LeftSend, TopSend, null, null, null);
	WidthHeighter(ElementID, MinimumWidth, MaximumWidth, MinimumHeight, MaximumHeight, Step, Interval, Period, WidthGrow, HeightGrow, MinimumOpacity, MaximumOpacity, CallBack);
}

function LeftToper(ElementID, FromLeft, ToLeft, FromTop, ToTop, Step, Interval, Period, LeftSend, TopSend, MinimumOpacity, MaximumOpacity, CallBack){
	Lefter(ElementID, FromLeft, ToLeft, Step, Interval, Period, LeftSend, null, null, null);
	Toper(ElementID, FromTop, ToTop, Step, Interval, Period, TopSend, MinimumOpacity, MaximumOpacity, CallBack);
}

function Lefter(ElementID, FromLeft, ToLeft, Step, Interval, Period, Send, MinimumOpacity, MaximumOpacity, CallBack){
	/*
		Purpose:	Animate element left by amount and time (milisecond)
		Author:		Broken Arrow (SKJoy2001@InBox.Com)
		Date:		May 1st, 2012

		Parameter:
			ElementID		STRING			ID of the element to apply on
			FromLeft		INTEGER			From left of the element to retain when shrinking
			ToLeft			INTEGER			To left of the element to retain when growing
			Step			INTEGER			Amount of left to change at a time when animating. Leave with 0 when using Period.
			Interval		INTEGER			Amount of time (milisecond) between each Step. Leave with 0 when using Period.
			Period			INTEGER			Amount of total time (milisecond) for the whole animation. Step and Interval must be set to 0.
			Send			BOOLEAN/NULL	Type/direction of the animation. Set to NULL for automatic toggling.
			MinimumOpacity	FLOAT			Opacity amount to start with FromLeft. Set to NULL not to use opacity animation.
			MaximumOpacity	FLOAT			Opacity amount to end with ToLeft. Set to NULL not to use opacity animation.
			CallBack		FUNCTION		Any regular JavaScript within function(){...} block. Set to NULL for no CallBack.
	*/

	objElement=document.getElementById(ElementID);
	if(objElement.style.left=='')objElement.style.left=FromLeft+'px';

	if(Send==null){
		Send=true;
		if(parseInt(objElement.style.left)>=ToLeft)Send=false;
	}

	if((Send&&ToLeft>parseInt(objElement.style.left))||(!Send&&parseInt(objElement.style.left)>FromLeft)){
		LeftDifference=(ToLeft-FromLeft);

		if(Step==0||Interval==0){
			Step=1;
			Interval=Period/LeftDifference;

			if(LeftDifference>Period){
				Step=LeftDifference/Period;
				Interval=1;
			}
		}

		if(MinimumOpacity!=null&&MaximumOpacity!=null)Opacityer(ElementID, MinimumOpacity, MaximumOpacity, 0, 0, LeftDifference/Step*Interval, Send, null);
		setTimeout('LefterTimerTick(\''+ElementID+'\', '+Step+', '+FromLeft+', '+ToLeft+', '+Send+', '+Interval+', '+CallBack+')', Interval);

		return true;
	}
	else{
		return false;
	}
}

function LefterTimerTick(ElementID, Step, FromLeft, ToLeft, Send, Interval, CallBack){
	/*
		Private function for Lefter function, not for public use.
	*/

	objElement=document.getElementById(ElementID);
	CurrentLeft=parseInt(objElement.style.left);
	NewLeft=CurrentLeft-Step;
	if(Send)NewLeft=CurrentLeft+Step;
	objElement.style.left=NewLeft+'px';
	OperationComplete=false;
	if((Send&&NewLeft>=ToLeft)||(!Send&&NewLeft<=FromLeft))OperationComplete=true;
	FinalLeft=FromLeft;
	if(Send)FinalLeft=ToLeft;

	if(!OperationComplete){
		setTimeout('LefterTimerTick(\''+ElementID+'\', '+Step+', '+FromLeft+', '+ToLeft+', '+Send+', '+Interval+', '+CallBack+')', Interval);
	}else{
		objElement.style.left=FinalLeft+'px';
		if(CallBack!=null)CallBack();
	}

	//objElement.innerHTML='Time = '+new Date().toString()+', Step = '+Step+', ToLeft = '+ToLeft+', Send = '+Send+', Interval = '+Interval+', objElement.style.left = '+objElement.style.left+'';
	return true;
}

function Toper(ElementID, FromTop, ToTop, Step, Interval, Period, Send, MinimumOpacity, MaximumOpacity, CallBack){
	/*
		Purpose:	Animate element top by amount and time (milisecond)
		Author:		Broken Arrow (SKJoy2001@InBox.Com)
		Date:		May 1st, 2012

		Parameter:
			ElementID		STRING			ID of the element to apply on
			FromTop			INTEGER			From top of the element to retain when shrinking
			ToTop			INTEGER			To top of the element to retain when growing
			Step			INTEGER			Amount of top to change at a time when animating. Leave with 0 when using Period.
			Interval		INTEGER			Amount of time (milisecond) between each Step. Leave with 0 when using Period.
			Period			INTEGER			Amount of total time (milisecond) for the whole animation. Step and Interval must be set to 0.
			Send			BOOLEAN/NULL	Type/direction of the animation. Set to NULL for automatic toggling.
			MinimumOpacity	FLOAT			Opacity amount to start with FromTop. Set to NULL not to use opacity animation.
			MaximumOpacity	FLOAT			Opacity amount to end with ToTop. Set to NULL not to use opacity animation.
			CallBack		FUNCTION		Any regular JavaScript within function(){...} block. Set to NULL for no CallBack.
	*/

	objElement=document.getElementById(ElementID);
	if(objElement.style.top=='')objElement.style.top=FromTop+'px';

	if(Send==null){
		Send=true;
		if(parseInt(objElement.style.top)>=ToTop)Send=false;
	}

	if((Send&&ToTop>parseInt(objElement.style.top))||(!Send&&parseInt(objElement.style.top)>FromTop)){
		TopDifference=(ToTop-FromTop);

		if(Step==0||Interval==0){
			Step=1;
			Interval=Period/TopDifference;

			if(TopDifference>Period){
				Step=TopDifference/Period;
				Interval=1;
			}
		}

		if(MinimumOpacity!=null&&MaximumOpacity!=null)Opacityer(ElementID, MinimumOpacity, MaximumOpacity, 0, 0, TopDifference/Step*Interval, Send, null);
		setTimeout('ToperTimerTick(\''+ElementID+'\', '+Step+', '+FromTop+', '+ToTop+', '+Send+', '+Interval+', '+CallBack+')', Interval);

		return true;
	}
	else{
		return false;
	}
}

function ToperTimerTick(ElementID, Step, FromTop, ToTop, Send, Interval, CallBack){
	/*
		Private function for Toper function, not for public use.
	*/

	objElement=document.getElementById(ElementID);
	CurrentTop=parseInt(objElement.style.top);
	NewTop=CurrentTop-Step;
	if(Send)NewTop=CurrentTop+Step;
	objElement.style.top=NewTop+'px';
	OperationComplete=false;
	if((Send&&NewTop>=ToTop)||(!Send&&NewTop<=FromTop))OperationComplete=true;
	FinalTop=FromTop;
	if(Send)FinalTop=ToTop;

	if(!OperationComplete){
		setTimeout('ToperTimerTick(\''+ElementID+'\', '+Step+', '+FromTop+', '+ToTop+', '+Send+', '+Interval+', '+CallBack+')', Interval);
	}else{
		objElement.style.top=FinalTop+'px';
		if(CallBack!=null)CallBack();
	}

	//objElement.innerHTML='Time = '+new Date().toString()+', Step = '+Step+', ToTop = '+ToTop+', Send = '+Send+', Interval = '+Interval+', objElement.style.top = '+objElement.style.top+'';
	return true;
}

function WidthHeighter(ElementID, MinimumWidth, MaximumWidth, MinimumHeight, MaximumHeight, Step, Interval, Period, WidthGrow, HeightGrow, MinimumOpacity, MaximumOpacity, CallBack){
	Widther(ElementID, MinimumWidth, MaximumWidth, Step, Interval, Period, WidthGrow, null, null, null);
	Heighter(ElementID, MinimumHeight, MaximumHeight, Step, Interval, Period, HeightGrow, MinimumOpacity, MaximumOpacity, CallBack);
}

function Widther(ElementID, MinimumWidth, MaximumWidth, Step, Interval, Period, Grow, MinimumOpacity, MaximumOpacity, CallBack){
	/*
		Purpose:	Animate element width by amount and time (milisecond)
		Author:		Broken Arrow (SKJoy2001@InBox.Com)
		Date:		May 1st, 2012

		Parameter:
			ElementID		STRING			ID of the element to apply on
			MinimumWidth	INTEGER			Minimum width of the element to retain when shrinking
			MaximumWidth	INTEGER			Maximum width of the element to retain when growing
			Step			INTEGER			Amount of width to change at a time when animating. Leave with 0 when using Period.
			Interval		INTEGER			Amount of time (milisecond) between each Step. Leave with 0 when using Period.
			Period			INTEGER			Amount of total time (milisecond) for the whole animation. Step and Interval must be set to 0.
			Grow			BOOLEAN/NULL	Type/direction of the animation. Set to NULL for automatic toggling.
			MinimumOpacity	FLOAT			Opacity amount to start with MinimumWidth. Set to NULL not to use opacity animation.
			MaximumOpacity	FLOAT			Opacity amount to end with MaximumWidth. Set to NULL not to use opacity animation.
			CallBack		FUNCTION		Any regular JavaScript within function(){...} block. Set to NULL for no CallBack.
	*/

	if(MaximumWidth==null)MaximumWidth=DetectWidth(ElementID);
	objElement=document.getElementById(ElementID);
	if(objElement.style.width=='')objElement.style.width=MaximumWidth+'px';

	if(Grow==null){
		Grow=false;
		if(parseInt(objElement.style.width)==0)Grow=true;
	}

	if((Grow&&MaximumWidth>parseInt(objElement.style.width))||(!Grow&&parseInt(objElement.style.width)>MinimumWidth)){
		WidthDifference=(MaximumWidth-MinimumWidth);

		if(Step==0||Step==null||Interval==0||Interval==null){
			Step=1;
			Interval=Period/WidthDifference;

			if(WidthDifference>Period){
				Step=WidthDifference/Period;
				Interval=1;
			}
		}

		if(MinimumOpacity!=null&&MaximumOpacity!=null)Opacityer(ElementID, MinimumOpacity, MaximumOpacity, 0, 0, WidthDifference/Step*Interval, Grow, null);
		//alert('function Widther:\n\nElementID = '+ElementID+'\n\nStep = '+Step+'\n\nMinimumWidth = '+MinimumWidth+'\n\nMaximumWidth = '+MaximumWidth+'\n\nGrow = '+Grow+'\n\nInterval = '+Interval+'');
		setTimeout('WidtherTimerTick(\''+ElementID+'\', '+Step+', '+MinimumWidth+', '+MaximumWidth+', '+Grow+', '+Interval+', '+CallBack+')', Interval);

		return true;
	}
	else{
		return false;
	}
}

function WidtherTimerTick(ElementID, Step, MinimumWidth, MaximumWidth, Grow, Interval, CallBack){
	/*
		Private function for Widther function, not for public use.
	*/

	objElement=document.getElementById(ElementID);
	CurrentWidth=parseInt(objElement.style.width);
	NewWidth=CurrentWidth-Step;
	if(Grow)NewWidth=CurrentWidth+Step;
	objElement.style.width=NewWidth+'px';
	OperationComplete=false;
	if((Grow&&NewWidth>=MaximumWidth)||(!Grow&&NewWidth<=MinimumWidth))OperationComplete=true;

	if(!OperationComplete){
		setTimeout('WidtherTimerTick(\''+ElementID+'\', '+Step+', '+MinimumWidth+', '+MaximumWidth+', '+Grow+', '+Interval+', '+CallBack+')', Interval);
	}else{
		FinalWidth=MinimumWidth;
		if(Grow)FinalWidth=MaximumWidth;
		objElement.style.width=FinalWidth+'px';
		if(CallBack!=null)CallBack();
	}

	//objElement.innerHTML='Time = '+new Date().toString()+', Step = '+Step+', MaximumWidth = '+MaximumWidth+', Grow = '+Grow+', Interval = '+Interval+', objElement.style.width = '+objElement.style.width+'';
	return true;
}

function Heighter(ElementID, MinimumHeight, MaximumHeight, Step, Interval, Period, Grow, MinimumOpacity, MaximumOpacity, CallBack){
	/*
		Purpose:	Animate element height by amount and time (milisecond)
		Author:		Broken Arrow (SKJoy2001@InBox.Com)
		Date:		May 1st, 2012

		Parameter:
			ElementID		STRING			ID of the element to apply on
			MinimumHeight	INTEGER			Minimum height of the element to retain when shrinking
			MaximumHeight	INTEGER			Maximum height of the element to retain when growing
			Step			INTEGER			Amount of height to change at a time when animating. Leave with 0 when using Period.
			Interval		INTEGER			Amount of time (milisecond) between each Step. Leave with 0 when using Period.
			Period			INTEGER			Amount of total time (milisecond) for the whole animation. Step and Interval must be set to 0.
			Grow			BOOLEAN/NULL	Type/direction of the animation. Set to NULL for automatic toggling.
			MinimumOpacity	FLOAT			Opacity amount to start with MinimumHeight. Set to NULL not to use opacity animation.
			MaximumOpacity	FLOAT			Opacity amount to end with MaximumHeight. Set to NULL not to use opacity animation.
			CallBack		FUNCTION		Any regular JavaScript within function(){...} block. Set to NULL for no CallBack.
	*/

	if(MaximumHeight==null)MaximumHeight=DetectHeight(ElementID);
	objElement=document.getElementById(ElementID);
	if(objElement.style.height=='')objElement.style.height=MaximumHeight+'px';

	if(Grow==null){
		Grow=false;
		if(parseInt(objElement.style.height)<MaximumHeight)Grow=true;
	}

	if((Grow&&MaximumHeight>parseInt(objElement.style.height))||(!Grow&&parseInt(objElement.style.height)>MinimumHeight)){
		HeightDifference=(MaximumHeight-MinimumHeight);

		if(Step==0||Step==null||Interval==0||Interval==null){
			Step=1;
			Interval=Period/HeightDifference;

			if(HeightDifference>Period){
				Step=HeightDifference/Period;
				Interval=1;
			}
		}

		if(MinimumOpacity!=null&&MaximumOpacity!=null)Opacityer(ElementID, MinimumOpacity, MaximumOpacity, 0, 0, HeightDifference/Step*Interval, Grow, null);
		//alert('function Heighter:\n\nElementID = '+ElementID+'\n\nStep = '+Step+'\n\nMinimumHeight = '+MinimumHeight+'\n\nMaximumHeight = '+MaximumHeight+'\n\nGrow = '+Grow+'\n\nInterval = '+Interval+'');
		setTimeout('HeighterTimerTick(\''+ElementID+'\', '+Step+', '+MinimumHeight+', '+MaximumHeight+', '+Grow+', '+Interval+', '+CallBack+')', Interval);

		return true;
	}
	else{
		return false;
	}
}

function HeighterTimerTick(ElementID, Step, MinimumHeight, MaximumHeight, Grow, Interval, CallBack){
	/*
		Private function for Heighter function, not for public use.
	*/

	objElement=document.getElementById(ElementID);
	CurrentHeight=parseInt(objElement.style.height);
	NewHeight=CurrentHeight-Step;
	if(Grow)NewHeight=CurrentHeight+Step;
	objElement.style.height=NewHeight+'px';
	OperationComplete=false;
	if((Grow&&NewHeight>=MaximumHeight)||(!Grow&&NewHeight<=MinimumHeight))OperationComplete=true;

	if(!OperationComplete){
		setTimeout('HeighterTimerTick(\''+ElementID+'\', '+Step+', '+MinimumHeight+', '+MaximumHeight+', '+Grow+', '+Interval+', '+CallBack+')', Interval);
	}else{
		FinalHeight=MinimumHeight;
		if(Grow)FinalHeight=MaximumHeight;
		objElement.style.height=FinalHeight+'px';
		if(CallBack!=null)CallBack();
	}

	//objElement.innerHTML='Time = '+new Date().toString()+', Step = '+Step+', MaximumHeight = '+MaximumHeight+', Grow = '+Grow+', Interval = '+Interval+', objElement.style.height = '+objElement.style.height+'';
	return true;
}

function Opacityer(ElementID, MinimumOpacity, MaximumOpacity, Step, Interval, Period, In, CallBack){
	/*
		Purpose:	Animate element opacity by amount and time (milisecond)
		Author:		Broken Arrow (SKJoy2001@InBox.Com)
		Date:		May 1st, 2012

		Parameter:
			ElementID		STRING			ID of the element to apply on
			MinimumOpacity	FLOAT			Minimum opacity of the element to retain when shrinking
			MaximumOpacity	FLOAT			Maximum opacity of the element to retain when growing
			Step			INTEGER			Amount of opacity to change at a time when animating. Leave with 0 when using Period.
			Interval		INTEGER			Amount of time (milisecond) between each Step. Leave with 0 when using Period.
			Period			INTEGER			Amount of total time (milisecond) for the whole animation. Step and Interval must be set to 0.
			In				BOOLEAN/NULL	Type/direction of the animation. Set to NULL for automatic toggling.
			CallBack		FUNCTION		Any regular JavaScript within function(){...} block. Set to NULL for no CallBack.
	*/

	objElement=document.getElementById(ElementID);
	if(objElement.style.opacity=='')objElement.style.opacity=MaximumOpacity;

	if(In==null){
		if(parseFloat(objElement.style.opacity)==0){
			In=true;
		}
		else{
			In=false;
		}
	}

	if((In&&MaximumOpacity>parseFloat(objElement.style.opacity))||(!In&&parseFloat(objElement.style.opacity)>MinimumOpacity)){
		OpacityDifference=MaximumOpacity-MinimumOpacity;

		if(Step==0||Interval==0){
			Step=0.001;
			Interval=Period/(OpacityDifference/Step);

			if(Interval<1){
				Step=OpacityDifference/Period;
				Interval=1;
			}
		}

		setTimeout('OpacityerTimerTick(\''+ElementID+'\', '+Step+', '+MinimumOpacity+', '+MaximumOpacity+', '+In+', '+Interval+', '+CallBack+')', Interval);

		return true;
	}
	else{
		return false;
	}
}

function OpacityerTimerTick(ElementID, Step, MinimumOpacity, MaximumOpacity, In, Interval, CallBack){
	/*
		Private function for Opacityer function, not for public use.
	*/
	objElement=document.getElementById(ElementID);
	CurrentOpacity=parseFloat(objElement.style.opacity);
	NewOpacity=CurrentOpacity-Step;
	if(In)NewOpacity=CurrentOpacity+Step;
	objElement.style.opacity=NewOpacity.toFixed(3);
	OperationComplete=false;
	if((In&&NewOpacity>=MaximumOpacity)||(!In&&NewOpacity<=MinimumOpacity))OperationComplete=true;
	FinalOpacity=MinimumOpacity;
	if(In)FinalOpacity=MaximumOpacity;

	if(!OperationComplete){
		setTimeout('OpacityerTimerTick(\''+ElementID+'\', '+Step+', '+MinimumOpacity+', '+MaximumOpacity+', '+In+', '+Interval+', '+CallBack+')', Interval);
	}else{
		objElement.style.opacity=FinalOpacity;
		if(CallBack!=null)CallBack();
	}

	//objElement.innerHTML='Time = '+new Date().toString()+'<br />ElementID = '+ElementID+'<br />Step = '+Step+'<br />MinimumOpacity = '+MinimumOpacity+'<br />MaximumOpacity = '+MaximumOpacity+'<br />In = '+In+'<br />Interval = '+Interval+'<br />objElement.style.opacity = '+objElement.style.opacity+'';
	return true;
}

function SetVisibilityByElement(objElement, Visibility){
	/*
	    Set visibility of an object or element including the contained HTML.

	    objElement (object) = Tag or object to set the visibility of
	*/

//alert('Visibility requested is = ' + Visibility);

	if(objElement==null||objElement==undefined){
		alert('./library/dhtml.js: function SetVisibilityByElement(): objElement is null or undefined!');
	}
	else{
		if(Visibility){Visibility='';}else{Visibility='none';}
		objElement.style.display = Visibility;
//alert('Visibility is set to ' + Visibility);
	}
}

function SetVisibilityByElementID(ElementID, Visibility){
	/*
	    Same as SetVisibilityByElement() except for that it takes the ID to point to the object or element
	*/

	//alert('function SetVisibilityByElementID(ElementID = '+ElementID+', Visibility = '+Visibility+')');
	//alert(ElementID);
	//alert(document.getElementById(ElementID));
    SetVisibilityByElement(document.getElementById(ElementID), Visibility);
}

function ToggleVisibilityByElement(objElement){
	/*
	    Show or hide an object or element including the contained HTML.

	    objElement (object) = Tag or object to show or hide
	*/

    Visibility = false;
    if(objElement.style.display == 'none')Visibility = true;
//alert('Visibility requesting is = ' + Visibility);
    SetVisibilityByElement(objElement, Visibility);
}

function ToggleVisibilityByElementID(ElementID){
	/*
	    Same as ToggleVisibilityByElement() except for that it takes the ID to point to the object or element
	*/

    ToggleVisibilityByElement(document.getElementById(ElementID));
}

function WriteHTMLByElement(objElement, NewHTML){
	/*
	    Replace the contained HTML text for a given tag or element.

	    objElement (object) = Tag or object to replace the contained HTML text for
	    NewHTML (string) = The HTML text to replace with
	*/

    objElement.innerHTML=NewHTML;
}

function WriteHTMLByElementID(ElementID, NewHTML){
	/*
	    Same as WriteHTMLByElement() except for that it takes the ID to point to the object or element
	*/

    WriteHTMLByElement(document.getElementById(ElementID), NewHTML);
}

function ToggleCheckBoxArray(FormID, CheckBoxName, CheckedState, Inverse){
	objForm = document.getElementById(FormID);

	if(objForm==null||objForm==undefined){
		alert('./library/dhtml.js: function ToggleCheckBoxArray(): \'objForm\' is null or undefined!');
	}
	else{
		//alert('objForm.elements.length = '+objForm.elements.length);

		for(ElementCounter=0; ElementCounter<objForm.elements.length; ElementCounter++){
			if(objForm.elements[ElementCounter].type=='checkbox'){
				//alert('objForm.elements['+ElementCounter+'].name = '+objForm.elements[ElementCounter].name);

				if(
						objForm.elements[ElementCounter].name==CheckBoxName
					||	(
								objForm.elements[ElementCounter].name.substring(0, CheckBoxName.length)==CheckBoxName
							&&	objForm.elements[ElementCounter].name.substring(CheckBoxName.length, CheckBoxName.length+1)=='['
						)
				){
					if(Inverse){
						State=true;
						if(objForm.elements[ElementCounter].checked)State=false;
					}
					else{
						State=CheckedState;
					}

					//alert('Setting '+objForm.name+'.'+objForm.elements[ElementCounter].name+'.checked = '+State);
					objForm.elements[ElementCounter].checked=State;
				}
			}
		}
	}
}

function DetectWidth(ElementID){
	objElement=document.getElementById(ElementID);
	OriginalWidth=objElement.style.width;
	objElement.style.width='';
	DetectedWidth=objElement.clientWidth;
	objElement.style.width=OriginalWidth;

	//alert('function DetectWidth(ElementID = '+ElementID+')\nDetectedWidth = '+DetectedWidth+'');
	return DetectedWidth;
}

function DetectHeight(ElementID){
	objElement=document.getElementById(ElementID);
	OriginalHeight=objElement.style.height;
	objElement.style.height='';
	DetectedHeight=objElement.clientHeight;
	objElement.style.height=OriginalHeight;

	//alert('function DetectHeight:\n\nElementID = '+ElementID+'\n\nDetectedHeight = '+DetectedHeight+'');
	return DetectedHeight;
}

function ShowFloatingByElementID(ElementID){
	document.getElementById(ElementID).style.display='inline-block';
	return true;
}

function HideFloatingByElementID(ElementID){
	document.getElementById(ElementID).style.display='none';
	return true;
}

function ToggleFloatingByElementID(ElementID){
	Element=document.getElementById(ElementID);
	Display='none';
	if(Element.style.display==Display)Display='inline-block';
	Element.style.display=Display;
	return Display;
}
