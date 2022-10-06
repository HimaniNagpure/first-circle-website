<?php
include 'dbconn.php';
$query="select * from transferfunds"; // Fetch all the data from the table customers
$result=mysqli_query($dbCon,$query);
?>