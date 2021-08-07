<?php 
    include('./connect.php'); 
    $errors = [];
    $coin = '0';
    if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($username)) { 
    $errors['username'] = 'Chưa nhập tên tài khoản'; 
    }
   if (empty($password_1)) { 
    $errors['password_1'] = 'Chưa nhập mật khẩu'; 
    }    
  // Pass khac nhau
  if ($password_1 != $password_2) {
    $errors['password_2'] = 'Mật khẩu xác nhận không đúng';  
    }
    
  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM account WHERE username='$username' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['username'] === $username) {
      $errors['used'] = "Tài khoản đã được sử dụng";
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
    }
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký nhanh</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<style>
* {
	margin: 0px;
	padding: 0px;
}
body {
	font-size: 120%;
	background: #F8F8FF;
}

.header {
	width: 30%;
	margin: 50px auto 0px;
	color: white;
	background: #5F9EA0;
	text-align: center;
	border: 1px solid #B0C4DE;
	border-bottom: none;
	border-radius: 10px 10px 0px 0px;
	padding: 20px;
}
form, .content {
	width: 30%;
	margin: 0px auto;
	padding: 20px;
	border: 1px solid #B0C4DE;
	background: white;
	border-radius: 0px 0px 10px 10px;
}
.form-group {
	margin: 10px 0px 10px 0px;
}

.form-group label {
	display: block;
	text-align: left;
	margin: 3px;
}
.form-group input {
	height: 30px;
	width: 93%;
	padding: 5px 10px;
	font-size: 16px;
	border-radius: 5px;
	border: 1px solid gray;
}
.btn {
	padding: 10px;
	font-size: 15px;
	color: white;
	background: #5F9EA0;
	border: none;
	border-radius: 5px;
}
.error {
	width: 92%; 
	margin: 0px auto; 
	padding: 10px; 
	border: 1px solid #a94442; 
	color: #a94442; 
	background: #f2dede; 
	border-radius: 5px; 
	text-align: left;
}
.success {
	color: #3c763d; 
	background: #dff0d8; 
	border: 1px solid #3c763d;
	margin-bottom: 20px;
}

</style>
	<div class="header">
		<h2>Đăng ký nhanh</h2>
	</div>
	
	<form method="post" action="">

		<?php include('errors.php'); ?>

		 <div class="form-group">
			<label>Tên tài khoản</label><div class="has-error"><?php echo (isset($errors['username']))?$errors['username']:'' ?><?php echo (isset($errors['used']))?$errors['used']:'' ?></div>
			<input type="text" name="username" class="form-control" placeholder="Tên đăng nhập" value="" minlength="6" >
		</div>		
		<div class="form-group">
			<label>Mật khẩu</label><div class="has-error"><?php echo (isset($errors['password_1']))?$errors['password_1']:'' ?></div>
			<input type="password" name="password_1" placeholder="Nhập mật khẩu" class="form-control" minlength="6" >
		</div>
		<div class="form-group">
			<label>Nhập lại mật khẩu</label><div class="has-error"><?php echo (isset($errors['password_2']))?$errors['password_2']:'' ?></div>
			<input type="password" name="password_2" placeholder="Nhập lại mật khẩu" class="form-control" minlength="6" >
		</div>
		<center><div class="form-group">
			<button type="submit" class="btn btn-primary btn-block text-uppercase uwp_register_submit" name="reg_user">Đăng ký</button>
		</div>
		</center>
	</form>
</body>
</html>
