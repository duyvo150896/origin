<?php
error_reporting(E_ALL & ~E_NOTICE & ~8192);  
session_start();
define('IN_ECS', true);
include_once("inc/#config.php");
if($_SESSION['user_login'] == NULL) { die("<script> alert('Đăng nhập để sử dụng');location.href='index.php';</script>"); }
else {



$coin = '9999999'; 
$query = "INSERT INTO account (coin) 
  			  VALUES('$coin')";
  	mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
  	echo '<script>alert("Chúc mừng bạn đã đăng ký thành công!\nBây giờ bạn có thể tham gia trò chơi!"); window.location="index.php";</script>';
  	
  }
}

// ... 