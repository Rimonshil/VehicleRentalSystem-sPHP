<?php


namespace sPHP;

#region Entity management common configuration
$EM = new EntityManagement($Table[$Entity = "Vehicle"],$Table[$Entity2 = "RentVehicleRequest"]);


$EM->InputValidation([
	new HTTP\InputValidation("{$Entity2}LicenseNumber", true),

	new HTTP\InputValidation("{$Entity2}BrandName", true),
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
	new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "") . "LicenseNumber", "License Number", null,ALIGN_CENTER),
	new HTML\UI\Datagrid\Column("" . ($Caption = "Type") . "Name", "{$Caption}", null,ALIGN_CENTER),
	new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "") . "BrandName", "Brand Name", null,ALIGN_CENTER),
	
]);

$EM->Action([
   
    new HTML\UI\Datagrid\Action("{$Environment->IconURL()}bookvehicle.png", null, $Application->URL("Management/Generic/RentVehicleRequestCustomer", "btnInput"), null, null, null, "Book Vehicle"),
	
]);

$EM->BatchActionHTML([
	HTML\UI\Button("<img src=\"{$Environment->IconURL()}search.png\" alt=\"Search\" class=\"Icon\">Search", BUTTON_TYPE_SUBMIT, "btnSearch", true),
	]);

$EM->OrderBy("{$Entity}BrandName");
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
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "") . "LicenseNumber", $EM->InputWidth(), null, true,null,null,null,null,null,null,null,null,true), "License Number", null, null, 
		//		2nd
		$EM->FieldCaptionWidth()),
		
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "") . "Brand Name", $EM->InputWidth(), null, true,null,null,null,null,null,null,null,null,true), "Brand Name", null, null, $EM->FieldCaptionWidth()),
      
	   HTML\UI\Field(HTML\UI\Input("" . ($Caption = "Type") . "ID", $EM->InputWidth(),null, null, INPUT_TYPE_TEXT,null,null,null,null,null,null,null,true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		
       
		HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Route") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		
		HTML\UI\Field(HTML\UI\Input("{$Entity2}" . ($Caption = "Comment") . "", $EM->InputWidth(), null, true), "{$Caption}",true, true, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\Input("" . ($Caption = "User") . "ID", $EM->InputWidth(),$USR->ID(), null, INPUT_TYPE_TEXT,null,null,null,null,null,null,null,true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		
		$USR->UserGroupIdentifier() === "CUSTOMER" ? HTML\UI\Field(HTML\UI\Input("{$Entity2}" . ($Caption = "RentedFor") . "", $EM->InputWidth(), null, true,INPUT_TYPE_DATE), "{$Caption}", null, null, $EM->FieldCaptionWidth()):NULL,
		$USR->UserGroupIdentifier() === "CUSTOMER" ? NULL: HTML\UI\Field(HTML\UI\RadioGroup("{$Entity2}Is" . ($Caption = "Active") . "", [new HTML\UI\Radio(1, "Yes"), new HTML\UI\Radio(0, "No")],0), "{$Caption}", true, null, $EM->FieldCaptionWidth(),null,null),
		
		$USR->UserGroupIdentifier() === "CUSTOMER" ? NULL: HTML\UI\Field(HTML\UI\Select("" . ($Caption = "User") . "IDDriver", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption", null, null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		
		]);

	print $EM->InputHTML();
}

#region List

$EM->SearchSQL([

	"VehicleIsRented = 0", // Custom fixed search condition
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}LicenseNumber") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} LIKE '%{$Database->Escape($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"])}%'" : null,
	
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}BrandName") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} LIKE '%{$Database->Escape($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"])}%'" : null,
	
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}IsActive") . "", SetVariable($Column, "")) !== "" ? "{$Table["{$Entity}"]->Alias()}.{$Column} = " . intval($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"]) . "" : null,
]);

//Change Made
$EM->SearchUIHTML([
	HTML\UI\Field(HTML\UI\Input("{$Configuration["SearchInputPrefix"]}{$Entity}" . ($Caption = "") . "LicenseNumber", 200), "License Number", null, null),
	
	HTML\UI\Field(HTML\UI\Input("{$Configuration["SearchInputPrefix"]}{$Entity}" . ($Caption = "") . "BrandName", 200), "Brand Name", null, true),
	
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
if(SetVariable("SucceededAction") == "Input")print HTML\UI\Toast("Rent Request input successfully.");
#region List
?>