<?php
//Connect to MySQL
$con = mysqli_connect('localhost', 'homestead', 'secret', 'shoutit');

//Test Connection
if(mysqli_connect_errno()){
	echo 'failed to connect to MySQL:'.mysqli_connect_error();
}
?>