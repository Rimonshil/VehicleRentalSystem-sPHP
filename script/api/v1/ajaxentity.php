<?php
namespace sPHP;

$Application->DocumentType(DOCUMENT_TYPE_JSON);
$NumberColumn = $Table[$_POST["Entity"]]->Structure()["Number"];

foreach(ListToArray(SetVariable("Column", "{$_POST["Entity"]}Name")) as $Column){
	$WHERE = ["" . (strpos($Column, ".") ? null : "{$Table[$_POST["Entity"]]->Alias()}.") . "{$Column} "];

	if(in_array($Column, $NumberColumn)){
		$WHERE[] = "= " . floatval($_POST["__Keyword"]);
	}
	else{
		$WHERE[] = "LIKE '%{$_POST["__Keyword"]}%'";
	}

	$WHEREClause[] = implode(null, $WHERE);
}
//var_dump($WHEREClause); exit;
print json_encode($Table[$_POST["Entity"]]->Get(isset($WHEREClause) ? implode(" OR ", $WHEREClause) : "0 = 1"));
?>