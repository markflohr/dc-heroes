<?php 
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dcheroes = "dc-heroes";

    $conn = new mysqli($servername, $username, $password, $dcheroes);

    if ($conn->connect_error) 
    {
        die("Connection failed: " . $database->connect_error);
    }
?>