<?php
namespace sPHP;

use mysqli_result;

#region Entity management common configuration
$EM = new EntityManagement($Table[$Entity1 = "Vehicle"]);
$EM2 = new EntityManagement($Table[$Entity = "Type"]);
//$uid=$USR->ID();
//DebugDump($Entity1()->VehicleIsActive);
//DebugDump($Table[$Entity1]->Structure());
//DebugDump($Table[$Entity1]->VehicleIsActive);

//$sample= $Database->Query("SELECT * FROM vrs_RentVehicleRequest WHERE UserID =$uid");
//DebugDump($sample,$USR->ID());
//$ActiveVehicleList=$Database->Query("SELECT v.VehicleLicenseNumber, t.TypeName,v.`VehicleBrandName` FROM vrs_vehicle as v LEFT JOIN vrs_type t ON v.`TypeID` = t.`TypeID` where v.VehicleIsActive=1");
//$Dataset = $ActiveVehicleList->fetchAll();
//$mysqli_result=$ActiveVehicleList->fetchAll();
//$ActiveVehicleList=$Database->Query("SELECT v.VehicleLicenseNumber, t.TypeName,v.`VehicleBrandName` FROM vrs_vehicle as v LEFT JOIN vrs_type t ON v.`TypeID` = t.`TypeID` where v.VehicleIsActive=1");
$sql="SELECT v.VehicleLicenseNumber, t.TypeName,v.`VehicleBrandName` FROM vrs_vehicle as v LEFT JOIN vrs_type t ON v.`TypeID` = t.`TypeID` where v.VehicleIsActive=1";
$ActiveVehicleList=$Database->Query($sql);
//$lol=mysqli_fetch_array( $Database->Connect(),$sql);
//$stmt =$this->connect()->prepare($sql);
DebugDump($ActiveVehicleList);
var_dump($ActiveVehicleList);
$result=mysqli_result($ActiveVehicleList);
//$messageData = mysqli_fetch_array($Database->Query($sql));
//$Query->nextRowset()
if (count($ActiveVehicleList) > 0) {
    echo "<table><tr><th>License Number</th><th>Type Name</th><th>Brand Name</th></tr>";
    // output data of each row
    while($row =$ActiveVehicleList) {
        echo "<tr><td>" . $row["VehicleLicenseNumber"]. "</td><td>" . $row['TypeName']. " " . $row["VehicleBrandName"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}









?>

