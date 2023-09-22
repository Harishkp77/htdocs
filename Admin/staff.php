<!---------------- Session starts form here ----------------------->
<?php
session_start();
if (!$_SESSION["LoginAdmin"]) {
	header('location:../login/login.php');
}
require_once "../connection/connection.php";
$_SESSION['LoginStaff'] = "";
?>
<!---------------- Session Ends form here ------------------------>

<!--*********************** PHP code starts from here for data insertion into database ******************************* -->

<?php
if (isset($_POST['btn_save'])) {

	$first_name = $_POST["first_name"];

	$middle_name = $_POST["middle_name"];

	$last_name = $_POST["last_name"];

	$email = $_POST["email"];

	$phone_no = $_POST["phone_no"];

	$teacher_status = $_POST["teacher_status"];

	$application_status = $_POST["application_status"];

	$cnic = $_POST["cnic"];

	$dob = $_POST["dob"];

	$other_phone = $_POST["other_phone"];

	$gender = $_POST["gender"];

	$permanent_address = $_POST["permanent_address"];

	$current_address = $_POST["current_address"];

	$place_of_birth = $_POST["place_of_birth"];

	$matric_complition_date = $_POST["matric_complition_date"];

	$matric_awarded_date = $_POST["matric_awarded_date"];

	$fa_complition_date = $_POST["fa_complition_date"];

	$fa_awarded_date = $_POST["fa_awarded_date"];

	$ba_complition_date = $_POST["ba_complition_date"];

	$ba_awarded_date = $_POST["ba_awarded_date"];

	$ma_complition_date = $_POST["ma_complition_date"];

	$ma_awarded_date = $_POST["ma_awarded_date"];

	$date = date("d-m-y");

	$password = $_POST['password'];

	$role = $_POST['role'];


	// *****************************************Images upload code starts here********************************************************** 
	$profile_image = $_FILES['profile_image']['name'];
	$tmp_name = $_FILES['profile_image']['tmp_name'];
	$path = "images/" . $profile_image;
	move_uploaded_file($tmp_name, $path);

	$matric_certificate = $_FILES['matric_certificate']['name'];
	$tmp_name = $_FILES['matric_certificate']['tmp_name'];
	$path = "images/" . $matric_certificate;
	move_uploaded_file($tmp_name, $path);

	$fa_certificate = $_FILES['fa_certificate']['name'];
	$tmp_name = $_FILES['fa_certificate']['tmp_name'];
	$path = "images/" . $fa_certificate;
	move_uploaded_file($tmp_name, $path);

	$ba_certificate = $_FILES['ba_certificate']['name'];
	$tmp_name = $_FILES['ba_certificate']['tmp_name'];
	$path = "images/" . $ba_certificate;
	move_uploaded_file($tmp_name, $path);

	$ma_certificate = $_FILES['ma_certificate']['name'];
	$tmp_name = $_FILES['ma_certificate']['tmp_name'];
	$path = "images/" . $ma_certificate;
	move_uploaded_file($tmp_name, $path);

	// *****************************************Images upload code end here********************************************************** 


	$query = "Insert into teacher_info(first_name,middle_name,last_name,email,phone_no,profile_image,teacher_status,application_status,cnic,dob,other_phone,gender,permanent_address,current_address,place_of_birth,matric_complition_date,matric_awarded_date,matric_certificate,fa_complition_date,fa_awarded_date,fa_certificate,ba_complition_date,ba_awarded_date,ba_certificate,ma_complition_date,ma_awarded_date,ma_certificate,hire_date)values('$first_name','$middle_name','$last_name','$email','$phone_no','$profile_image','$teacher_status','$application_status','$cnic','$dob','$other_phone','$gender','$permanent_address','$current_address','$place_of_birth','$matric_complition_date','$matric_awarded_date','$matric_certificate','$fa_complition_date','$fa_awarded_date','$fa_certificate','$ba_complition_date','$ba_awarded_date','$ba_certificate','$ma_complition_date','$ma_awarded_date','$ma_certificate','$date')";
	$run = mysqli_query($con, $query);
	if ($run) {
		echo "Your Data has been submitted";
	} else {
		echo "Your Data has not been submitted";
	}
	$query2 = "insert into login(user_id,Password,Role)values('$email','$password','$role')";
	$run2 = mysqli_query($con, $query2);
	if ($run2) {
		echo "Your Data has been submitted into login";
	} else {
		echo "Your Data has not been submitted into login";
	}
}
?>

