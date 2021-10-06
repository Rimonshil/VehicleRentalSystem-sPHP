<?php
namespace sPHP;

#region Entity management common configuration
$EM = new EntityManagement($Table[$Entity = "PersonAddress"]);
//DebugDump($Table[$Entity]->Structure());
$EM->ImportField([
	new Database\Field("" . ($Field = "Person") . "ID", "" . ($Column = "{$Field}Name") . "", null, $Table["{$Field}"], null),
	new Database\Field("{$Entity}" . ($Field = "Name") . "", "{$Field}"),
	new Database\Field("{$Entity}" . ($Field = "Street") . "", "{$Field}"),
	new Database\Field("{$Entity}" . ($Field = "City") . "", "{$Field}"),
	new Database\Field("{$Entity}" . ($Field = "State") . "", "{$Field}"),
	new Database\Field("{$Entity}" . ($Field = "ZIP") . "", "{$Field}"),
	new Database\Field("" . ($Field = "Country") . "ID", "" . ($Column = "{$Field}Name") . "", null, $Table["{$Field}"], null),
	new Database\Field("{$Entity}Is" . ($Field = "Active") . "", "{$Field}"),
	//new Database\Field("" . ($Field = "Listener") . "ID", "{$Field}", null, $Table["{$Field}"], "{$Field}Name"),
]);

$EM->InputValidation([
	new HTTP\InputValidation("PersonID", true, VALIDATION_TYPE_INTEGER),
	new HTTP\InputValidation("{$Entity}Name", true),
	new HTTP\InputValidation("CountryID", null, VALIDATION_TYPE_INTEGER),
	new HTTP\InputValidation("{$Entity}IsActive", null, VALIDATION_TYPE_INTEGER),
]);

$EM->ValidateInput(function($Entity, $Database, $Table, $PrimaryKey, $ID){
	$Result = true;

	if($Table->Get( // Check for duplicate values for UNIQUE columns
		"
			(
					{$Table->Alias()}." . ($Column = "PersonID") . " = " . intval($_POST["{$Column}"]) . "
				AND	" . ($Column = "{$Entity}Name") . " = '{$Database->Escape($_POST["{$Column}"])}'
			)
			AND	{$PrimaryKey} <> {$ID}
		"
	, null, null, null, null, null, null))$Result = "Same person and name for the same " . strtolower($Table->FormalName()) . " exists!";

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
	new HTML\UI\Datagrid\Column("" . ($Caption = "Person") . "Name", "{$Caption}", null, null),
	new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "Name") . "", "{$Caption}", null),
	new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "Street") . "", "{$Caption}", null),
	new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "City") . "", "{$Caption}", null),
	new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "State") . "", "{$Caption}", null),
	new HTML\UI\Datagrid\Column("{$Entity}" . ($Caption = "ZIP") . "", "{$Caption}", null),
	new HTML\UI\Datagrid\Column("" . ($Caption = "Country") . "Name", "{$Caption}", null, null),
	new HTML\UI\Datagrid\Column("{$Entity}Is" . ($Caption = "Active") . "", "{$Caption}", FIELD_TYPE_BOOLEANICON),
]);

$EM->Action([
	//new HTML\UI\Datagrid\Action("{$Environment->IconURL()}{$Entity}" . strtolower($ActionEntity = "CommercialInvoice") . ".png", null, $Application->URL("{$Entity}/{$ActionEntity}"), "_blank", null, null, "Commercial invoice"),
	new HTML\UI\Datagrid\Action("{$Environment->IconURL()}edit.png", null, $Application->URL($_POST["_Script"], "btnInput"), null, null, null, "Edit"),
	new HTML\UI\Datagrid\Action("{$Environment->IconURL()}delete.png", null, $Application->URL($_POST["_Script"], "btnDelete"), null, "return confirm('Are you sure to remove the information?');", null, "Delete"),
]);

$EM->BatchActionHTML([
	HTML\UI\Button("<img src=\"{$Environment->IconURL()}search.png\" alt=\"Search\" class=\"Icon\">Search", BUTTON_TYPE_SUBMIT, "btnSearch", true),
	HTML\UI\Button("<img src=\"{$Environment->IconURL()}add.png\" alt=\"Add new\" class=\"Icon\">Add new", BUTTON_TYPE_SUBMIT, "btnInput", true),
	HTML\UI\Button("<img src=\"{$Environment->IconURL()}delete.png\" alt=\"Remove\" class=\"Icon\">Remove", BUTTON_TYPE_SUBMIT, "btnDelete", true, "return confirm('Are you sure to remove the information?');"),
	HTML\UI\Button("<img src=\"{$Environment->IconURL()}export.png\" alt=\"Export\" class=\"Icon\">Export", BUTTON_TYPE_SUBMIT, "btnExport", true),
	HTML\UI\Button("<img src=\"{$Environment->IconURL()}import.png\" alt=\"Import\" class=\"Icon\">Import", BUTTON_TYPE_SUBMIT, "btnImport", true),
	//HTML\UI\Button("<img src=\"{$Environment->IconURL()}report.png\" alt=\"Installation report\" class=\"Icon\">Installation report", BUTTON_TYPE_SUBMIT, "btn{$Entity}ReportInstallation", true),
]);

