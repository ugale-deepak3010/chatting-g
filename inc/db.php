<?php 

	$server = 'localhost';
	$username= 'root';
	$password='';
	$db = 'chatting_g';

	$conn = mysqli_connect($server,$username,$password,$db);
	$conn->set_charset('utf8');

 ?>