<?php
namespace sPHP;

$LeftPanelLinkHTML[] = HTML\UI\Accordion("LeftPanelNavigation", [
	
	
	$User->UserGroupIdentifierHighest() == "ADMINISTRATOR" ? new HTML\UI\Accordion\Pad([
		new HTML\UI\Accordion\Item($Caption = "User", null, $Application->URL("Management/Generic/{$Caption}"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "User")) . "", "{$Caption}", null, "{$Key}"),
		new HTML\UI\Accordion\Item($Caption = "User group", null, $Application->URL("Management/Generic/UserGroup"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "UserGroup")) . "", "{$Caption}", null, "{$Key}"),

		new HTML\UI\Accordion\Item($Caption = "Vehicle", null, $Application->URL("Management/Generic/Vehicle"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "Vehicle")) . "", "{$Caption}", null, "{$Key}"),
	
		new HTML\UI\Accordion\Item($Caption = "Route", null, $Application->URL("Management/Generic/Route"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "route")) . "", "{$Caption}", null, "{$Key}"),

		new HTML\UI\Accordion\Item($Caption = "Type", null, $Application->URL("Management/Generic/Type"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "Type")) . "", "{$Caption}", null, "{$Key}"),

		

		new HTML\UI\Accordion\Item($Caption = "Rent Vehicle", null, $Application->URL("Management/Generic/RentVehicleRequest"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "RentVehicleRequest")) . "", "{$Caption}", null, "{$Key}"),

		new HTML\UI\Accordion\Item($Caption = "Just Fun", null, $Application->URL("Management/Generic/JustFun"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "Fun")) . "", "{$Caption}", null, "{$Key}"),
		
	], "" . ($Caption = "Administration") . "", "{$Caption}", "{$Caption}", null, "{$PadKey}") : null,

	$USR->UserGroupIdentifierHighest() == "CUSTOMER" ? new HTML\UI\Accordion\Pad([
		
		new HTML\UI\Accordion\Item($Caption = "Rent Vehicle", null, $Application->URL("Management/Generic/RentVehicleRequest"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "RentVehicleRequest")) . "", "{$Caption}", null, "{$Key}"),
		
		
		new HTML\UI\Accordion\Item($Caption = "ActiveVehicleList", null, $Application->URL("Management/Generic/ActiveVehicleList"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "ActiveVehicleList")) . "", "{$Caption}", null, "{$Key}"),
		]): null,
		
	$USR->UserGroupIdentifierHighest() == "DRIVER" ? new HTML\UI\Accordion\Pad([
			
		new HTML\UI\Accordion\Item($Caption = "Rent Vehicle", null, $Application->URL("Management/Generic/RentVehicleRequest"), null, null, "" . strtolower("" . ($PadKey = "Administration") . "_" . ($Key = "RentVehicleRequest")) . "", "{$Caption}", null, "{$Key}"),

		]):null,

	$Session->IsGuest() ? new HTML\UI\Accordion\Pad([
		
		new HTML\UI\Accordion\Item($Caption = "Log in", null, $Application->URL("User/SignIn"), null, null, "" . strtolower("" . ($PadKey = "User") . "_" . ($Key = "SignIn")) . "", "{$Caption}", null, "{$Key}"),
	], "" . ($Caption = "") . "", "{$Caption}", "{$Caption}", null, "{$PadKey}") : new HTML\UI\Accordion\Pad(
	[
		new HTML\UI\Accordion\Item($Caption = "Log out", null, $Application->URL("User/SignOut"), null, null, "" . strtolower("" . ($PadKey = "User") . "_" . ($Key = "SignOut")) . "", "{$Caption}", null, "{$Key}"),
	], "" . ($Caption = "") . "", "{$Caption}", "{$Caption}", null, "{$PadKey}"),
], "{$Environment->ImageURL()}layout/header/leftpanel/icon/", "LeftPanelNavigation", null);
?>
