<?php
namespace sPHP;

#region Entity management common configuration
$EM = new EntityManagement($Table[$Entity = "RentVehicleRequest"]);
$uid=$USR->ID();
 //DebugDump($Table[$Entity]->Structure());
//$sample= $Database->Query("SELECT * FROM vrs_RentVehicleRequest WHERE UserID =$uid");
//DebugDump($sample,$USR->ID());
#HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "BirthDate") . "", $EM->InputWidth(), null, null, INPUT_TYPE_DATE), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
#HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Gender") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
// $EM->ImportField([
// 	//new Database\Field("{$Entity}First" . ($Field = "Name") . "", "{$Field}"),
// 	new Database\Field("{$Entity}" . ($Field = "") . "", "{$Field}"),
// 	new Database\Field("{$Entity}" . ($Field = "Type") . "", "{$Field}"),
// 	//new Database\Field("{$Entity}" . ($Field = "Email") . "", "{$Field}"),
// 	new Database\Field("{$Entity}" . ($Field = "BirthDate") . "", "{$Field}"),
// 	//new Database\Field("{$Entity}Gender" . ($Field = "ID") . "", "{$Field}"),
// 	//new Database\Field("{$Entity}Currency" . ($Field = "ID") . "", "{$Field}"),
// 	//new Database\Field("{$Entity}" . ($Field = "Note") . "", "{$Field}"),
//     new Database\Field("{$Entity}Is" . ($Field = "Active") . "", "{$Field}"),
//     new Database\Field("{$Entity}" . ($Field = "BrandName") . "", "{$Field}"),
// ]);

$EM->InputValidation([
	// new HTTP\InputValidation("RentVehicleRequestComment", true),
	// new HTTP\InputValidation("{$Entity}Type", true),
	// //new HTTP\InputValidation("{$Entity}", true),
	// new HTTP\InputValidation("{$Entity}BrandName", true),
	//new HTTP\InputValidation("{$Entity}Note", null),
	new HTTP\InputValidation("RouteID", true),
	//new HTTP\InputValidation("{$Entity}IsActive", null, VALIDATION_TYPE_INTEGER),
]);

$EM->ValidateInput(function($Entity, $Database, $Table, $PrimaryKey, $ID){
	$Result = true;

	/*
	if($Table->Get( // Check for duplicate values for UNIQUE columns
		"
			(
					" . ($Column = "{$Entity}Name") . " = '{$Database->Escape($_POST["{$Column}"])}'
			)
			AND	{$PrimaryKey} <> {$ID}
		"
	, null, null, null, null, null, null))$Result = "Same person and name for the same " . strtolower($Table->FormalName()) . " exists!";
	*/

	return $Result;
});

$EM->ThumbnailColumn("x{$Entity}Picture");

$EM->BeforeInput(function($Entity, $Record){
	//$_POST[$Field = "{$Entity}PasswordHash"] = strlen($_POST["{$Entity}Password"]) ? md5($_POST["{$Entity}Password"]) : (is_null($Record) ? null : $Record["{$Field}"]);

	return true;
});

$EM->IntermediateEntity("xCategory, xEvent");
$EM->DefaultFromSearchColumn("xTerminalID, xCustomerID, xCarrierID");

