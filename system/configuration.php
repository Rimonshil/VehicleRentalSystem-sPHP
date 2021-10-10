<?php
	namespace sPHP; // Use framework namespace for shortcut to constants

    #region Reusable shortcut variable
    $Name = "Vehicale Rental System";
    $ShortName = "VRS";
    $Domain = $_SERVER["SERVER_NAME"];
	$LocalHost = "127.0.0.1, ::1, LocalHost, 192.168.1.1, 192.168.1.10, 192.168.137.1";
    #endregion Reusable shortcut variable

	$Configuration = [
		// Custom
		"FieldCaptionWidth"				=>	150,
		"FieldCaptionInlineWidth"		=>	150,
		"FieldContentWidth"				=>	null,
		"FieldContentInlineWidth"		=>	null,
		"FieldContentFullWidth"			=>	790,
		"InputWidth"					=>	250,
		"InputInlineWidth"				=>	250,
		"InputFullWidth"				=>	815,
		"InputDateWidth"				=>	166,
		"TextareaHeight"				=>	75,
		"DatagridRowsPerPage"			=>	50,
		"Icon"							=> "favicon",
		"ThemeColor"					=>	"#F69E03", 
		"UserDeviceNotification"		=>	false, 

		// System
		"AdministratorEmail"			=>	"Administrator@System.Dom",
		"AdministratorPasswordHash"		=>	"5f4dcc3b5aa765d61d8327deb882cf99", // Default for 'password'; Use  https://www.md5hashgenerator.com/
		"AdministratorName"				=>	"System Administrator",
		"AdministratorAccessOnly"		=>	false, // Allow only Administrator users to sign in
		"RestrictedAccessMessage"		=>	"Access has been restricted at this moment! Please contact with your service provider.", 

		"CompanyName"					=>	"{$Name}",
		"CompanyAddress"				=>	"Dhaka, Bangladesh.",
		"CompanyPhone"					=>	"+8801552601833",
		"CompanyEmail"					=>	"Info@{$Domain}",
		"CompanyURL"					=>	"{$Environment->URL()}",
		"BackgroundColor"				=>	"Yellow", 

		"Name"							=>	"{$Name}",
		"ShortName"						=>	"{$ShortName}",
		"Title"							=>	"",
		"TitlePrefix"					=>	"{$ShortName}",
		"TitleSuffix"					=>	"",
		"TitleSeperator"				=>	": ",

		"Description"					=>	"{$Name} sample application",
		"Keyword"						=>	"{$Name}, {$ShortName}, Sample, Application",

		"DateFormat"					=>	"D, M j, Y",
		"ShortDateFormat"				=>	"M j, Y",
		"LongDateFormat"				=>	"l, F j, Y",
		"TimeFormat"					=>	"H:i:s",

		"DatabaseType"					=>	DATABASE_TYPE_MYSQL,
		"DatabaseHost"					=>	"127.0.0.1",
		"DatabaseUser"					=>	"root",
		"DatabasePassword"				=>	"",
		"DatabaseName"					=>	"defaultsphp",
		"DatabaseODBCDriver"			=>	"SQL Server Native Client 11.0",
		"DatabaseTablePrefix"			=>	"sphp_",
		"DatabaseTimezone"				=>	"+06:00", // Using named timezone is unstable in some cases
		"DatabaseStrictMode"			=>	true,
		"DatabaseIgnoreQueryError"		=>	false, // Ignore or trigger error with Query malfunction; Error messages are always shown
		"DatabaseLogTraffic"			=>	true,
		"DatabaseUserAuthentication"	=>	false,

		"DatabaseTable"					=>	[ // Defaine database tables for automatic preset operations
		/*	"" . ($Entity = "Person") . "" => new Database\Table("{$Entity}", null, null, null, null, null, "ab_"),
		
			"" . ($Entity = "Currency") . "" => new Database\Table("{$Entity}", null, null, null, null, null, "sphp_"),*/
                        
			"" . ($Entity = "Vehicle") . "" => new Database\Table("{$Entity}", null, null, null, null, null, "vrs_"),
			"" . ($Entity = "RentVehicleRequest") . "" => new Database\Table("{$Entity}", null, null, null, null, null, "vrs_"),
			"" . ($Entity = "Type") . "" => new Database\Table("{$Entity}", null, null, null, null, null, "vrs_"),
			"" . ($Entity = "Route") . "" => new Database\Table("{$Entity}", null, null, null, null, null, "vrs_"),
			"" . ($Entity = "Gender") . "" => new Database\Table("{$Entity}", null, null, null, null, null, "sphp_"),
		/*	"" . ($Entity = "Person") . "Phone" => new Database\Table("{$Entity} phone", null, null, null, null, null, "ab_"),
			"" . ($Entity = "Person") . "Address" => new Database\Table("{$Entity} Address", null, null, null, null, null, "ab_"),
			"" . ($Entity = "Person") . "Note" => new Database\Table("{$Entity} Note", null, null, null, null, null, "ab_"),	*/
											],


		"TinyMCETextareaTheme"			=>	"advanced", // advanced, simple
		"TinyMCETextareaSkin"			=>	"o2k7", // o2k7, default, highcontrast

		"Stylesheet"					=>	[ // Array for multiple style sheets
												"{$Environment->URL()}style/loader.css",
												"{$Environment->URL()}style/test.css"
											],

		"JavaScript"					=>	[ // Array for multiple JavaScripts
												"{$Environment->URL()}javascript/3rdparty/tinymce/tiny_mce.js",
												"{$Environment->URL()}javascript/3rdparty/chartjs/Chart.min.js",
												"{$Environment->URL()}javascript/3rdparty/jquery-3.5.0.min.js",
												//"{$Environment->URL()}javascript/library/dhtml.js",
												//"{$Environment->URL()}javascript/library/dom.js",
												"{$ENV->URL()}" . ($File = "javascript/sjs.js") . "?TimeUpdated=" . filemtime("{$ENV->Path()}{$File}") . "",
												"{$ENV->URL()}" . ($File = "javascript/main.js") . "?TimeUpdated=" . filemtime("{$ENV->Path()}{$File}") . "",
											],

		"HTMLHeadCode"					=>	"
												<!-- BEGIN: HTML/JavaScript for the head section -->
												<!-- END: HTML/JavaScript for the head section -->
											",

		"EncryptionKey"					=>	"{$Name} for {$_SERVER["SERVER_NAME"]}",
		"UseSystemScript"				=>	true,
		"CronNotificationInterval"		=>	10, // Notification batch send out interval in seconds
		"CronMaximumExecutionTime"		=>	60 * 60, // Maximum execution & resume time for Application cron in seconds
		"SendNotification"				=>	false,

		"UserDeviceNotification"		=>	false, // Use browser notification
		"UserSignInNotification"		=>	false, // Notification on User sign in for ADMINISTRATOR

		"SMTPBodyStyle"					=>	"margin: 15px; box-shadow: 0 0 5px 0 Black; padding: 15px;",
		"SMTPHost"						=>	null,
		"SMTPPort"						=>	null,
		"SMTPUser"						=>	null,
		"SMTPPassword"					=>	null,

		"ContentEditMode"				=>	false,
		"ContentEditModeServer"			=>	$LocalHost,
		"ContentEditModeClient"			=>	$LocalHost,

		"CustomError"					=>	true,
		"DebugMode"						=>	false,
		"DebugModeServer"				=>	$LocalHost,
		"DebugModeClient"				=>	$LocalHost,

		"SessionName"					=>	"{$Name}@{$Domain}",
		"SessionLifetime"				=>	20 * 60, // In seconds
		"SessionIsolate"				=>	true,

		"Viewport"						=>	"width=device-width, initial-scale=1.0",

		"LanguageName"					=>	"English (US)",
		"LanguageCode"					=>	"EN",
		"LanguageRegionCode"			=>	"US",
		"LanguageNativeName"			=>	"English (US)",
		"LanguageNativelyName"			=>	"English (US)", // Name in native alphabet

		"GuestEmail"					=>	"Guest@{$Domain}",
		"GuestName"						=>	"Guest Visitor",

		"TemplateCacheLifetime"			=>	5 * 60, // In seconds
		"TemplateCacheActionMarker"		=>	"#",

		"Timezone"						=>	"Asia/Dhaka",
		"DocumentType"					=>	DOCUMENT_TYPE_HTML,
		"DefaultScript"					=>	"Home",
		"CharacterSet"					=>	CHARACTER_SET_UTF8,
		"StatusCode"					=>	HTTP_STATUS_CODE_OK,
		"IFrameLoad"					=>	IFRAME_LOAD_SAMEORIGIN, // IFRAME_LOAD_ALLOW | IFRAME_LOAD_DENY | IFRAME_LOAD_SAMEORIGIN

		"VersionMajor"					=>	1,
		"VersionMinor"					=>	0,
		"VersionRevision"				=>	0,

		// Other
		"SearchInputPrefix"				=>	"Search_",
	];
?>
