<!-- PHP Starts Here -->
<?php 
session_start();
    require_once "../connection/connection.php"; 
    $message="Email Or Password Does Not Match";
    if(isset($_POST["btnlogin"]))
    {
        $Role=$_POST["Role"];
        $username=$_POST["email"];
        $password=$_POST["password"];

        $query="select * from login where user_id='$username' and Password='$password' and Role='$Role' ";
        $result=mysqli_query($con,$query);
        if (mysqli_num_rows($result)>0) {
            while ($row=mysqli_fetch_array($result)) {
                if ($row["Role"]=="Admin")
                {
                    $_SESSION['LoginAdmin']=$row["user_id"];
                    header('Location: ../admin/admin-index.php');

                }
                else if ($row["Role"]=="Staff" and $row["account"]=="Activate")
                {
                    $_SESSION['LoginStaff']=$row["user_id"];
                    header('Location: ../staff/staff-index.php');
                }
                else if ($row["Role"]=="Student" and $row["account"]=="Activate")
                {
                    $_SESSION['LoginStudent']=$row['user_id'];
                    header('Location: ../student/student-index.php');
                }
            }
        }
        else
        { 
            echo "<script>alert('username and Password Incorrect')</script>";
            
        }
    }
?>

<!doctype html>
<html lang="en">
	<head>
		<title>Login - IECW</title>
	</head>
	<body class="login-background">
		<?php include('../common/common-header.php') ?>
        <div class="login-div mt-3 rounded">
            <div class="logo-div text-center">
                <img src="../images/logo.png" alt="" class="align-items-center" width="100" height="100">
            </div>
            <div class="login-padding">
                <h2 class="text-center text-white">LOGIN</h2>
                <form class="p-1" action="login.php" method="POST">
                    <div class="form-group">
                        <label><h6>Role:</h6></label>
                        <select name="Role" class="form-control" required style="text-align: center;">
                            <option value="">Select</option>
                            <option value="Admin">Admin</option>
                            <option value="Staff">Staff</option>
                            <option value="Student">Student</option>
                            
                           <!--  <option value="Vice-Principal">Vice-Principal</option>
                            <option value="HOD">HOD</option>
                            <option value="Office Staff">Office Staff</option>
                            <option value="Assistant Professor">Assistant Professor</option>
                            <option value="HR">HR</option>
                            <option value="Alumni">Alumni</option>
                            <option value="Parent">Parent</option>
                            <option value="Student">Student</option> -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label><h6>Enter Your ID/Email:</h6></label>
                        <input type="text" name="email" placeholder="Enter User ID" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label><h6>Enter Password:</h6></label>
                        <input type="Password" name="password" placeholder="Enter Password" class="form-control border-bottom" required>
                        <!-- <?php echo $message; ?> -->
                    </div>
                    <div class="form-group text-center mb-3 mt-4">
                        <input type="submit" name="btnlogin" value="LOGIN" class="btn btn-white pl-5 pr-5 ">
                    </div>
                </form>
            </div>
        </div>
        <script language="javascript" type="text/javascript">
                function preventBack(){window.history.forward()};
                setTimeout("preventBack()",0);
                window.onunload=function(){null;}
            
        </script>
    </body>
</html>



