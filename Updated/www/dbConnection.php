<?php
// variables
$hostname = "studentdb-maria.gl.umbc.edu";
$database = "thwalla1";
$username = "thwalla1";
$password = "Waypoint1";

// Create connection
$conn = mysql_connect($hostname, $username, $password, true);
if(!$conn) {
	// check if the connection is successful
	echo "Could not connect to the database";
	exit;
}
if(!mysql_select_db($database, $conn)) {
	// check if the selected database is accessbile
	echo "Could not select database";
	exit;
}

?>