<?php
	include('./connect.php'); 
	//unset($_SESSION['success']);
	session_destroy();
	header('location: login.php');
	
?>