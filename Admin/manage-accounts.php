<!-- PHP Starts Here -->
<?php 
    session_start();
    require_once "../connection/connection.php"; 
    $message = "";
	$account = ""; // Initialize the $account variable

    if (isset($_POST["submit"])) {
        $account = $_POST['account'];
        $user_id = $_POST['user_id'];

        if (!empty($user_id)) {
            $que = "UPDATE login SET account='$account' WHERE user_id = '$user_id'";
            $run = mysqli_query($con, $que);

            if ($run) {
                $message =  $account == "Activate" ? "Account Activated Successfully" : "Account Deactivated Successfully";
            } else {
                $message = "Account Not Activated Successfully";
            }
        } else {
            $message = "Please select a User ID.";
        }
    }
?>

<!doctype html>
<html lang="en">
    <head>
        <title>Admin - Manage Accounts</title>
    </head>
    <body>
        <?php include('../common/common-header.php') ?>
        <?php include('../common/admin-sidebar.php') ?>  

        <main role="main" class="col-xl-10 col-lg-9 col-md-8 ml-sm-auto px-md-4 mb-2 w-100">
            <div class="sub-main">
                <div class="bar-margin text-center d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 text-white admin-dashboard pl-3">
                    <h4>User Account Management System</h4>
                </div>
                <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <?php
                                    if (($account == "Activate" or $account == "Deactivate") && $message == true) {
                                        $bg_color = "alert-success";
                                    } else if ($message == true) {
                                        $bg_color = "alert-danger";
                                    }
                                ?>
                                <h5 class="py-2 pl-3 <?php echo $bg_color; ?>">
                                    <?php echo $message ?>
                                </h5>
                            </div>
                            <div class="col-md-12">
                                <form action="manage-accounts.php" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Select User ID:</label>
                                                <select name="user_id" class="form-control">
                                                    <option value="">Select User ID</option>
                                                    <?php
                                                    // Fetch user IDs from the login table
                                                    $userQuery = "SELECT user_id FROM login";
                                                    $userResult = mysqli_query($con, $userQuery);

                                                    // Iterate through the results and populate the dropdown options
                                                    while ($userRow = mysqli_fetch_assoc($userResult)) {
                                                        echo '<option value="' . $userRow['user_id'] . '">' . $userRow['user_id'] . '</option>';
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Enter Account Status:</label>
                                                <select name="account" class="form-control">
                                                    <option>Select Account Status</option>
                                                    <option value="Activate">Activate</option>
                                                    <option value="Deactivate">Deactivate</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="submit" name="submit" value="Change" class="btn btn-primary px-5">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
