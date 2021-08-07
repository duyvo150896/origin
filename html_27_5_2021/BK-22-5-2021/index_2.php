<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Tạo Tài Khoản</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
<font style="background: url(&quot;https://loliteam.net/src/chopnhay.gif&quot;) 
						repeat scroll 0% 0% transparent; color:white;text-shadow: 0 0 0.2em #241D1B,0 0 0.2em #241D1B">
  	<h2>Tạo Tài Khoản Võ Lâm 2 </h2><br>
	<h3>https://www.facebook.com/groups/606385040274160/permalink/768353834077279/</h3></font>
	<br>Tai Game: <a href="https://www.bit.ly/3sGlRze" target="_blank">Jx2_online.zip</a></font>
  </div>
	
  <form method="post" action="server.php">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
  	  <label>Tài khoản</label>
  	  <input type="text" name="username" value="<?php echo $username; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Mật khẩu</label>
  	  <input type="password" name="password_1">
  	</div>
  	<div class="input-group">
  	  <label>Nhập lại mật khẩu</label>
  	  <input type="password" name="password_2">
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Đăng ký</button>
  	</div>
  </form>
<center>
<font size="4" style="background: url(&quot;https://loliteam.net/src/chopnhay.gif&quot;) 
						repeat scroll 0% 0% transparent; color:white;text-shadow: 0 0 0.2em #241D1B,0 0 0.2em #241D1B">	
<br>Copyright © <a href="https://www.facebook.com/Thuong.EoPi" target="_blank">Thuong EoPi</a></font>
    <audio autoplay loop>
      <source src="EmBangLongLamMotNguoiBinhThuongOBenCanhAnhDJYahaRemix.mp3">
    </audio>
</body>
</html>
