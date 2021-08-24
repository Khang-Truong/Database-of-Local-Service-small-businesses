<!doctype html>
<html>

<head>
    <title>Display Records of a table</title>
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
        $sql = "SELECT  Emp_ID, Name_Emp, DoB_Emp, Supervisor_Emp_ID FROM Employee";
        $stmnt = $conn->prepare($sql);

        $stmnt->execute();
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $row = $stmnt->fetch();  // fetches the first row of the table
        if ($row) {      // if there is any result from the query
            echo '<table>';
            echo '<tr> <th>Employee ID</th> <th>Name</th> <th>Birth Date</th> <th>Supervisor ID</th> </tr>';
            do {
                echo '<tr><td>' . $row['Emp_ID'] . '</td><td>' . $row['Name_Emp'] . '</td>
                <td>' . $row['DoB_Emp'] . '</td><td>' . $row['Supervisor_Emp_ID'] . '</td></tr>';
            } while ($row = $stmnt->fetch());     // fetches another row from the query result, until we reach to the end of the result
            echo '</table>';
        } else {
            echo "<p> No Record Found!</p>";
        }
    } catch (PDOException $err) {
        echo "<p style='color:red'>Record Delete Failed: " . $err->getMessage() . "</p>\r\n";
    }
    unset($conn);
    echo "<a href='../index.html'>Back to the homepage</a>";
    ?>
</body>

</html>