<!doctype html>
<html>

<head>
    <title>Update a record of a table</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <?php
    $servername = "localhost";
    $dbname = "Group2_CSIS2300";
    $username = "root";
    $password = "";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "<p style='color:green'>Connection Was Successful</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'> Connection Failed: " . $err->getMessage() . "</p>\r\n";
    }

    try {
        $sql = "UPDATE " . $dbname . ".Employee SET Name_Emp = :ename WHERE Emp_ID = :empId";
        $stmnt = $conn->prepare($sql);
        $stmnt->bindParam(':empId', $_POST['empId']);
        $stmnt->bindParam(':ename', $_POST['ename']);
        $stmnt->execute();
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "<p style='color:green'>Record Updated Successfully</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'>Record Update Failed: " . $err->getMessage() . "</p>\r\n";
    }
    unset($conn);
    echo "<a href='../index.html'>Back to the homepage</a>";
    ?>
</body>

</html>