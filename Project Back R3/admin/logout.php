<?php 
// session_start();



// session_unset();


// session_destroy();



// unset cookies 

$expire_date = time() - (86400 *30);    #86400=1day
setcookie('user_data', $_COOKIE['user_data'], $expire_date, '/');


echo " you are logged out ";

header("refresh:2; URL=./login.php");



?>