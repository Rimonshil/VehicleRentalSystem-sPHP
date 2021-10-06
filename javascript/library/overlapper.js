function DocumentOverlapperShow(InnerHTML, ClickToClose, CloseButtonImage, Callback){
	SetVisibilityByElementID('_Document_Overlapper', true);
	if(CloseButtonImage)InnerHTML = InnerHTML + '<img src="'+CloseButtonImage+'" alt="Close" title="Close" class="CloseImage" onclick="DocumentOverlapperHide();">';
	WriteHTMLByElementID('_Document_Overlapper', '<div class="ContentContainer">' + InnerHTML + '</div>');
	if(ClickToClose)document.getElementById('_Document_Overlapper').onclick = function(){DocumentOverlapperHide();};
}

function DocumentOverlapperHide(){
	WriteHTMLByElementID('_Document_Overlapper', '');
	SetVisibilityByElementID('_Document_Overlapper', false);
}

function DocumentOverlapperHideFromIFrame(){
	Overlapper = window.parent.document.getElementById('_Document_Overlapper');
	Overlapper.style.display='none';
	Overlapper.innerHTML='';
}

function DocumentOverlapperShowIFrame(URL, Width, Height, ClickToClose, CloseButtonImage, Callback, CSSModifier, ID){
	DocumentOverlapperShow('<iframe id="' + ID + '" src="' + URL + '" class="IFrame' + (CSSModifier ? CSSModifier : '') + '" style="' + (Width > 0 ? 'width: ' + Width + 'px;' : '') + ' ' + (Height > 0 ? 'height: ' + Height + 'px;' : '') + '"></iframe>', ClickToClose, CloseButtonImage, Callback);
}

function DocumentOverlapperShowWorkingWait(WorkingImage){
	DocumentOverlapperShow('<div class="NotificationWorkingWait">Working<br /><br /><img src="'+WorkingImage+'" alt="Working" class="Width_64"><br /><br />Please wait</div>', false, null, null);
}