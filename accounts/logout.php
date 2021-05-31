<?php session_start();
include '../inc/db.php';
$id=$_SESSION['id'];
  if (session_destroy()) {
global $conn;
  	//$s=rand(10,100);

            $sql2 = "UPDATE users SET status = 'offline' WHERE id = '$id'";
             if (mysqli_query($conn,$sql2)) {
             //echo "success";
              }


    header('Location: ../signup.php');
  }

  
?>