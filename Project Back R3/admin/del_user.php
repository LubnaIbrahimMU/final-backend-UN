<?php


include("./dbconn.php");
$id = $_GET ["id"];
$sql = "DELETE FROM users where 	user_id='$id'";
$conn->query($sql);

echo"<br> Data Deleted Succ";


header("Refresh:5 URL=./users.php");

?>