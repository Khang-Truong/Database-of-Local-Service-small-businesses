<!doctype html>
<html>

<head>
	<title>Insert Data Into a Database</title>
	<link rel="stylesheet" href="../css/style.css">
</head>

<body>

	<?php
	$servername = "localhost";
	$dbname = "group2_csis2300";
	$username = "root";
	$password = "";
	try {
		$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Connection Was Successful</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
	}

	try {
		$sql = "INSERT INTO Employee (Emp_ID, Name_Emp, DoB_Emp, Supervisor_Emp_ID) VALUES (:empId, :ename, :bdate, :supervisorId);";
		// all the names variable names must start with colon (:).
		$stmnt = $conn->prepare($sql);
		$stmnt->bindParam(':empId', $_POST['empId']);
		$stmnt->bindParam(':ename', $_POST['ename']);
		$stmnt->bindParam(':bdate', $_POST['bdate']);
		$stmnt->bindParam(':supervisorId', $_POST['supervisorId']);

		$stmnt->execute();

		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Data Inserted Into Table Successfully</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Data Insertion Failed: " . $err->getMessage() . "</p>\r\n";
	}
	unset($conn);
	echo "<a href='../insertData.html'>Insert More Values</a> <br />";
	echo "<a href='../index.html'>Back to the homepage</a>";
	?>
</body>

</html>