var sJS = {
	DHTML: {
		Autofill: {
			Make: function(
				InputObject, // ID or object reference of the input element to make autofill for
				MinimumLength, // Minimum length of characters to trigger the autofill
				OnSuggestion, // URL to fetch autofill suggestion data in JSON format. Alternatively, a callback function to trigger for static data
				ValueElementName, // Name of the hidden input element to hold the value data for the selected autifill option (automatically created if the name is provided with)
				ValueKey, // Data field key name to pick up the option value from the data record (automatically determined if not provided with)
				CaptionKey, // Data field key name to pick up the option caption from the data record (ValueKey is used if not provided with)
				OnFill, // Callback function to trigger upon selecting the autofill option
				DefaultCaption, // Default caption to fill in the InputObject with
				DefaultValue, // Default value to fill in the ValueElement with
                MultiSelect, // Allow multiple item selection like tag buttons
				Node // JSON child node to find options within (in case if options are not return in base node)
			){
				// Move the input element into a container
				InputContainer = document.createElement('div');
				InputContainer.className = 'Autofill';

				if(typeof InputObject == 'string')InputObject = document.getElementById(InputObject);
				InputObject.autocomplete = 'off';
				if(DefaultCaption)InputObject.value = DefaultCaption;
				InputObject.parentNode.insertBefore(InputContainer, InputObject);
				InputContainer.appendChild(InputObject);

				// Set default parameter values if not provided with
				if(!ValueElementName)ValueElementName = null;
				if(!ValueKey)ValueKey = ValueElementName;
				if(!CaptionKey)CaptionKey = InputObject.name;

                if(MultiSelect){
                    objMultiSelectOptionContainer = document.createElement('div');
                    objMultiSelectOptionContainer.className = 'OptionContainer';
                    objMultiSelectOptionContainer.innerHTML = '<span id=\'sJS_Autofill_MultiSelect_ItemCounter_' + ValueElementName + '\' class=\'Counter\'>0</span>';

                    InputContainer.appendChild(objMultiSelectOptionContainer);
                }

                if(ValueElementName){ // Create an element to hold the option value
                    var ValueObject = document.createElement('input');
                    ValueObject.type = 'hidden';
                    ValueObject.name = ValueElementName;
                    ValueObject.id = ValueElementName;
                    if(DefaultValue)ValueObject.value = DefaultValue;

                    if(!MultiSelect)InputContainer.appendChild(ValueObject);
                }

				// Create selector container element after the input element
				var SelectorObject = document.createElement('span');
				SelectorObject.className = 'Option';
				InputObject.parentNode.insertBefore(SelectorObject, InputObject.nextSibling);

				InputObjectOldKeyUpEvent = InputObject.onkeyup ? InputObject.onkeyup : null;

				InputObject.onkeyup = function(event){ // Action upon key press (on key up) in the input
					// Reset value upon edit
                    if(
                            (
                                    (event.keyCode >= 32 && event.keyCode <= 126 ) // Value changed/edited
                                ||  InputObject.value == '' // Erased
                            )
                        &&  ValueElementName // Value element exists
                    ){
//console.log('User is typing in the InputObject');
                        ValueObject.value = '';
                    }

					// Set focus to the option selector upon down arrow in the input element
					if(SelectorObject.style.display == 'block'){
						if(event.keyCode == 40){ // Down arrow
							SelectorObject.firstChild.focus(); // Focus the first option in the selector

							return true; // No need to do anything else
						}
						else if(event.keyCode == 27){ // Escape
							sJS.DHTML.Autofill.Hide(SelectorObject, InputObject, true); // Hide selector

							return true; // No need to do anything else
						}
						else{

						}
					}

					// Some value has been typed in the input object
                    if(InputObject.value.length >= MinimumLength && event.keyCode != 13 && event.keyCode != 27){
						if(typeof OnSuggestion == 'string'){ // URL to fetch options JSON from
							AJAXCall = new XMLHttpRequest();

							AJAXCall.onreadystatechange = function(){
								if(
                                        this.readyState == 4
                                    &&  this.status == 200
								){
									Item = JSON.parse(AJAXCall.responseText.trim());
									if(Node)Item = Item[Node];
//console.log(Item);
									if(Item.length)sJS.DHTML.Autofill.Populate(
										Item,
										SelectorObject,
										InputObject,
										ValueElementName ? ValueObject : null,
										ValueKey,
										CaptionKey,
										OnFill,
										MultiSelect ? objMultiSelectOptionContainer : null
									);
								}
								/*
								if(
                                        this.readyState == 4
                                    &&  this.status == 200
                                    &&  (Item = JSON.parse(AJAXCall.responseText.trim())).length
                                )sJS.DHTML.Autofill.Populate(
                                    Item,
                                    SelectorObject,
                                    InputObject,
                                    ValueElementName ? ValueObject : null,
                                    ValueKey,
                                    CaptionKey,
                                    OnFill,
                                    MultiSelect ? objMultiSelectOptionContainer : null
                                );
								*/

								return true;
							};
//console.log(OnSuggestion + '&__Keyword=' + InputObject.value);
							AJAXCall.open('GET', OnSuggestion + '&__Keyword=' + InputObject.value, true);
							AJAXCall.send();
						}
						else if(Array.isArray(OnSuggestion)){ // Array of suggestion options
							SuggestionOption = OnSuggestion;
							SuggestionItem = []; // Assume no suggestion item is available

							if(SuggestionOption.length){ // Only if items are defined for suggestion
								SuggestionCounter = -1; // Keep track of suggestion proposal item count

								for(SuggestionOptionCounter = 0; SuggestionOptionCounter < SuggestionOption.length; SuggestionOptionCounter++){ // Iterate through each suggestion item
									// Determine current suggestion item value to check against current input value
									if(typeof SuggestionOption[SuggestionOptionCounter] == 'object'){ // Suggestion is an object
										CurrentSuggestionOption = SuggestionOption[SuggestionOptionCounter][CaptionKey];
									}
									else{ // Suggestion item is just a value
										CurrentSuggestionOption = SuggestionOption[SuggestionOptionCounter];
									}

									if( // If current suggestion item has the typed in value within (make it case insensitive)
											CurrentSuggestionOption.toUpperCase().indexOf(InputObject.value.toUpperCase()) != -1
										||	!InputObject.value.length // Empty search value, nothing to match with
									){
										SuggestionCounter++; // Increse the suggestion proposal counter

										// Add matched suggestion item to proposal
										if(typeof SuggestionOption[SuggestionOptionCounter] == 'object'){ // Suggestion item is already an object
											SuggestionItem[SuggestionCounter] = SuggestionOption[SuggestionOptionCounter];
										}
										else{ // Make the proposal item an array from the suggestion item
											SuggestionItem[SuggestionCounter] = {[ValueKey]: SuggestionOption[SuggestionOptionCounter], [CaptionKey]: SuggestionOption[SuggestionOptionCounter], };
										}
									}
								}
							}

							// Populate the autofill option list with found suggestion items
							sJS.DHTML.Autofill.Populate(SuggestionItem, SelectorObject, InputObject, ValueElementName ? ValueObject : null, ValueKey, CaptionKey, OnFill, MultiSelect ? objMultiSelectOptionContainer : null);
						}
						else{ // Callback function to define options
							if((Item = OnSuggestion(InputObject.value)).length)sJS.DHTML.Autofill.Populate(
                                Item,
                                SelectorObject,
                                InputObject,
                                ValueElementName ? ValueObject : null,
                                ValueKey,
                                CaptionKey,
                                OnFill,
                                MultiSelect ? objMultiSelectOptionContainer : null
                            );
						}

						return true;
					}

					if(InputObjectOldKeyUpEvent)InputObjectOldKeyUpEvent(event);

					return true;
				};

				if(!MinimumLength)InputObject.onclick = InputObject.onkeyup; // Use focus event same as key up event

				// Hide selector when focus moves off the autofill
                InputObject.onblur = function(){ // We need to WRITE this function as this is asynchronous
                    window.setTimeout(function(){
//console.log(document.activeElement.id);
                        if(
                                document.activeElement.id != InputObject.id
                            &&  document.activeElement.id.substring(0, document.activeElement.id.indexOf('[')) != 'sJS_DHTML_Autofill_Option_Item_' + ValueObject.id
                        ){
                            sJS.DHTML.Autofill.Hide(SelectorObject, InputObject, false); // Hide selector
                        }
                    }, 500);
				}

				return true;
			},
			Populate: function(Item, SelectorObject, InputObject, ValueObject, ValueKey, CaptionKey, OnFill, MultiSelectOptionContainer){
				SelectorObject.innerHTML = ''; // Clear existing options from the selector

				// Set default ValueKey & CaptionKey if Item is an object or array (not a scaler value)
				if(typeof Item[0] == 'object' || typeof Item[0] == 'array'){
					if(!ValueKey)ValueKey = Object.keys(Item[0])[0];
					if(!CaptionKey)CaptionKey = ValueKey;
				}

				for(ItemCounter = 0; ItemCounter < Item.length; ItemCounter++){ // Create options
					SelectorObject.onkeyup = function(event){
						if(event.keyCode == 27){ // Escape
							sJS.DHTML.Autofill.Hide(SelectorObject, InputObject, true); // Hide selector
						}

						return true;
					}

					// Create a button for the option
					ItemOption = document.createElement('button');
					ItemOption.type = 'button';
					ItemOption.className = 'Item';
                    ItemOption.id = 'sJS_DHTML_Autofill_Option_Item_' + ValueObject.id + '[' + ItemCounter + ']';

					if(typeof Item[ItemCounter] == 'object' || typeof Item[ItemCounter] == 'array'){ // Value and caption are separate
						ItemOption.value =  Item[ItemCounter][ValueKey]; // Value of the option
						ItemOption.dataCaption = Item[ItemCounter][CaptionKey]; // Caption of the option
					}
					else{ // Value and caption are same
						ItemOption.value = ItemOption.dataCaption = Item[ItemCounter];
					}

					if(ItemOption.dataCaption)ItemOption.innerHTML = ItemOption.dataCaption.replace(InputObject.value, '<span class=\'Highlight\'>' + InputObject.value + '</span>');

					ItemOption.onkeyup = function(event){ // Action upon key press with the option
						if(event.keyCode == 38){ // Up arrow
							if(this.previousSibling){
								this.previousSibling.focus(); // Focus previous option
							}
							else{
//console.log('Focus the input element beyond the first opion');
								InputObject.focus(); // Focus the input element beyond the first opion
							}
						}
						else if(event.keyCode == 40){ // Down arrow
							if(this.nextSibling)this.nextSibling.focus(); // Focus next option
						}
						else{

						}

						return true;
					}

					ItemOption.onclick = function(event){ // Action upon click/selection with the option
						if(ValueObject)ValueObject.value = this.value; // Set value to designated element

						InputObject.value = this.dataCaption; // Caption as value of input element
						InputObject.dataValue = this.value; // Set data value attribute to input element
						if(InputObject.onchange)InputObject.onchange(); // Fire OnChange event of input element, if it has one
//console.log('sJS.DHTML.Autofill.Populate: InputObject.value = ' + this.dataCaption);

						sJS.DHTML.Autofill.Hide(SelectorObject, InputObject, true); // Hide selector
						if(OnFill)OnFill(InputObject.dataValue, InputObject.value); // OnFill callback

                        if(MultiSelectOptionContainer){
                            MultiSelectOptionIDPrefix = 'sJS_Autofill_MultiSelect_Option_';
                            MultiSelectOptionExists = false;

                            if(!document.getElementById('' + MultiSelectOptionIDPrefix + ValueObject.name + '[' + ValueObject.value + ']')){
                                objMultiSelectOption = document.createElement('span');
                                objMultiSelectOption.className = 'Option';
                                objMultiSelectOption.innerHTML = '<input type=\'hidden\' id=\'' + MultiSelectOptionIDPrefix + ValueObject.name + '[' + ValueObject.value + ']\' name=\'' + ValueObject.name + '[]\' value=\'' + ValueObject.value + '\'><span class=\'Caption\'>' + InputObject.value + '</span><button type=\'button\' class=\'Remove\' onclick=\'this.parentNode.parentNode.removeChild(this.parentNode);\'>❌</button>';
                                MultiSelectOptionContainer.appendChild(objMultiSelectOption);

                                document.getElementById('sJS_Autofill_MultiSelect_ItemCounter_' + ValueObject.name + '').innerHTML = '' + (MultiSelectOptionContainer.childElementCount - 1) + '';
                            }
                        }

						return true;
					};

                    // Hide selector when focus moves off the autofill
                    ItemOption.onblur = function(){ // We need to WRITE this function as this is asynchronous
                        window.setTimeout(function(){
//console.log(document.activeElement.id);
                            if(
                                    document.activeElement.id != InputObject.id
                                &&  document.activeElement.id.substring(0, document.activeElement.id.indexOf('[')) != 'sJS_DHTML_Autofill_Option_Item_' + ValueObject.id
                            ){
                                sJS.DHTML.Autofill.Hide(SelectorObject, InputObject, false); // Hide selector
                            }
                        }, 500);
                    }

					SelectorObject.appendChild(ItemOption); // Add this option to the selector
				}

				SelectorObject.style.display = 'block'; // Show option selector

				return true;
			},
			Hide: function(SelectorObject, InputObject, SetFocusToInputObject){
				SelectorObject.style.display = 'none'; // Hide option selector
//console.log('Keep the cursor/focus within the input');
				if(SetFocusToInputObject){ // Keep the cursor/focus within the input
                    InputObject.focus();
                    sJS.DHTML.SelectAll(InputObject);
                }

				return true;
			},
		},
		Select: {
			Depend: function(TargetElement, SourceElement, OnLoad, Value){
				var OldOnChange = SourceElement.onchange ? SourceElement.onchange : null;

				SourceElement.onchange = function(){
					if(typeof OnLoad == 'string'){
						AJAXCall = new XMLHttpRequest();

						AJAXCall.onreadystatechange = function(){
							if(this.readyState == 4 && this.status == 200 && (Item = JSON.parse(AJAXCall.responseText)).length)sJS.DHTML.Select.Populate(Item, TargetElement, Value);
							return true;
						};

						AJAXCall.open('GET', OnLoad + '&__Keyword=' + SourceElement.value, true);
						AJAXCall.send();
					}
					else{
						if((Item = OnLoad(this.value)).length)sJS.DHTML.Select.Populate(Item, TargetElement, Value);
					}

					if(OldOnChange)OldOnChange();

					return true;
				};

				SourceElement.onchange();

				return true;
			},
			Populate: function(Item, TargetElement, Value){
				TargetElement.innerHTML = '';

				for(ItemCounter = 0; ItemCounter < Item.length; ItemCounter++){
					Option = document.createElement('option');

					if(Array.isArray(Item[ItemCounter])){
						Option.value = Item[ItemCounter][0];
						Option.innerHTML = Item[ItemCounter][1];
					}
					else{
						Option.value = Option.innerHTML = Item[ItemCounter];
					}

					if(Option.value == Value)Option.selected = true;

					TargetElement.appendChild(Option);
				}

				return true;
			},
		},
		Toast: function(Content, CSSSelector, LifeTime, ToastContainer){
			if(ToastContainer){
				if(typeof ToastContainer == 'string')ToastContainer = document.getElementById(ToastContainer);
			}
			else{
				if(!(ToastContainer = document.getElementById('ToastContainer'))){
					ToastContainer = document.createElement('div');
					ToastContainer.id = 'ToastContainer';
					ToastContainer.className = 'ToastContainer';
					document.body.appendChild(ToastContainer);
				}
			}

			var CurrentTime = new Date();

			Toast = document.createElement('div');
			Toast.id = 'Toast_' + sJS.UUID();
			Toast.className = 'Toast';
			if(CSSSelector)Toast.classList.add(CSSSelector);
			Toast.innerHTML = Content;
			ToastContainer.appendChild(Toast);
			setTimeout(function(){ToastContainer.removeChild(ToastContainer.childNodes[0]);}, LifeTime ? LifeTime : 4000);

			return true;
		},
		SelectAll: function(InputObject){
			if(typeof InputObject == 'string')InputObject = document.getElementById(InputObject);
			InputObject.setSelectionRange(0, InputObject.value.length);

			return true;
		},
		Overlapper: {
			Show: function(Content, AllowClose, AllowCloseAnywhere){
				if(AllowClose === undefined)AllowClose = true;
				if(AllowCloseAnywhere === undefined)AllowCloseAnywhere = AllowClose;

				var objOverlapper = document.getElementById('_Overlapper');

				if(!objOverlapper){
					objOverlapper = document.createElement('div');
					objOverlapper.id = '_Overlapper';
					objOverlapper.innerHTML = '<div id="_OverlapperContent" class="Content"></div>' + (AllowClose ? '<button type="button" class="Button Button_Close" onclick="sJS.DHTML.Overlapper.Hide();"><img src="./image/icon/close.png" alt="Close" class="Icon"><span class="Caption">X</span><button>' : '') + '';
					objOverlapper.className = '_Overlapper';
					if(AllowCloseAnywhere)objOverlapper.onclick = function(){sJS.DHTML.Overlapper.Hide()};

					document.body.appendChild(objOverlapper);
				}

				document.getElementById('_OverlapperContent').innerHTML = Content;
				objOverlapper.style.display = 'block';

				return true;
			},
			Hide: function(InParent){
				if(InParent === undefined)InParent = false;

				var Source = InParent ? window.parent.document : document;
				Source.getElementById('_Overlapper').style.display = 'none';
				Source.getElementById('_OverlapperContent').innerHTML = '';

				return true;
			}
		},
		InsertAtCursor: function(areaId,text){
			// Credit goes to https://gist.github.com/fnicollier/4258461
			var txtarea = document.getElementById(areaId);
			var scrollPos = txtarea.scrollTop;
			var strPos = 0;
			var br = ((txtarea.selectionStart || txtarea.selectionStart == '0') ?
				"ff" : (document.selection ? "ie" : false ) );
			if (br == "ie") {
				txtarea.focus();
				var range = document.selection.createRange();
				range.moveStart ('character', -txtarea.value.length);
				strPos = range.text.length;
			}
			else if (br == "ff") strPos = txtarea.selectionStart;

			var front = (txtarea.value).substring(0,strPos);
			var back = (txtarea.value).substring(strPos,txtarea.value.length);
			txtarea.value=front+text+back;
			strPos = strPos + text.length;
			if (br == "ie") {
				txtarea.focus();
				var range = document.selection.createRange();
				range.moveStart ('character', -txtarea.value.length);
				range.moveStart ('character', strPos);
				range.moveEnd ('character', 0);
				range.select();
			}
			else if (br == "ff") {
				txtarea.selectionStart = strPos;
				txtarea.selectionEnd = strPos;
				txtarea.focus();
			}
			txtarea.scrollTop = scrollPos;
		}, 
		Notification: function(Message, Timeout = 5000, Title = null, ItemCSSClass = null, IDPrefix = null, ItemUUID = null){
			if(!Timeout)Timeout = 5000;
			if(!IDPrefix)IDPrefix = '';

			var objNotification = document.getElementById(IDPrefix + '__sJS_Notification');
			
			if(objNotification){
				var objNotificationItemContainer = document.getElementById(IDPrefix + '__sJS_NotificationItemContainer');
				var objNotificationItemCounter = document.getElementById(IDPrefix + '__sJS_NotificationItemCounter');
			}
			else{
				var objNotification = document.createElement('DIV');
				objNotification.id = IDPrefix + '__sJS_Notification';

				var objSwitch = document.createElement('INPUT');
				objSwitch.id = IDPrefix + '__sJS_NotificationSwitch';
				objSwitch.type = 'checkbox';
				objSwitch.checked = true;
	
				var objNotificationItemContainer = document.createElement('DIV');
				objNotificationItemContainer.id = IDPrefix + '__sJS_NotificationItemContainer';

				var objNotificationItemCounter = document.createElement('LABEL');
				objNotificationItemCounter.htmlFor = objSwitch.id;
				objNotificationItemCounter.id = IDPrefix + '__sJS_NotificationItemCounter';
				objNotificationItemCounter.innerHTML = '0';

				objNotification.appendChild(objSwitch);
				objNotification.appendChild(objNotificationItemContainer);
				objNotification.appendChild(objNotificationItemCounter);
				document.body.appendChild(objNotification);
			}

			var objItem = document.createElement('DIV');
			if(ItemUUID)objItem.id = IDPrefix + '__sJS_Notification_Item_' + ItemUUID;
			objItem.className = 'Item' + (ItemCSSClass ? ' ' + ItemCSSClass : '');
			objItem.innerHTML = '' + (Title ? '<div class="Title">' + Title + '</div>' : '') + '<div class="Message">' + Message + '</div>';

			objNotificationItemContainer.appendChild(objItem);
			objNotificationItemContainer.scrollTo(0, objNotificationItemContainer.scrollHeight);
			objNotificationItemCounter.innerHTML = objNotificationItemContainer.childNodes.length;

			setTimeout(function(){
				objNotificationItemContainer.removeChild(objNotificationItemContainer.childNodes[0]);
				objNotificationItemCounter.innerHTML = objNotificationItemContainer.childNodes.length;
			}, Timeout);
		}, 
	},

	HTTP: {
		Get: function(URL, OnSuccess = function(Response){}, OnFail = function(StatusCode, ErrorMessage){}, Asynchronus = true, TimeOutMS = 5000){
			return __HTTP_Transfer(URL, OnSuccess, 'GET', [], [], OnFail, Asynchronus, TimeOutMS);
		},
		Post: function(URL, OnSuccess, Data = [], File = [], OnFail = function(StatusCode, ErrorMessage){}, Asynchronus = true, TimeOutMS = 5000){
			return __HTTP_Transfer(URL, OnSuccess, 'POST', Data, File, OnFail, Asynchronus, TimeOutMS);
		},
	},

	Geometry: {
		RadianToDegree: function(Angle){
			return Angle * 180 / Math.PI;
		},

		PointAngle: function(X2, Y2, X1, Y1, Segment){
			Angle = (sJS.Geometry.RadianToDegree(Math.atan2(Y2 - Y1, X2 - X1)) + 360) % 360;
			SegmentRange = 360 / Segment;

			Result = Segment ? Math.round(Angle / SegmentRange) : Angle;
			//console.log('Angle = ' + Angle + '; Segment = ' + Segment + '; SegmentRange: ' + SegmentRange + ';');
			return Result;
		}
	},

	Browser: {
		Notification: {
			Enabled: function(){
				return Notification.requestPermission();
			}, 
			Permission: function(){
				return this.Enabled() && this.Permission() != 'denied' ? true : false;
			}, 
			Create: function(Content, Title = null, Icon = null){ //console.log('sJS.Browser.Notification.Create()');
				var Result = false;

				if(Notification.requestPermission() && Notification.permission != 'denied'){
					var NotificationObject = {
						body: Content, 
					};

					if(Icon)NotificationObject.icon = Icon;

					new Notification(Title, NotificationObject);

					Result = true;
				}
				else{
					console.log('Either browser notification feature is not available or permission denied!');
				}
				
				return Result;
			}, 
		}, 
	}, 

	Time: {
		MonthName: function(MonthNumber, Short = false){
			var MonthName = new Array();
			MonthName[0] = "January";
			MonthName[1] = "February";
			MonthName[2] = "March";
			MonthName[3] = "April";
			MonthName[4] = "May";
			MonthName[5] = "June";
			MonthName[6] = "July";
			MonthName[7] = "August";
			MonthName[8] = "September";
			MonthName[9] = "October";
			MonthName[10] = "November";
			MonthName[11] = "December";

			var Result = MonthName[MonthNumber - 1];
			if(Short)Result = Result.substring(0, 3);

			return Result;
		}, 

		Format: function(TimeValue, FormatString = 'Y-m-d H:i:s'){
			// TimeValue = JavaScript Date object, eg: new Date()
			// FormatString = Follow PHP date format symbols

			PartYear = TimeValue.getFullYear();
			PartYearDoubleDigit = PartYear.toString().substring(2, 2);

			PartMonth = TimeValue.getMonth() + 1;
			PartMonthDoubleDigit = PartMonth.toString().padStart(2, '0');
			PartMonthName = this.MonthName(PartMonth);
			PartMonthShortName = PartMonthName.substring(0, 3);

			PartDay = TimeValue.getDay() + 1;
			PartDayDoubleDigit = PartDay.toString().padStart(2, '0');

			PartHour = TimeValue.getHours();
			PartHourDoubleDigit = PartHour.toString().padStart(2, '0');
			PartHour12Hour = PartHour % 12;
			PartHour12HourDoubleDigit = PartHour12Hour.toString().padStart(2, '0');

			PartMinute = TimeValue.getMinutes();
			PartMinuteDoubleDigit = PartMinute.toString().padStart(2, '0');

			PartSecond = TimeValue.getSeconds();
			PartSecondDoubleDigit = PartSecond.toString().padStart(2, '0');

			PartMedian = (PartHour > 11 ? 'p' : 'a') + 'm';
			PartMedianUppercase = PartMedian.toUpperCase();

			var Result = FormatString.replace('Y', PartYear);
			Result = Result.replace('Y', PartYear);

			Result = Result.replace('n', PartMonth);
			Result = Result.replace('m', PartMonthDoubleDigit);
			Result = Result.replace('M', PartMonthShortName);
			Result = Result.replace('F', PartMonthName);

			Result = Result.replace('j', PartDay);
			Result = Result.replace('d', PartDayDoubleDigit);

			Result = Result.replace('G', PartHour);
			Result = Result.replace('H', PartHourDoubleDigit);
			Result = Result.replace('g', PartHour12Hour);
			Result = Result.replace('h', PartHour12HourDoubleDigit);
			
			Result = Result.replace('i', PartMinuteDoubleDigit);
			Result = Result.replace('s', PartSecondDoubleDigit);

			Result = Result.replace('a', PartMedian);
			Result = Result.replace('A', PartMedianUppercase);

			return Result;
		}, 
	}, 

	LastScriptURL: function(){
		var objScript = document.getElementsByTagName('script');

		return objScript[objScript.length - 1].src;
	}, 

	Notify: function(Content, Title = null, Icon = null, NotificationDuration = 3000, Browser = true, sJS = false, Console = false, ItemCSSClass = ''){ //console.log('sJS.Notify()', Browser, sJS, Console);
		if(Browser)this.Browser.Notification.Create(Content, Title, Icon);
		if(sJS)this.DHTML.Notification(Content, NotificationDuration, Title, ItemCSSClass);
		if(Console)console.log('sJS: Notify: ' + Title + ': ' + Content);

		return true;
	}, 

	MakeTinyMCETextarea: function(objID){
		(objTextarea = document.getElementById(objID)).style.width = objTextarea.offsetWidth + 'px';

		tinyMCE.execCommand('mceAddControl', false, objID);

		return true;
	},

	ToggleCheckBoxes: function(CheckBoxName, CheckedState, Inverse){
		objElements = document.getElementsByTagName('input');

		for(ElementCounter = 0; ElementCounter < objElements.length; ElementCounter++)if(
				objElements[ElementCounter].type=='checkbox'
			&&	(
						objElements[ElementCounter].name == CheckBoxName
					||	(
								objElements[ElementCounter].name.substring(0, CheckBoxName.length) == CheckBoxName
							&&	objElements[ElementCounter].name.substring(CheckBoxName.length, CheckBoxName.length+1)=='['
						)
				)
		){
			objElements[ElementCounter].checked = Inverse ? (objElements[ElementCounter].checked ? false : true) : CheckedState;
		}

		return true;
	},

	SetVisibilityByElemntID: function(ElementID, Visibility){
		//console.log('SetVisibilityByElemntID', ElementID, Visibility, document.getElementById(ElementID));
		document.getElementById(ElementID).style.display = Visibility ? '' : 'none';

		return true;
	},

	ToggleVisibilityByElemntID: function(ElementID){
		this.SetVisibilityByElemntID(ElementID, document.getElementById(ElementID).style.display == 'none' ? true : false);

		return true;
	},

	UUID: function(){ // https://stackoverflow.com/questions/105034/create-guid-uuid-in-javascript
		return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c){
			var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);

			return v.toString(16);
		});
	},

    SecondToTime: function(Value, ShowSecond = true, ShowMinute = true){
		var Second = parseInt(Math.abs(Value));

		var Minute = parseInt(Second / 60);
		Second = Second - (Minute * 60);

		var Hour = parseInt(Minute / 60);
		Minute = Minute - (Hour * 60);

		return (Value < 0 ? '-' : '') + Hour.toString().padStart(2, '0') + (ShowMinute ? ':' + Minute.toString().padStart(2, '0') : '') + (ShowMinute && ShowSecond ? ':' + Second.toString().padStart(2, '0') : '');
    },

	External: {
		ChartJS: {
			Dataset: {
				Toggle: function(ChartObject, DatasetIndex){
					if(!Array.isArray(DatasetIndex))DatasetIndex = [DatasetIndex];

					DatasetIndex.forEach(function(Item, Index){
						ChartObject.getDatasetMeta(Item).hidden = !ChartObject.getDatasetMeta(Item).hidden;
					})

					ChartObject.update();

					return true;
				},
			},
			Advance: function(Chart, Value, Label, Count, RightToLeft){
				ChartData = Chart.data;
	
				if(ChartData.labels.length == Count){
					if(RightToLeft){
						ChartData.datasets[0].data.shift();
						ChartData.labels.shift();
					}
					else{
						ChartData.datasets[0].data.pop();
						ChartData.labels.pop();
					}
				}
	
				if(RightToLeft){
					ChartData.datasets[0].data.push(Value);
					ChartData.labels.push(Label);
				}
				else{
					ChartData.datasets[0].data.splice(0, 0, Value);
					ChartData.labels.splice(0, 0, Label);
				}
	
				Chart.update();
	
				return true;
			}
		},
	},
}

function __HTTP_Transfer(URL, OnSuccess, Method = 'GET', Data = [], File = [], OnFail = function(StatusCode, ErrorMessage){}, Asynchronus = true, TimeOutMS = 5000){
	HTTPCall = new XMLHttpRequest();
//console.log(URL);
	if(Asynchronus)HTTPCall.onreadystatechange = function(){
		if(this.readyState == XMLHttpRequest.DONE){
			if(this.status == 200){
				OnSuccess(this.responseText);
			}
			else if(this.status == 0){
				OnFail(this.status, 'Time out of ' + TimeOutMS + ' ms');
			}
			else{
				OnFail(this.status, this.statusText);
			}
		}
	}

	HTTPCall.open(Method == 'POST' ? 'POST' : 'GET', URL, Asynchronus);
	HTTPCall.timeout = TimeOutMS; // time in milliseconds

	if(Method == 'POST'){
		POSTData = new FormData();
		for(DataName in Data)POSTData.append(DataName, Data[DataName]);
		for(FileName in File)POSTData.append(FileName, File[FileName]);
	}

	HTTPCall.send(Method == 'POST' ? POSTData : null);

	if(!Asynchronus)OnSuccess(HTTPCall.responseText);

	return true;
}