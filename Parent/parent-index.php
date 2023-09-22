<!---------------- Session starts form here ----------------------->
<?php  
	session_start();
	if (!$_SESSION["LoginParent"])
	{
		header('location:../login/login.php');
	}
		require_once "../connection/connection.php";
		
	?>
<!---------------- Session Ends form here ------------------------>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Information</title>
</head>
<body>
    <?php
    // Include your database connection code here (e.g., require_once "connection.php")

    // Function to display a confirmation dialog before deleting
    function confirmDelete($teacher_id) {
        echo '<script>
            if (confirm("Are you sure you want to delete this record?")) {
                window.location.href = "delete_teacher.php?teacher_id='.$teacher_id.'";
            }
        </script>';
    }

    $query = "SELECT * FROM teacher_info";
$result = mysqli_query($connection, $query);

if (!$result) {
    die("Database query failed."); // You should handle errors more gracefully in production.
}

echo '<table border="1">
        <tr>
            <th>Staff ID</th>
            <th>Staff Name</th>
            <th>Hire Date</th>
            <th>Phone No</th>
            <th>Email</th>
            <th>Operations</th>
        </tr>';

while ($row = mysqli_fetch_assoc($result)) {
    $teacher_id = $row['teacher_id'];
    $full_name = $row['first_name'] . ' ' . $row['middle_name'] . ' ' . $row['last_name'];
    $hire_date = $row['hire_date'];
    $phone_no = $row['phone_no'];
    $email = $row['email'];

    echo '<tr>
            <td>'.$teacher_id.'</td>
            <td>'.$full_name.'</td>
            <td>'.$hire_date.'</td>
            <td>'.$phone_no.'</td>
            <td>'.$email.'</td>
            <td>
                <a href="profile_teacher.php?teacher_id='.$teacher_id.'">Profile</a>
                <a href="edit_teacher.php?teacher_id='.$teacher_id.'">Edit</a>
                <a href="javascript:void(0);" onclick="confirmDelete('.$teacher_id.')">Delete</a>
            </td>
        </tr>';
}

echo '</table>';


    ?>
</body>
</html>
