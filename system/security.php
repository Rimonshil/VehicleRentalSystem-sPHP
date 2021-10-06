<?php
namespace sPHP;
// TODO: Make the system go back to the original location after authentication where the user intends to be
$_POST["_Script"] = $SSN->IsGuest() ? ( // Guest
	in_array(strtolower($_POST["_Script"]), explode(",", str_replace(" ", null, strtolower("LiveLocationForMPBI, CrackPlatoon, Custom/Orion/Route, API/V1/TerminalCommand/Update, API/V1/Terminal/GetForCrackPlatoon, API/V1/Message/Read, API/V1/TerminalDataMinutely/Aggregate, API/V1/Terminal/List_Jatri, API/V1/Terminal/List, API/V1/Terminal/Controller_List, API/V1/User/Password_Reset_Set, API/V1/User/Password_Reset_Initiate, API/V1/User/Profile, API/V1/User/SignOut, API/V1/User/SignIn, API/V1/User/Authenticate, Cron/Application, Cron/Non_critical, Cron/Test, Cron/Controller_Sync, Cron/Fetcher/Fetch, Cron/FetchTerminalData, Cron/Maintenance, User/SignIn, User/SignInAction, User/SignUp, User/SignUpAction, User/Password/Reset, Test, FAQ, Contact, Home")))) ? $_POST["_Script"] : // Permitted
	$APP->DefaultScript() // Denied
) : $_POST["_Script"]; // Permitted for authenticated user
?>