$EM->ListColumn([
	// new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "") . "", "{$Caption}", null),
	new HTML\UI\Datagrid\Column("" . ($Caption = "UserID")."" , "{$Caption}", null),
	 new HTML\UI\Datagrid\Column("" . ($Caption = "Type") . "Name", "{$Caption}", null),
	 new HTML\UI\Datagrid\Column("" . ($Caption = "Route") . "Name", "{$Caption}", null),
	 //New HTML\UI\Datagrid\Column("".($Caption="")."","{$Caption}",null),
	//  new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "Comment") . "", "{$Caption}", null),
	// new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "VehicleType ") . "", "{$Caption}", null),
     new HTML\UI\Datagrid\Column("Vehicle" . ($Caption = "BrandName")  , "{$Caption}", null),
	 new HTML\UI\Datagrid\Column("Vehicle" . ($Caption = "LicenseNumber") , "{$Caption}", null),
	 new HTML\UI\Datagrid\Column("" . ($Caption = "UserIDDriver")."" , "{$Caption}", null),
	//new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "BirthDate") . "", "{$Caption}", FIELD_TYPE_SHORTDATE),
	//new HTML\UI\Datagrid\Column("" . ($Caption = "Gender") . "Name", "{$Caption}", null),
	//new HTML\UI\Datagrid\Column("" . ($Caption = "Currency") . "Name", "{$Caption}", null),
	//new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "Note") . "", "{$Caption}", null),
	new HTML\UI\Datagrid\Column("{$Entity}Is" . ($Caption = "Active") . "", "{$Caption}", FIELD_TYPE_BOOLEANICON),
]);
//DebugDump($Table[$Entity = "Vehicle"]);
$EM->Action([
	new HTML\UI\Datagrid\Action("{$Environment->IconURL()}report.png", null, $Application->URL("Management/report/personreport", "btnReport"), null, null, null, "Report"),
	//$USR->UserGroupIdentifier() != "CUSTOMER" ? new HTML\UI\Datagrid\Action("{$Environment->IconURL()}phone.png", null, $Application->URL("Management/Generic/Phone", "btnReport"), null, null, null, "Phone"): NULL,
	//$USR->UserGroupIdentifier() != "CUSTOMER" ? new HTML\UI\Datagrid\Action("{$Environment->IconURL()}address.png", null, $Application->URL("Management/Generic/Address", "btnReport"), null, null, null, "Address"):NULL,
	
	//new HTML\UI\Datagrid\Action("{$Environment->IconURL()}phone.png", null, $Application->URL("Management/Generic/Phone", "btnReport"), null, null, null, "Phone"),
	$USR->UserGroupIdentifier() != "CUSTOMER" ? new HTML\UI\Datagrid\Action("{$Environment->IconURL()}edit.png", null, $Application->URL($_POST["_Script"], "btnInput"), null, null, null, "Edit"):NULL,
	//new HTML\UI\Datagrid\Action("{$Environment->IconURL()}address.png", null, $Application->URL($_POST["_Script"], "btnInput"), null, null, null, "AddressView"),
	//$USR->UserGroupIdentifier() != "GUEST"||"MEMBER" ? new HTML\UI\Datagrid\Action("{$Environment->IconURL()}delete.png", null, $Application->URL($_POST["_Script"], "btnDelete"), null, "return confirm('Are you sure to remove the information?');", null, "Delete"):NULL,
	$USR->UserGroupIdentifier() == "CUSTOMER" ? NULL:new HTML\UI\Datagrid\Action("{$Environment->IconURL()}delete.png", null, $Application->URL($_POST["_Script"], "btnDelete"), null, "return confirm('Are you sure to remove the information?');", null, "Delete"),
]);

$EM->BatchActionHTML([
	HTML\UI\Button("Search", BUTTON_TYPE_SUBMIT, "btnSearch", true),
	$USR->UserGroupIdentifier() != "GUEST"  || "CUSTOMER" ?  HTML\UI\Button("<img src=\"{$Environment->IconURL()}add.png\" alt=\"Add new\" class=\"Icon\">Book Vehicle", BUTTON_TYPE_SUBMIT, "btnInput", true) : NULL,
	$USR->UserGroupIdentifier() != "GUEST" || "CUSTOMER"  ? HTML\UI\Button("<img src=\"{$Environment->IconURL()}delete.png\" alt=\"Remove\" class=\"Icon\">Remove", BUTTON_TYPE_SUBMIT, "btnDelete", true, "return confirm('Are you sure to remove the information?');") : NULL,
//HTML\UI\Button("<img src=\"{$Environment->IconURL()}export.png\" alt=\"Export\" class=\"Icon\">Export", BUTTON_TYPE_SUBMIT, "btnExport", true),
//	HTML\UI\Button("<img src=\"{$Environment->IconURL()}import.png\" alt=\"Import\" class=\"Icon\">Import", BUTTON_TYPE_SUBMIT, "btnImport", true),
	//HTML\UI\Button("<img src=\"{$Environment->IconURL()}report.png\" alt=\"Installation report\" class=\"Icon\">Installation report", BUTTON_TYPE_SUBMIT, "btn{$Entity}ReportInstallation", true),
]);

$EM->OrderBy("RouteID");
$EM->Order("ASC");
$EM->URL($Application->URL($_POST["_Script"]));
$EM->IconURL($Environment->IconURL());
$EM->EncryptionKey($Application->EncryptionKey());
$EM->FieldCaptionWidth($Configuration["FieldCaptionWidth"]);
$EM->FieldCaptionInlineWidth($Configuration["FieldCaptionInlineWidth"]);
$EM->FieldContentFullWidth($Configuration["FieldContentFullWidth"]);
$EM->InputWidth($Configuration["InputWidth"]);
$EM->InputInlineWidth($Configuration["InputInlineWidth"]);
$EM->InputFullWidth($Configuration["InputFullWidth"]);
$EM->InputDateWidth($Configuration["InputDateWidth"]);
$EM->TempPath($Environment->TempPath());
$EM->SearchInputPrefix($Configuration["SearchInputPrefix"]);
$EM->UploadPath($Environment->UploadPath());
$EM->ThumbnailMaximumDimension(48);
$EM->RecordsPerPage(200); //$Configuration["DatagridRowsPerPage"]
$EM->BaseURL($Environment->URL()); // ???????????
#endregion Entity management common configuration

