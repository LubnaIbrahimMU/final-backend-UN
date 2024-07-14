<?php

include('./dbconn.php');

// if ($_SERVER['REQUEST_METHOD'] = "POST") {

// $username="username";
// $pw="pass";


// if (!empty($username)&& !empty ($pw)){

// echo "<br>  Login successfully";
// }
// }



// session_start();
// $msg = "";

if(isset($POST ['login'])){
    $username = $_POST['username'];
    $pw = $_POST['pass'];
    if (!empty($username) && !empty($pw)){
        // $_SESSION['username'] = $username;
        // $_SESSION['pw'] = $pw;
        // $msg = "Welcome" . $_SESSION['username'];
        $expire_date = time() + (86400 *30);    #86400=1day
        setcookie('user_data', $username, $expire_date, '/');
        // $msg = " Welcom Cookie: " . $_COOKIE['user_data'];
    }


}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- <?= $msg ?> -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>News Admin | Login/Register</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <!-- <div class="alert alert-success">
        <?= $msg ?>
        <a href="./logout.php" class="btn btn-primary">logout here</a>
    </div> -->
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" name="username" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" name="pass"  required="" />
              </div>
              <div>
                <a class="btn btn-default submit" name="login" href="../index.php">Log in</a>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-newspaper-o"></i></i> News Admin</h1>
                  <p>©2016 All Rights Reserved. News Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Fullname" required="" />
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Username" name="username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" name="pass" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="../index.php">Submit</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-newspaper-o"></i></i> News Admin</h1>
                  <p>©2016 All Rights Reserved. News Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
