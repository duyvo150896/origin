<?php
session_start();

// initializing variables
$username = "";
$coin = '9999999';
$email = "mail@gmail.com";
$errors = []; 
$_SESSION['success'] = "";
$_SESSION['thongbao'] = "";

// connect to the database
$db = mysqli_connect('localhost', 'root', 'Pass1234', 'paysys');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($username)) { array_push($errors, "Chưa nhập tên tài khoản"); }
  if (empty($email)) { array_push($errors, "Chưa nhập Email"); }
  if (empty($password_1)) { array_push($errors, "Chưa nhập mật khẩu"); }
  // Pass khac nhau
  if ($password_1 != $password_2) {
	array_push($errors, "Mật khẩu xác nhận không đúng");
	header('location: register.php');
	
  }

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM account WHERE username='$username' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['username'] === $username) {
      array_push($errors, "Tài khoản đã được sử dụng");
    }
  }
   // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	$password = md5($password_1);//encrypt the password before saving in the database

  	$query = "INSERT INTO account (username, secpassword, password, rowpass, coin, email) 
  			  VALUES('$username', '$password', '$password', '$password_1', '$coin', '$email')";
  	$result = mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
  	$_SESSION['success'] = "Đăng ký thành công";
  	header('location: index2.html');
  }header('location: register.php');
}

// LOGIN USER
	if (isset($_POST['login_user'])) {
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$password = mysqli_real_escape_string($db, $_POST['password']);

		if (empty($username)) {
			$errors['username'] = "Chưa nhập tài khoản";
			}
		if (empty($password)) {
			$errors['password'] = "Chưa nhập mật khẩu";
			}
			var_dump($errors);
		if (count($errors) == 0) {
			$password = md5($password);
			$query = "SELECT * FROM account WHERE username='$username' AND password='$password'";
			$results = mysqli_query($db, $query);

			if (mysqli_num_rows($results) == 1) {
				$_SESSION['username'] = $username;
				$_SESSION['success'] = "Đăng nhập thành công";
				header('location: index.html');
			}else{
				$errors['_null'] = "Nhập sai tài khoảng hoặc mật khẩu";
				header('location: login.php');
				
			}		
		}
	}

// ... 
?>