if(isset($_POST["btnImport"])){
	if(isset($_POST["btnSubmit"])){
		$EM->Import();
		$Terminal->Redirect($_POST["_Referer"]);
	}

	print $EM->ImportHTML();
}
// if(isset($_POST["btnReport"])){
// 	if(isset($_POST["{$Entity}ID"])){
// 		// var_dump("hellos");
// 		// echo $_POST["{$Entity}ID"];
// 		// echo "<br>";
// 		$Entityid = $_POST["{$Entity}ID"];
// 		$Person = $Database->Query("SELECT * FROM sphp_person where sphp_person.PersonID ='".$Entityid."'");
// 		$PersonAddress = $Database->Query("SELECT p.PersonName, p.PersonNote, pa.* from sphp_person as p 
// 										left join sphp_personaddress as pa 
// 										on p.PersonID = pa.PersonID
// 										where p.PersonID ='".$Entityid."'");
// 		DebugDump($Person[0][0]['PersonID']);
// 		DebugDump($PersonAddress);
// 	}
// }
if(isset($_POST["btnDelete"])){
	$EM->Delete();
	$Terminal->Redirect($_SERVER["HTTP_REFERER"]);
}

if(isset($_POST["btnInput"])){
	$NewRecordMode = isset($_POST["{$Entity}ID"]) && intval($_POST["{$Entity}ID"]) ? false : true;

	if(isset($_POST["btnSubmit"])){
		#region Custom code
		#endregion Custom code

		if($EM->Input()){
			$Terminal->Redirect("{$_POST["_Referer"]}&SucceededAction=Input"); // Redirect to previous location
		}
	}

	$EM->LoadExistingData();
	#region Custom code
	#endregion Custom code

	$EM->InputUIHTML([
		//"UserGroupID=11",
		HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Type") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		//$USR->UserGroupIdentifier() === "CUSTOMER" ? 
		HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Route") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		//$USR->UserGroupIdentifier() === "CUSTOMER" ?
		HTML\UI\Field(HTML\UI\Select("" . ($Caption ="Vehicle") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),	
		//HTML\UI\Field(HTML\UI\Input("" . ($Caption = "Type") . "ID", $EM->InputWidth(),"{$Entity}"."TypeID", null, INPUT_TYPE_TEXT,null,null,null,null,null,null,null,true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		//HTML\UI\Field(HTML\UI\Input("" . ($Caption = "TypeID") . "", $EM->InputWidth(),"TypeID", null, INPUT_TYPE_TEXT,null,null,null,null,null,null,null,true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		
		// HTML\UI\Field(HTML\UI\TextArea("" . ($Caption = "RentVehicleRequestComment") . "", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "Comment") . "", $EM->InputWidth(), null, true), "{$Caption}",true, true, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\Input("" . ($Caption = "User") . "ID", $EM->InputWidth(),$USR->ID(), null, INPUT_TYPE_TEXT,null,null,null,null,null,null,null,true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		//HTML\UI\Field(HTML\UI\Input("" . ($Caption = "User") . "Name", $EM->InputWidth(),$USR->ID(), null, INPUT_TYPE_TEXT,null,null,null,null,null,null,null,true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		// HTML\UI\Field(HTML\UI\Input("" . ($Caption = "User Name") . "", $EM->InputWidth(), null,null), "{$Caption}", null, null, $EM->FieldCaptionWidth()),
		// HTML\UI\Field(HTML\UI\Input("" . ($Caption = "User Phone") . "", $EM->InputWidth(), null,null), "{$Caption}", null, null, $EM->FieldCaptionWidth()),
		//HTML\UI\Field(HTML\UI\Select("" . ($Caption = "User") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth($USR->ID())),
		//HTML\UI\Field(HTML\UI\Input("" . ($Caption = "User") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		//HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Vehicle") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get(UserID()), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		//HTML\UI\Field(HTML\UI\Select("" . ($user), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		//$UserID->UserID()
		$USR->UserGroupIdentifier() === "CUSTOMER" ? HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "RentedFor") . "", $EM->InputWidth(), null, true,INPUT_TYPE_DATE), "{$Caption}", null, null, $EM->FieldCaptionWidth()):NULL,
		$USR->UserGroupIdentifier() === "CUSTOMER" ? NULL: HTML\UI\Field(HTML\UI\RadioGroup("{$Entity}Is" . ($Caption = "Active") . "", [new HTML\UI\Radio(1, "Yes"), new HTML\UI\Radio(0, "No")],0), "{$Caption}", true, null, $EM->FieldCaptionWidth(),null,null),
		//HTML\UI\Field(HTML\UI\Input("" . ($Caption = "User") . "Name", $EM->InputWidth(),$USR->ID(), null, INPUT_TYPE_TEXT,null,null,null,null,null,null,null,null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		
		$USR->UserGroupIdentifier() === "CUSTOMER" ? NULL: HTML\UI\Field(HTML\UI\Select("" . ($Caption = "User") . "IDDriver", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsACtive=1 and (UserID= WHERE (SELECT UserID from userusergroup = )", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		
	]);

	print $EM->InputHTML();
}
#HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "BirthDate") . "", $EM->InputWidth(), null, null, INPUT_TYPE_DATE), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
#HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Gender") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
#region List
$EM->SearchSQL([
	"1=1", // Custom fixed search condition
	//"UserGroupID=11",
	//"UserGroupID = 1", // Custom fixed search condition
	//SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "VehicleLicenseNumber") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} LIKE '%{$Database->Escape($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"])}%'" : null,
	// 11SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}Type") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} LIKE '%{$Database->Escape($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"])}%'" : null,
	//SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "VehicleBrandName") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} LIKE '%{$Database->Escape($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"])}%'" : null,
	//SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}BirthDate") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} LIKE '%{$Database->Escape($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"])}%'" : null,
	//SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "GenderID") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} = " . intval($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"]) . "" : null,
	//SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "CurrencyID") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} = " . intval($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"]) . "" : null,
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}IsActive") . "", SetVariable($Column, "")) !== "" ? "{$Table["{$Entity}"]->Alias()}.{$Column} = " . intval($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"]) . "" : null,
]);