<?php
if (isset($_POST['btn_save2'])) {
	$course_code = $_POST['course_code'];

	$semester = $_POST['semester'];

	$teacher_id = $_POST['teacher_id'];

	$subject_code = $_POST['subject_code'];

	$total_classes = $_POST['total_classes'];

	$date = date("d-m-y");

	$query3 = "insert into teacher_courses(course_code,semester,teacher_id,subject_code,assign_date,total_classes)values('$course_code','$semester','$teacher_id','$subject_code','$date','$total_classes')";
	$run3 = mysqli_query($con, $query3);
	if ($run3) {
		echo "Your Data has been submitted";
	} else {
		echo "Your Data has not been submitted";
	}
}
?>


<!doctype html>
<html lang="en">

<head>
	<title>Admin - Register Staff</title>
</head>

<body>
	<?php include('../common/common-header.php') ?>
	<?php include('../common/admin-sidebar.php') ?>
	<main role="main" class="col-xl-10 col-lg-9 col-md-8 ml-sm-auto px-md-4 mb-2 w-100">
		<div class="sub-main">
			<div class="text-center d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 text-white admin-dashboard pl-3">
				<div class="d-flex">
					<h4 class="mr-5">Staff Management System</h4>
					<!-- Large modal for Add Staff -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Staff</button>
					<span style="margin-right: 10px;"></span>
					<!-- Large modal for Assign Courses -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg1">Assign Courses</button>
				</div>
			</div>
			<div>
				<div>
					<!-- Search Teacher Form -->
					<form action="" method="POST" class="form-inline mt-3">
						<div class="form-group">
							<label for="searchCriteria">Search By:</label>
							<select class="form-control mx-2" id="searchCriteria" name="search_criteria">
								<option value="id">ID</option>
								<option value="first_name">First Name</option>
							</select>
						</div>

						<input type="text" class="form-control mb-2 mr-sm-2" id="searchInput" name="search_input" placeholder="Enter ID or First Name" required>

						<button type="submit" class="btn btn-primary mb-2" name="search_teacher">Search</button>
					</form>
					<?php
					require_once "../connection/connection.php"; // Include your database connection file

					if (isset($_POST['search_teacher'])) {
						$searchCriteria = $_POST['search_criteria'];
						$searchInput = $_POST['search_input'];

						// Validate and sanitize the user input
						$searchCriteria = mysqli_real_escape_string($con, $searchCriteria);
						$searchInput = mysqli_real_escape_string($con, trim($searchInput)); // Trim whitespace

						if ($searchCriteria === 'id') {
							// Search by ID
							$query = "SELECT * FROM teacher_info WHERE teacher_id = '$searchInput'";
						} elseif ($searchCriteria === 'first_name') {
							// Search by first name (case-insensitive)
							$query = "SELECT * FROM teacher_info WHERE LOWER(first_name) LIKE LOWER('%$searchInput%')";
						}

						// Execute the query and fetch results
						$result = mysqli_query($con, $query);

						if ($result) {
							// Check if any results were found
							if (mysqli_num_rows($result) > 0) {
								// Loop through the results and display them
								while ($row = mysqli_fetch_assoc($result)) {
									// Display teacher details here
									echo "Teacher ID: " . $row['teacher_id'] . "<br>";
									echo "First Name: " . $row['first_name'] . "<br>";
									// Add more fields for other details
									// ...
								}
							} else {
								echo "No matching records found.";
							}
						} else {
							echo "Error executing query: " . mysqli_error($con);
						}
					}
					?>

					<?php
					if (isset($_POST['edit_teacher'])) {
						$teacher_id = $_POST['teacher_id'];
						$first_name = $_POST['first_name'];
						// Add more fields for other details

						// Query to update teacher details
						$query = "UPDATE teacher_info SET first_name = '$first_name' WHERE teacher_id = '$teacher_id'";

						// Execute the query
						$result = mysqli_query($con, $query);

						if ($result) {
							echo "Teacher details updated successfully.";
						} else {
							echo "Error updating teacher details: " . mysqli_error($con);
						}
					}
					?>

					<?php if (isset($teacherData)) { ?>
						<div id="editTeacherSection">
							<h2>Teacher Details</h2>
							<form action="" method="POST">
								<!-- Display teacher details here -->
								<div class="form-group">
									<label for="firstName">First Name:</label>
									<input type="text" class="form-control" id="firstName" name="first_name" value="<?php echo $teacherData['first_name']; ?>">
								</div>
								<!-- Add more fields for other details -->
								<!-- ... -->
								<input type="hidden" name="teacher_id" value="<?php echo $teacher_id; ?>">
								<button type="submit" class="btn btn-primary" name="edit_teacher">Save Changes</button>
								<button type="button" class="btn btn-secondary" onclick="cancelEdit()">Cancel</button>
							</form>
						</div>
					<?php } ?>
				</div>
				<!-- Teacher Details Display -->
				<div id="teacherDetails" style="display: none;">
					<form action="update-teacher.php" method="POST" style="display: none;">
						<h2>Teacher Details</h2>
						<div class="form-group">
							<label for="firstName">First Name:</label>
							<input type="text" class="form-control" id="firstName" name="first_name">
						</div>
						<!-- Add more fields for other details -->
						<!-- ... -->
						<button type="submit" class="btn btn-primary">Save Changes</button>
					</form>
				</div>
				<div class="row w-100">
					<div class=" col-lg-6 col-md-6 col-sm-12 mt-1 ">
						<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header text-white" style="background-color:#010738;">
										<h4 class="modal-title text-center">Add New Staff</h4>
									</div>
									<div class="modal-body">
										<form action="staff.php" method="post" enctype="multipart/form-data">
											<div class="row mt-3">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">First Name: </label>
														<input type="text" name="first_name" class="form-control" required="" placeholder="First Name">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Middle Name: </label>
														<input type="text" name="middle_name" class="form-control" required="" placeholder="Middle Name">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Last Name: </label>
														<input type="text" name="last_name" class="form-control" required="" placeholder="Last Name">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Staff Email:</label>
														<input type="text" name="email" class="form-control" required="" placeholder="Enter Email">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Mobile No</label>
														<input type="number" name="phone_no" class="form-control" placeholder="Enter Mobile Number">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Select Your Profile </label>
														<input type="file" name="profile_image" class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Staff Status: </label>
														<select class="browser-default custom-select" name="teacher_status">
															<option selected>Select Status</option>
															<option value="Permanent">Permanent</option>
															<option value="Contract">Contract</option>
														</select>
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Application Status:</label>
														<select class="browser-default custom-select" name="application_status">
															<option>Select Status</option>
															<option value="Yes">Yes</option>
															<option value="No">No</option>
														</select>
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">CNIC No:</label>
														<input type="text" name="cnic" class="form-control" placeholder="Cnic No">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Date of Birth: </label>
														<input type="date" name="dob" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Other Phone:</label>
														<input type="number" name="other_phone" class="form-control" placeholder="Other Phone No">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Gender:</label>
														<select class="browser-default custom-select" name="gender">
															<option selected>Select Gender</option>
															<option value="Male">Male</option>
															<option value="Female">Female</option>
														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Permanent Address: </label>
														<input type="text" name="permanent_address" class="form-control" placeholder="Enter Permanent Address">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Current Address:</label>
														<input type="text" name="current_address" class="form-control" placeholder="Enter Current Address">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Place of Birth:</label>
														<input type="text" name="place_of_birth" class="form-control" placeholder="Enter Place of Birth">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Matric/OLevel Complition Date: </label>
														<input type="date" name="matric_complition_date" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Matric/OLevel Awarded Date:</label>
														<input type="date" name="matric_awarded_date" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Upload Matric/OLevel Certificate:</label>
														<input type="file" name="matric_certificate" class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">FA/ALevel Complition Date: </label>
														<input type="date" name="fa_complition_date" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">FA/ALevel Awarded Date:</label>
														<input type="date" name="fa_awarded_date" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Upload FA/ALevel Certificate:</label>
														<input type="file" name="fa_certificate" class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">BA Complition Date: </label>
														<input type="date" name="ba_complition_date" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">BA Awarded Date:</label>
														<input type="date" name="ba_awarded_date" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Upload BA Certificate:</label>
														<input type="file" name="ba_certificate" class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">MA Complition Date: </label>
														<input type="date" name="ma_complition_date" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">MA Awarded Date:</label>
														<input type="date" name="ma_awarded_date" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Upload MA Certificate:</label>
														<input type="file" name="ma_certificate" class="form-control">
													</div>
												</div>
											</div>
											<!-- _________________________________________________________________________________
																				Hidden Values are here
											_________________________________________________________________________________ -->
											<div>
												<input type="hidden" name="password" value="teacher123*">
												<input type="hidden" name="role" value="Staff">
											</div>
											<!-- _________________________________________________________________________________
																				Hidden Values are end here
											_________________________________________________________________________________ -->
											<div class="modal-footer">
												<input type="submit" class="btn btn-primary" name="btn_save" value="Save">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row w-100">
					<div class="col-md-12 ml-2">
						<section class="mt-3">
							<div class="row">
								<div class="col-md-3 offset-9 pt-5 mb-2">
									<div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header text-white" style="background-color:#010738;">
													<h4 class="modal-title text-center">Assign Courses To Staffs</h4>
												</div>
												<div class="modal-body">
													<form action="staff.php" method="POST" enctype="multipart/form-data">
														<div class="row mt-3">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputEmail1">Select Department:*</label>
																	<select class="browser-default custom-select" name="course_code" required="">
																		<option>Select Department</option>
																		<?php
																		$query = "SELECT course_code, course_name FROM courses";
																		$result = mysqli_query($con, $query);
																		while ($row = mysqli_fetch_assoc($result)) {
																			echo '<option value="' . $row['course_code'] . '">' . $row['course_name'] . '</option>';
																		}
																		?>
																	</select>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputPassword1" required>Enter Semester:*</label>
																	<input type="text" name="semester" class="form-control">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputPassword1">Enter Staff ID:*</label>
																	<select class="browser-default custom-select" name="teacher_id" required="">
																		<option>Select Staff ID</option>
																		<?php
																		$query = "SELECT teacher_id FROM teacher_info";
																		$result = mysqli_query($con, $query);
																		while ($row = mysqli_fetch_assoc($result)) {
																			echo '<option value="' . $row['teacher_id'] . '">' . $row['teacher_id'] . '</option>';
																		}
																		?>
																	</select>

																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputPassword1">Please Select Courses:*</label>
																	<select class="browser-default custom-select" name="subject_code" required="">
																		<option>Select Courses</option>
																		<?php
																		$query = "SELECT subject_code FROM time_table";
																		$result = mysqli_query($con, $query);
																		while ($row = mysqli_fetch_assoc($result)) {
																			echo '<option value="' . $row['subject_code'] . '">' . $row['subject_code'] . '</option>';
																		}
																		?>
																	</select>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputPassword1">Enter Total Classes:*</label>
																	<input type="text" name="total_classes" class="form-control" required>
																</div>
															</div>
														</div>
														<div class="modal-footer">
															<input type="submit" class="btn btn-primary" name="btn_save2" value="Save">
															<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<table class="w-100 table-elements mb-5 table-three-tr" cellpadding="10">
								<tr class="table-tr-head table-three text-white">
									<th>Staff ID</th>
									<th>Staff Name</th>
									<th>Current Address</th>
									<th>Hire Date</th>
									<th>Email</th>
									<th>Operations</th>
								</tr>
								<?php
								$query = "select teacher_id,first_name,middle_name,last_name,current_address,ma_certificate,hire_date,email from teacher_info";
								$run = mysqli_query($con, $query);
								while ($row = mysqli_fetch_array($run)) {
									echo "<tr>";
									echo "<td>" . $row["teacher_id"] . "</td>";
									echo "<td>" . $row["first_name"] . " " . $row["middle_name"] . " " . $row["last_name"] . "</td>";
									echo "<td>" . $row["current_address"] . "</td>";
									echo "<td>" . $row["hire_date"] . "</td>";
									echo "<td>" . $row["email"] . "</td>";
									echo	"<td width='170'><a class='btn btn-primary' href=display-staff.php?teacher_id=" . $row['teacher_id'] . ">Profile</a>  <a class='btn btn-danger' href='javascript:void(0);' onclick='confirmDelete(" . $row['teacher_id'] . ")'>Delete</a></td>";
									echo "</tr>";
								}
								?>
							</table>
						</section>
					</div>
				</div> 
			</div>
	</main>
	<script>
		function confirmDelete(teacher_id) {
			if (confirm("Are you sure you want to delete this staff member?")) {
				window.location.href = 'delete-function.php?teacher_id=' + teacher_id;
			}
		}
	</script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		// Function to cancel the edit operation
		function cancelEdit() {
			$("#editTeacherSection").hide();
			$("#teacherDetails").show();
			$("#firstName").val(""); // Clear the input field
		}
	</script>

	<script type="text/javascript" src="../bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
</body>

</html>