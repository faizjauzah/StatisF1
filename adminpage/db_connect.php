<?php
// db_connect.php

$servername = "localhost";
$username = "root";  // Adjust if you have a different username
$password = "";  // Adjust if you have a password set
$dbname = "kelompok2";  // Replace with your actual database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
