<!doctype html>
<html>

<head>
	<title>Create a Database</title>
	<link rel="stylesheet" href="../css/style.css">
</head>

<body>
	<?php
	$servername = "localhost";
	$databasename = "Group2_CSIS2300";
	$username = "root";
	$password = "";
	try {
		$conn = new PDO("mysql:host=$servername", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Connection Was Successful</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>";
	}

	// create database with sql query
	try {
		$sql = "CREATE DATABASE Group2_CSIS2300;";
		$conn->exec($sql); //execute query
		echo "<p style='color:green'>Database Created Successfully</p>";
	} catch (PDOException $err) {
		echo $sql . "<p style='color:red'>" . $err->getMessage() . "</p>";
	}
	unset($conn);
	echo "<a href='../index.html'>Back to the homepage</a>";
	?>
</body>

</html>