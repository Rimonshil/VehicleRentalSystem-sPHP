<?php
namespace sPHP;

#region Entity management common configuration
$EM = new EntityManagement($Table[$Entity = "RentVehicleRequest"]);
$uid=$USR->ID();
// $DRIVER = $Database->Query ("
// 						SELECT			U.*

// 						FROM			sphp_userusergroup AS UUG
// 						    LEFT JOIN	sphp_user AS U ON U.UserID = UUG.UserID
// 						WHERE			UUG.USerGroupID = 11 
// 							AND			U.UserIsActive = 1;

// 				")[0];
$DRIVER = $DTB->Query("
					SELECT			U.*

					FROM 			sphp_userusergroup AS UUG
						LEFT JOIN 	sphp_user AS U ON U.UserID = UUG.UserID
					WHERE			UUG.UserGroupID = 11
						AND 		U.UserIsActive = 1;

					")[0];



$EM->InputValidation([
	
	new HTTP\InputValidation("UserIDDriver", true),
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
	//new HTML\UI\Datagrid\Column("" . ($Caption = "Type") . "Name", "{$Caption}", null),
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
	
	$USR->UserGroupIdentifier() != "CUSTOMER" ? new HTML\UI\Datagrid\Action("{$Environment->IconURL()}edit.png", null, $Application->URL($_POST["_Script"], "btnInput"), null, null, null, "Edit"):NULL,
	
	$USR->UserGroupIdentifier() == "CUSTOMER" ? NULL:new HTML\UI\Datagrid\Action("{$Environment->IconURL()}delete.png", null, $Application->URL($_POST["_Script"], "btnDelete"), null, "return confirm('Are you sure to remove the information?');", null, "Delete"),
]);

$EM->BatchActionHTML([
	HTML\UI\Button("Search", BUTTON_TYPE_SUBMIT, "btnSearch", true),
	$USR->UserGroupIdentifier() !="CUSTOMER" ?  HTML\UI\Button("<img src=\"{$Environment->IconURL()}add.png\" alt=\"Add new\" class=\"Icon\">Book Vehicle", BUTTON_TYPE_SUBMIT, "btnInput", true) : NULL,
	$USR->UserGroupIdentifier() != "CUSTOMER"  ? HTML\UI\Button("<img src=\"{$Environment->IconURL()}delete.png\" alt=\"Remove\" class=\"Icon\">Remove", BUTTON_TYPE_SUBMIT, "btnDelete", true, "return confirm('Are you sure to remove the information?');") : NULL,

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
	
		HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Route") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		//$USR->UserGroupIdentifier() === "CUSTOMER" ?
		HTML\UI\Field(HTML\UI\Select("" . ($Caption ="Vehicle") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),	
		
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "Comment") . "", $EM->InputWidth(), null, true), "{$Caption}",true, true, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\Input("" . ($Caption = "User") . "ID", $EM->InputWidth(),$USR->ID(), null, INPUT_TYPE_TEXT,null,null,null,null,null,null,null,true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		
		$USR->UserGroupIdentifier() === "CUSTOMER" ? HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "RentedFor") . "", $EM->InputWidth(), null, true,INPUT_TYPE_DATE), "{$Caption}", null, null, $EM->FieldCaptionWidth()):NULL,
		$USR->UserGroupIdentifier() === "CUSTOMER" ? NULL: HTML\UI\Field(HTML\UI\RadioGroup("{$Entity}Is" . ($Caption = "Active") . "", [new HTML\UI\Radio(1, "Yes"), new HTML\UI\Radio(0, "No")],0), "{$Caption}", true, null, $EM->FieldCaptionWidth(),null,null),
		
		HTML\UI\Field(HTML\UI\Select("" . ($Caption = "User") . "IDDriver", $DRIVER, null, "UserNameFirst", null, null, true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
	]);

	print $EM->InputHTML();
}
$uid=$USR->ID();
#region List
$EM->SearchSQL([
	$USR->UserGroupIdentifier() =="CUSTOMER" ?"R.UserID=$uid" : ($USR->UserGroupIdentifier() =="DRIVER" ?"R.UserIDDriver=$uid" : "1=1"), // Custom fixed search condition
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}IsActive") . "", SetVariable($Column, "")) !== "" ? "{$Table["{$Entity}"]->Alias()}.{$Column} = " . intval($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"]) . "" : null,
]);

//Change Made
$EM->SearchUIHTML([
	
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