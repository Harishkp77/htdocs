<?php 
session_start();
include "connection.php";
if (isset($_SESSION['id'])) {
$query = "SELECT * FROM questions";
$run = mysqli_query($conn , $query) or die(mysqli_error($conn));
$total = mysqli_num_rows($run);
?>

<html>
	<head>
		<title>Student Feedback</title>
		<link rel="stylesheet" type="text/css" href="/IECW/css/feed_style.css">
	</head>

	<body>
		<header>
			<div class="container">
				<h1>Student Feedback</h1>
			</div>
		</header>

		<main>
			<div class="container">
				<h2>Welcome to Student Feedback</h2>
				<p>Enter Your Feedback</p>
				<ul>
				    <li><strong>Number of questions: </strong><?php echo $total; ?></li>
				     <li><strong>Score: </strong> </li>
				</ul>
				<a href="question.php?n=1" class="start">Start</a>
				<a href="exit.php" class="add">Exit</a>

			</div>
		</main>

		<footer>
			<div class="container">
				PearlSys IT's Yours
			</div>
		</footer>

	</body>
</html>
<?php unset($_SESSION['score']); ?>
<?php }
else {
	header("location: index.php");
}
?>