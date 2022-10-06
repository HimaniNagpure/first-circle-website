<?php
include 'dbconn.php';
$query="select id, name, BSB_no, acc_no, balance from client"; // Fetch all the data from the table customers
$result=mysqli_query($dbCon,$query);
?>