//Change Made
$EM->SearchUIHTML([
	// HTML\UI\Field(HTML\UI\Input("{$Configuration["SearchInputPrefix"]}{$Entity}" . ($Caption = "LicenseNumber") . "", 200), "{$Caption}", null, null),
	// HTML\UI\Field(HTML\UI\Input("{$Configuration["SearchInputPrefix"]}{$Entity}" . ($Caption = "Type") . "", 200), "{$Caption}", null, null),
	// HTML\UI\Field(HTML\UI\Input("{$Configuration["SearchInputPrefix"]}{$Entity}" . ($Caption = "BrandName") . "", 200), "{$Caption}", null, null),
	//HTML\UI\Field(HTML\UI\Input("{$Configuration["SearchInputPrefix"]}{$Entity}" . ($Caption = "BirthDate") . "", 200), "{$Caption}", null, null),
	//HTML\UI\Field(HTML\UI\Select("{$Configuration["SearchInputPrefix"]}" . ($Caption = "Gender") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get(null, "" . ($OptionEntityOrderBy = "{$OptionEntity}LookupCaption") . " ASC"), new Option(), "{$OptionEntityOrderBy}"), "{$Caption}", null, null),
	//HTML\UI\Field(HTML\UI\Select("{$Configuration["SearchInputPrefix"]}" . ($Caption = "Currency") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get(null, "" . ($OptionEntityOrderBy = "{$OptionEntity}LookupCaption") . " ASC"), new Option(), "{$OptionEntityOrderBy}"), "{$Caption}", null, true),
	HTML\UI\Field(HTML\UI\Select("{$Configuration["SearchInputPrefix"]}{$Entity}Is" . ($Caption = "Active") . "", [new Option(), new Option(0, "No"), new Option(1, "Yes")]), "{$Caption}", null, true),
]);

if(isset($_POST["btnExport"])){
	$Application->DocumentType(DOCUMENT_TYPE_CSV, true); // Set output type and clear any previous output
	$Terminal->DocumentName("{$Entity}_" . date("Y-m-d_H-i-s") ."_". rand(0, 9999). ".csv"); // Set client side default file name

	print $Table["{$Entity}"]->Export(
		"{$Entity}LicenseNumber , {$Entity}LastName,{$Entity}Email,{$Entity}BirthDate",
		str_replace(" ", null, "FirstName,LastName,Email,BirthDate"),
		IMPORT_TYPE_CSV, null, $EM->SearchSQL(), "{$_POST["OrderBy"]} {$_POST["Order"]}"
	);

	$Terminal->Suspended(true); // Suspend any further output
}

print "{$EM->ListHTML()}";
if(SetVariable("SucceededAction") == "Input")print HTML\UI\Toast("{$Table["{$Entity}"]->FormalName()} input successful.");
#region List
?>