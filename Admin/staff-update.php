
<?php
$query = ""; // Initialize $query with an empty string
$searchInput = ""; // Set a default value
if (isset($_POST['search_teacher'])) {
    echo '<input type="hidden" name="search_input" value="' . $searchInput . '">';
    $searchCriteria = $_POST['search_criteria'];
    if (isset($_POST['search_input'])) {
        $searchInput = $_POST['search_input'];
    }

    echo '<input type="hidden" name="search_input" value="' . $searchInput . '">';
    $searchCriteria = $_POST['search_criteria'];
    if (isset($_POST['search_input'])) {
        $searchInput = $_POST['search_input'];
    }

    // Validate and sanitize the user input
    $searchCriteria = mysqli_real_escape_string($con, $searchCriteria);
    $searchInput = mysqli_real_escape_string($con, trim($_POST['search_input']));

    if ($searchCriteria === 'id') {
        // Search by ID
        $query = "SELECT * FROM teacher_info WHERE teacher_id = '$searchInput'";
    } elseif ($searchCriteria === 'first_name') {
        // Search by first name (case-insensitive)
        $query = "SELECT * FROM teacher_info WHERE LOWER(first_name) LIKE LOWER('%$searchInput%')";
    }
    $result = mysqli_query($con, $query);

    if ($result) {

        // Check if any results were found
        if (mysqli_num_rows($result) > 0) {
            // Loop through the results and display them
            while ($row = mysqli_fetch_assoc($result)) {
                echo '<form action="staff.php" method="post" enctype="multipart/form-data">';
                echo '<div class="row">';
                echo '<div class="col-md-1">';
                echo '<div class="form-group">';
                echo '<label for="teacher_id">ID:</label>';
                echo '<input type="text" name="teacher_id" class="form-control" required="" placeholder="Enter Teacher ID" value="' . $row['teacher_id'] . '">';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-3">';
                echo '<div class="form-group">';
                echo '<label for="first_name">First Name:</label>';
                echo '<input type="text" name="first_name" class="form-control" required="" placeholder="First Name" value="' . $row['first_name'] . '">';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="middle_name">Middle Name:</label>';
                echo '<input type="text" name="middle_name" class="form-control" required="" placeholder="Middle Name" value="' . $row['middle_name'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="last_name">Last Name:</label>';
                echo '<input type="text" name="last_name" class="form-control" required="" placeholder="Last Name" value="' . $row['last_name'] . '"  >';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                // Add more fields in groups of three here
                echo '<div class="row">';
                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="email">Staff Email:</label>';
                echo '<input type="text" name="email" class="form-control" required="" placeholder="Enter Email" value="' . $row['email'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="phone_no">Mobile No:</label>';
                echo '<input type="number" name="phone_no" class="form-control" placeholder="Enter Mobile Number" value="' . $row['phone_no'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="profile_image">Select Your Profile:</label>';
                echo '<input type="file" name="profile_image" class="form-control" >';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                //echo '<div class="row">';
                // echo '<div class="col-md-4">';
                // echo '<div class="form-group">';
                // echo '<label for="teacher_status">Staff Status:</label>';
                // echo '<select class="form-control" name="teacher_status" disabled>';
                // echo '<option>Select Status</option>';
                // echo '<option value="Permanent"' . ($row['teacher_status'] == 'Permanent' ? 'selected' : '') . '>Permanent</option>';
                // echo '<option value="Contract"' . ($row['teacher_status'] == 'Contract' ? 'selected' : '') . '>Contract</option>';
                // echo '</select>';
                // echo '</div>';
                // echo '</div>';

                // echo '<div class="col-md-4">';
                // echo '<div class="form-group">';
                // echo '<label for="application_status">Application Status:</label>';
                // echo '<select class="form-control" name="application_status" disabled>';
                // echo '<option>Select Status</option>';
                // echo '<option value="Yes"' . ($row['application_status'] == 'Yes' ? 'selected' : '') . '>Yes</option>';
                // echo '<option value="No"' . ($row['application_status'] == 'No' ? 'selected' : '') . '>No</option>';
                // echo '</select>';
                // echo '</div>';
                // echo '</div>';

                echo '<div class="row">';
                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="cnic">CNIC No:</label>';
                echo '<input type="text" name="cnic" class="form-control" placeholder="Cnic No" value="' . $row['cnic'] . '" >';
                echo '</div>';
                echo '</div>';




                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="dob">Date of Birth:</label>';
                echo '<input type="date" name="dob" class="form-control" value="' . $row['dob'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="other_phone">Other Phone:</label>';
                echo '<input type="number" name="other_phone" class="form-control" placeholder="Other Phone No" value="' . $row['other_phone'] . '" >';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                // echo '<div class="col-md-4">';
                // echo '<div class="form-group">';
                // echo '<label for="gender">Gender:</label>';
                // echo '<select class="form-control" name="gender" disabled>';
                // echo '<option>Select Gender</option>';
                // echo '<option value="Male"' . ($row['gender'] == 'Male' ? 'selected' : '') . '>Male</option>';
                // echo '<option value="Female"' . ($row['gender'] == 'Female' ? 'selected' : '') . '>Female</option>';
                // echo '</select>';
                // echo '</div>';
                // echo '</div>';
                // echo '</div>';

                // Add more fields in groups of three here
                echo '<div class="row">';
                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="permanent_address">Permanent Address:</label>';
                echo '<input type="text" name="permanent_address" class="form-control" placeholder="Enter Permanent Address" value="' . $row['permanent_address'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="current_address">Current Address:</label>';
                echo '<input type="text" name="current_address" class="form-control" placeholder="Enter Current Address" value="' . $row['current_address'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="place_of_birth">Place of Birth:</label>';
                echo '<input type="text" name="place_of_birth" class="form-control" placeholder="Enter Place of Birth" value="' . $row['place_of_birth'] . '" >';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                echo '<div class="row">';
                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="matric_complition_date">Matric/OLevel Complition Date:</label>';
                echo '<input type="date" name="matric_complition_date" class="form-control" value="' . $row['matric_complition_date'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="matric_awarded_date">Matric/OLevel Awarded Date:</label>';
                echo '<input type="date" name="matric_awarded_date" class="form-control" value="' . $row['matric_awarded_date'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="matric_certificate">Upload Matric/OLevel Certificate:</label>';
                echo '<input type="file" name="matric_certificate" class="form-control" >';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                // Add more fields in groups of three here
                echo '<div class="row">';
                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="fa_complition_date">FA/ALevel Complition Date:</label>';
                echo '<input type="date" name="fa_complition_date" class="form-control" value="' . $row['fa_complition_date'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="fa_awarded_date">FA/ALevel Awarded Date:</label>';
                echo '<input type="date" name="fa_awarded_date" class="form-control" value="' . $row['fa_awarded_date'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="fa_certificate">Upload FA/ALevel Certificate:</label>';
                echo '<input type="file" name="fa_certificate" class="form-control" >';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                // Add more fields in groups of three here
                echo '<div class="row">';
                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="ba_complition_date">BA Complition Date:</label>';
                echo '<input type="date" name="ba_complition_date" class="form-control" value="' . $row['ba_complition_date'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="ba_awarded_date">BA Awarded Date:</label>';
                echo '<input type="date" name="ba_awarded_date" class="form-control" value="' . $row['ba_awarded_date'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="ba_certificate">Upload BA Certificate:</label>';
                echo '<input type="file" name="ba_certificate" class="form-control" >';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                // Add more fields in groups of three here
                echo '<div class="row">';
                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="ma_complition_date">MA Complition Date:</label>';
                echo '<input type="date" name="ma_complition_date" class="form-control" value="' . $row['ma_complition_date'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="ma_awarded_date">MA Awarded Date:</label>';
                echo '<input type="date" name="ma_awarded_date" class="form-control" value="' . $row['ma_awarded_date'] . '" >';
                echo '</div>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<div class="form-group">';
                echo '<label for="ma_certificate">Upload MA Certificate:</label>';
                echo '<input type="file" name="ma_certificate" class="form-control" >';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                // Add "Update" and "Cancel" buttons within each form
                echo '<div class="row">';
                echo '<div class="col-md-4">';
                echo '<button type="submit" name="update_teacher" class="btn btn-primary">Update</button>';
                echo '</div>';

                echo '<div class="col-md-4">';
                echo '<button type="submit" name="cancel_update" class="btn btn-danger">Cancel</button>';
                echo '</div>';
                echo '</div>';

                // ...

                echo '</form>'; // Close the form for this record
            }
        } else {
            echo "No matching records found.";
        }
    } else {
        echo "Error executing query: " . mysqli_error($con);
    }
    mysqli_close($con);
}



// Initialize variables
$newteacherid = "";
$newFirstName = $newMiddleName = $newLastName = $newEmail = $newPhoneNo = $newTeacherStatus = $newApplicationStatus = $newCnic = $newDob = $newOtherPhone = $newGender = $newPermanentAddress = $newCurrentAddress = $newPlaceOfBirth = $newMatricCompletionDate = $newMatricAwardedDate = $newFACompletionDate = $newFAAwardedDate = $newBACompletionDate = $newBAAwardedDate = $newMACompletionDate = $newMAAwardedDate = "";

// Check if the form is submitted for updating teacher information
if (isset($_POST['update_teacher'])) {
    // Ensure that teacher_id is set
    if (isset($_POST['teacher_id'])) {
        $teacher_id = $_POST['teacher_id'];
        // Retrieve the values from the form
        $newFirstName = $_POST['first_name'];
        $newMiddleName = $_POST['middle_name'];
        $newLastName = $_POST['last_name'];
        $newEmail = $_POST['email'];
        $newPhoneNo = $_POST['phone_no'];
        $newTeacherStatus = isset($_POST['teacher_status']) ? $_POST['teacher_status'] : '';
        $newApplicationStatus = isset($_POST['application_status']) ? $_POST['application_status'] : '';
        $newCnic = $_POST['cnic'];
        $newDob = $_POST['dob'];
        $newOtherPhone = $_POST['other_phone'];
        $newGender = isset($_POST['gender']) ? $_POST['gender'] : '';
        $newPermanentAddress = $_POST['permanent_address'];
        $newCurrentAddress = $_POST['current_address'];
        $newPlaceOfBirth = $_POST['place_of_birth'];
        $newMatricCompletionDate = $_POST['matric_complition_date'];
        $newMatricAwardedDate = $_POST['matric_awarded_date'];
        $newFACompletionDate = $_POST['fa_complition_date'];
        $newFAAwardedDate = $_POST['fa_awarded_date'];
        $newBACompletionDate = $_POST['ba_complition_date'];
        $newBAAwardedDate = $_POST['ba_awarded_date'];
        $newMACompletionDate = $_POST['ma_complition_date'];
        $newMAAwardedDate = $_POST['ma_awarded_date'];

        $query = "UPDATE teacher_info SET
		first_name = ?,
		middle_name = ?,
		last_name = ?,
		email = ?,
		phone_no = ?,
		cnic = ?,
		dob = ?,
		other_phone = ?,
		permanent_address = ?,
		current_address = ?,
		place_of_birth = ?,
		matric_complition_date = ?,
		matric_awarded_date = ?,
		fa_complition_date = ?,
		fa_awarded_date = ?,
		ba_complition_date = ?,
		ba_awarded_date = ?,
		ma_complition_date = ?,
		ma_awarded_date = ?
		WHERE teacher_id = ?";

        // Create a prepared statement
        $stmt = mysqli_prepare($con, $query);

        if ($stmt) {
            // Bind parameters to the prepared statement
            mysqli_stmt_bind_param(
                $stmt,
                'ssssssssssssssssssss', // Adjust the 's' count as needed
                $newFirstName,
                $newMiddleName,
                $newLastName,
                $newEmail,
                $newPhoneNo,
                $newCnic,
                $newDob,
                $newOtherPhone,
                $newPermanentAddress,
                $newCurrentAddress,
                $newPlaceOfBirth,
                $newMatricCompletionDate,
                $newMatricAwardedDate,
                $newFACompletionDate,
                $newFAAwardedDate,
                $newBACompletionDate,
                $newBAAwardedDate,
                $newMACompletionDate,
                $newMAAwardedDate,
                $teacher_id 
            );

            // Execute the prepared statement
            $result = mysqli_stmt_execute($stmt);

            if ($result) {
                echo "Teacher details updated successfully.";
            } else {
                echo "Error updating teacher details: " . mysqli_error($con);
            }

            // Close the prepared statement
            mysqli_stmt_close($stmt);
        } else {
            echo "Error in prepared statement: " . mysqli_error($con);
        }
    }
    header("Location: staff.php");
    exit;
}

?>