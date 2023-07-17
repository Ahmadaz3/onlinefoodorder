<?php
session_start();
$host = "localhost";
$user = "root";
$pass = "";
$database = "onlinefoodorder";
$conn = mysqli_connect($host, $user, $pass) or die(mysqli_connect_error()); // Database Connection
$db_select = mysqli_select_db($conn, $database) or die(mysqli_error($conn)); // Selecting Database
?>
