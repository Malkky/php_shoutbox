<?php
	include 'database.php';

//Check if form submitted
if(isset($_POST['submit'])){
	$name = mysqli_real_escape_string($con, $_POST['name']); //this protects the file from harmful code i.e inserted html in the form
	$message = mysqli_real_escape_string($con, $_POST['message']);


	//Validate input
	if(!isset($name) || $name == '' || !isset($message) || $message == ''){
		$error = "Please fill in your name and message";
		header("Location: index.php?error=".urlencode($error));
		exit();
	}else{ //if the fields are filled it inserts the info in the database, if not gives error and returns to the first page
		$query = "INSERT INTO shoutit (name, message)
					VALUES('$name', '$message')";
		if(!mysqli_query($con, $query)){
			die('Error: '.mysqli_error($con));
		} else{
			header("Location: index.php");
			exit();
		}
	}
}

?>