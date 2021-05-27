		<!--Mainmenu-->
		<div id="main_menu">
			<div id="main_mn">
<ul>


<li><a href="http://volam2.zing.vn/cam-nang/tinh-nang-co-ban/trong-cay-tu-linh.html" target='_blank' id="nap-ssroll">
	<span class="head_a"></span>
	Library<span class="head_b"></span></a><span class="head_b"></span>
</a></li>


</ul>
                        <div id="main_reg">
						<?php if(!isset($_SESSION['user_login']) or $_SESSION['user_login']==''){?>
						<?php }else{ ?>
						Chào: <font color=#fff size=4><?php echo $_SESSION['user_login'];?></font> (<a href="" onclick="return dangxuat();">Đăng xuất</a>)
						<?php }?>
						</div>
                    </div>
        </div>
		<!--END Mainmenu-->
