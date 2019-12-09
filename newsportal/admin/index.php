<?php
 session_start();
//Database Configuration File
include('includes/config.php');
//error_reporting(0);
if(isset($_POST['login']))
  {
 
    // Getting username/ email and password
     $uname=$_POST['username'];
    $password=$_POST['password'];
    // Fetch data from database on the basis of username/email and password
$sql =mysqli_query($con,"SELECT AdminUserName,AdminEmailId,AdminPassword FROM tbladmin WHERE (AdminUserName='$uname' || AdminEmailId='$uname')");
 $num=mysqli_fetch_array($sql);
if($num>0)
{
$hashpassword=$num['AdminPassword']; // Hashed password fetching from database
//verifying Password
if (password_verify($password, $hashpassword)) {
$_SESSION['login']=$_POST['username'];
    echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
  } else {
echo "<script>alert('Wrong Password');</script>";
 
  }
}
//if username or email not found in database
else{
echo "<script>alert('User not registered with us');</script>";
  }
 
}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
		<!-- how to control pages dimensions and scaling is given by "viewport, initial zoom level is given by initial-scale "-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- description of my web page-->
        <meta name="description" content="Printing-Press.">
        <meta name="author" content="Shreya and Sneha">
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>


        <!-- App title -->
        <title>Admin Login</title>

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />

        <script src="assets/js/modernizr.min.js"></script>
		<style>
		.bg-image {
  background-image: url("assets/images/loginhere.jpg");

  
  height: 100%; 

  
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

</style>
		
    </head>


    <body class="bg-image">
	
    <header>
	<nav class="navbar fixed-top navbar-expand-md navbar-dark bg-primary justify-content-center">
          <ul class="navbar-nav">
            
             <li class="nav-item">
			  WELCOME ADMIN 
            </li>
		</ul>
    </nav>
	</header>
	
        <!-- HOME -->
        <section>
            <div class="container-alt">
                    <div class="col-sm-12 col-lg-4 ">

                        <div class="wrapper-page bg-dark">

                            <div class="m-t-40 account-pages ">
                                <div class="text-center account-logo-box  ">
                                    <h2 class="text-uppercase">
                                            <span><img src="assets/images/logo-big.png" alt="" width = "280" height="86"></span>
                                        </a>
                                    </h2>
                                    <!--<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>-->
                                </div>
                                <div class="account-content  ">
                                    <form class="form-horizontal" method="post">

                                        <div class="form-group">
                                            <div class="col-xs-12 ">
                                                <input class="form-control" type="text" required="" name="username" placeholder="Username or email" autocomplete="off">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <input class="form-control" type="password" name="password" required="" placeholder="Password" autocomplete="off">
                                            </div>
                                        </div>


                     
                                        <div class="form-group account-btn text-center m-t-10">
                                            <div class="col-xs-12">
                                                <button class="btn w-md btn-lg btn-rounded btn-bordered btn-primary waves-effect waves-light" type="submit" name="login">Log In</button>
                                            </div>
                                        </div>

                                    </form>


                                </div>
                            </div>
                            <!-- end card-box-->


                    

                        </div>
                        <!-- end wrapper -->

                    </div>
            </div>
          </section>
          <!-- END HOME -->

        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
		

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>