$EM->OrderBy("PersonName ASC, {$Entity}Name");
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
		HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Person") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption"), "{$Caption}", null, null, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "Name") . "", $EM->InputWidth(), null, true), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "Street") . "", $EM->InputWidth(), null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "City") . "", $EM->InputInlineWidth(), null, null), "{$Caption}", null, true, $EM->FieldCaptionInlineWidth()),
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "State") . "", $EM->InputWidth(), null, null), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\Input("{$Entity}" . ($Caption = "ZIP") . "", $EM->InputInlineWidth(), null, null), "{$Caption}", null, true, $EM->FieldCaptionInlineWidth()),
		HTML\UI\Field(HTML\UI\Select("" . ($Caption = "Country") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get("{$Table["{$OptionEntity}"]->Alias()}.{$OptionEntity}IsActive = 1", "{$OptionEntity}LookupCaption ASC"), null, "{$OptionEntity}LookupCaption"), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
		HTML\UI\Field(HTML\UI\RadioGroup("{$Entity}Is" . ($Caption = "Active") . "", [new HTML\UI\Radio(1, "Yes"), new HTML\UI\Radio(0, "No")]), "{$Caption}", true, null, $EM->FieldCaptionWidth()),
	]);

	print $EM->InputHTML();
}

#region List
$EM->SearchSQL([
	"1 = 1", // Custom fixed search condition
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "PersonID") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} = " . intval($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"]) . "" : null,
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}Name") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} LIKE '%{$Database->Escape($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"])}%'" : null,
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "CountryID") . "", SetVariable($Column)) ? "{$Table["{$Entity}"]->Alias()}.{$Column} = " . intval($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"]) . "" : null,
	SetVariable("{$Configuration["SearchInputPrefix"]}" . ($Column = "{$Entity}IsActive") . "", SetVariable($Column, "")) !== "" ? "{$Table["{$Entity}"]->Alias()}.{$Column} = " . intval($_POST["{$Configuration["SearchInputPrefix"]}{$Column}"]) . "" : null,
]);

$EM->SearchUIHTML([
	HTML\UI\Field(HTML\UI\Select("{$Configuration["SearchInputPrefix"]}" . ($Caption = "Person") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get(null, "" . ($OptionEntityOrderBy = "{$OptionEntity}LookupCaption") . " ASC"), new Option(), "{$OptionEntityOrderBy}"), "{$Caption}", null, null),
	HTML\UI\Field(HTML\UI\Input("{$Configuration["SearchInputPrefix"]}{$Entity}" . ($Caption = "Name") . "", 200), "{$Caption}", null, true),
	HTML\UI\Field(HTML\UI\Select("{$Configuration["SearchInputPrefix"]}" . ($Caption = "Country") . "ID", $Table[$OptionEntity = "{$Caption}"]->Get(null, "" . ($OptionEntityOrderBy = "{$OptionEntity}LookupCaption") . " ASC"), new Option(), "{$OptionEntityOrderBy}"), "{$Caption}", null, true),
	HTML\UI\Field(HTML\UI\Select("{$Configuration["SearchInputPrefix"]}{$Entity}Is" . ($Caption = "Active") . "", [new Option(), new Option(0, "No"), new Option(1, "Yes")]), "{$Caption}", null, true),
]);

if(isset($_POST["btnExport"])){
	$Application->DocumentType(DOCUMENT_TYPE_CSV, true); // Set output type and clear any previous output
	$Terminal->DocumentName("{$Entity}_" . date("Y-m-d_H-i-s") . ".csv"); // Set client side default file name

	print $Table["{$Entity}"]->Export(
		"PersonName, {$Entity}Name, {$Entity}Street, {$Entity}City, {$Entity}State, {$Entity}ZIP, CountryName",
		str_replace(" ", null, "Person, Street, City, State, ZIP, Country"),
		IMPORT_TYPE_CSV, null, $EM->SearchSQL(), "{$_POST["OrderBy"]} {$_POST["Order"]}"
	);

	$Terminal->Suspended(true); // Suspend any further output
}

print "{$EM->ListHTML()}";
if(SetVariable("SucceededAction") == "Input")print HTML\UI\Toast("{$Table["{$Entity}"]->FormalName()} input successful.");
#region List
?>