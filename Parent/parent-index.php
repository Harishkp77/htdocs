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
    <title>Parent Login</title>
</head>
<body>
    <h2>Under construction</h2>
    <p>will update soon...</p>
</body>
</html>