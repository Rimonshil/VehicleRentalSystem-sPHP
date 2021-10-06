// Reference: http://docs.ckeditor.com/#!/api/CKEDITOR.config-cfg-width

CKEDITOR.editorConfig = function(config){
	config.uiColor					= '#91d2ef';
	config.bodyClass				= '';
	config.dataIndentationChars		= '	'; // TAB
	config.skin						= 'moono';	// moono, 'myskin,/customstuff/myskin/'
	config.toolbarCanCollapse		= true;
	config.toolbarStartupExpanded	= false;
	config.toolbarLocation			= 'top'; // top, bottom
};
