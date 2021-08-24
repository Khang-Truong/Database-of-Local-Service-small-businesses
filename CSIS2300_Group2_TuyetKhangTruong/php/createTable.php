<!doctype html>
<html>

<head>
	<title>Create a Table</title>
	<link rel="stylesheet" href="../css/style.css">
</head>

<body>
	<?php
	$servername = "localhost";
	$dbname = "Group2_CSIS2300";
	$username = "root";
	$password = "";
	//connect to My SQL server
	try {
		$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Connection Was Successful</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
	}
	//create table with sql query
	$sql = "CREATE TABLE Employee (
		Emp_ID CHAR(15),
		Name_Emp  VARCHAR(30),
		DoB_Emp DATE,
		Supervisor_Emp_ID CHAR (15),
		PRIMARY KEY (Emp_ID)
	);";
	try {
		$conn->exec($sql); //execute a query
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Table Created Successfully</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
	}
	unset($conn);
	echo "<a href='../index.html'>Back to the homepage</a>";
	?>
</body>

</html>