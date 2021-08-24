<!doctype html>
<html>

<head>
    <title>Delete a record of a table</title>
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
        $sql = "DELETE FROM " . $dbname . ".Employee WHERE Emp_ID = :empId";
        $stmnt = $conn->prepare($sql);
        $stmnt->bindParam(':empId', $_POST['empId']);
        $stmnt->execute();
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "<p style='color:green'>Record Deleted Successfully</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'>Record Delete Failed: " . $err->getMessage() . "</p>\r\n";
    }
    unset($conn);
    echo "<a href='../index.html'>Back to the homepage</a>";
    ?>
</body>

</html>