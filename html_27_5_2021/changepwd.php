
<?php 
    include('./connect.php'); 
    session_start();
    //ob_start();
    if(!isset($_SESSION["success"])){
        header("Location:login.php");
    }   
    $user =(isset($_SESSION['success']))? $_SESSION['success']:[];
    if(isset($_POST['uwp_change_submit'])){
        $username = $user['username'];
        $old_password = md5($_POST['old_password']);
        $new_password = md5($_POST['new_password']);
        $confirm_password = md5($_POST['confirm_password']);
        if($new_password != $confirm_password) {
        $errors['pwd'] = 'Mật khẩu xác nhận không đúng';  
        }
        $sql = "SELECT * FROM account WHERE username = '$username' and rowpass = '$old_password' LIMIT 1";
        $row = mysqli_query($db,$sql);
        $count = mysqli_num_rows($row); 
             
        if(count($errors) == 0){
        if($count > 0){            
            $sql_update = "UPDATE account SET password = '$new_password' WHERE username ='$username'";
            $result = mysqli_query($db, $sql_update);
            $update['pwd_3'] = 'Mật khẩu đã được thay đổi';            
        }else{
            $errors['pwd_2'] = "Mật khẩu cấp 2 không đúng vui lòng thử lại";            
            }
        }
    }





    
?>
<!DOCTYPE html>
<html>
<head>
    <title>Đổi mật khẩu - Jx2 Animal</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>
    <style>
    .has-error{
        color:  red;
    }
    </style>
    <link rel="stylesheet" id="ayecode-ui-css" href="Content/wp-content/plugins/userswp/vendor/ayecode/wp-ayecode-ui/assets/css/ayecode-ui-compatibility62d0.css?ver=4.5.3" type="text/css" media="all" />
    <style id="ayecode-ui-inline-css" type="text/css">

        body.modal-open #wpadminbar {
            z-index: 999
        }
    </style>
    <link rel="stylesheet" id="wp-block-library-css" href="/Content/wp-includes/css/dist/block-library/style.minc225.css?ver=5.4.1" type="text/css" media="all" />
    <link rel="stylesheet" id="dashicons-css" href="/Content/wp-includes/css/dashicons.minc225.css?ver=5.4.1" type="text/css" media="all" />
    <link rel="stylesheet" id="everest-forms-general-css" href="/Content/wp-content/plugins/everest-forms/assets/css/everest-forms28ad.css?ver=1.6.6.1" type="text/css" media="all" />
    <link rel="stylesheet" id="font-awesome-css" href="/Content/use.fontawesome.com/releases/v5.15.3/css/all4efe.css?wpfas=true" type="text/css" media="all" />
    <link rel="stylesheet" id="flash-style-css" href="/Content/wp-content/themes/VLTK2/stylec225.css?ver=5.4.1" type="text/css" media="all" />
    <link rel="stylesheet" id="responsive-css" href="/Content/wp-content/themes/VLTK2/css/responsive.minc225.css?ver=5.4.1" type="text/css" media="" />
    <link rel="stylesheet" id="swiper-css" href="/Content/wp-content/themes/VLTK2/css/swiper.minc225.css?ver=5.4.1" type="text/css" media="" />
    <link rel="stylesheet" id="kirki-styles-flash_config-css" href="/Content/wp-content/themes/VLTK2/inc/kirki/assets/css/kirki-styles90c0.css?ver=3.0.35.3" type="text/css" media="all" />
    <style id="kirki-styles-flash_config-inline-css" type="text/css">
        body {
            font-family: Montserrat, Helvetica, Arial, sans-serif;
            font-weight: 400;
        }
        form
{
width: 100% !important;
}
    </style>
    <script type="text/javascript" src="/Content/wp-includes/js/jquery/jquery4a5f.js?ver=1.12.4-wp"></script>
    <script type="text/javascript" src="/Content/wp-includes/js/jquery/jquery-migrate.min330a.js?ver=1.4.1"></script>
    <script type="text/javascript" src="/Content/wp-content/plugins/userswp/vendor/ayecode/wp-ayecode-ui/assets/js/select2.min1cf2.js?ver=4.0.11"></script>
    <script type="text/javascript" src="/Content/wp-content/plugins/userswp/vendor/ayecode/wp-ayecode-ui/assets/js/bootstrap.bundle.min62d0.js?ver=4.5.3"></script>
    <script type="text/javascript" src="/Content/wp-content/plugins/userswp/assets/js/users-wp.minafb9.js?ver=1.2.2.16"></script>
</head>
<body class="page-template-default page page-id-93 everest-forms-no-js uwp_page uwp_register_page non-transparent left-logo-right-menu right-sidebar">
    <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "104131528359832");
      chatbox.setAttribute("attribution", "biz_inbox");
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v10.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0" nonce="Z96YjUcD"></script>
    


    <div id="page" class="site">
        <a class="skip-link screen-reader-text" href="#content">Skip to content</a>


        <header id="masthead" class="site-header" role="banner">
            <div class="header-top">
                <div class="tg-container">
                    <div class="tg-column-wrapper clearfix">
                        <div class="left-content">
                        </div>
                        <div class="right-content">
                        </div>
                    </div>
                </div>
            </div>

            <div class="header-bottom">
                <div class="tg-container">

                    <div class="logo">

                        <div class="logo-text site-branding">
                            <p class="site-title"><a href="index.html" rel="home">Võ Lâm Truyền Kỳ II</a></p>
                            <p class="site-description">Hào Kiệt Lôi Tranh</p>
                        </div>
                    </div>
                    <div class="site-navigation-wrapper">
                        <nav id="site-navigation" class="main-navigation" role="navigation">
                            <div class="menu-toggle">
                                <i class="fa fa-bars"></i>
                            </div>
                            <div class="menu-menu-chinh-container">
                                <ul id="primary-menu" class="menu">
                                    <li id="menu-item-47" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-47"><a href="index.html">Trang Chủ</a></li>
                                    <li id="menu-item-48" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-48">
                                        <a href="indexd079.html?page_id=45">Tin Tức</a>
                                        <ul class="sub-menu">
                                            <li id="menu-item-49" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-49"><a href="index3f7b.html?cat=2">Cẩm Nang</a></li>
                                            <li id="menu-item-50" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-50"><a href="indexc728.html?cat=7">Môn Phái</a></li>
                                            <li id="menu-item-51" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-51"><a href="index81ea.html?cat=3">Cần Biết</a></li>
                                        </ul>
                                    </li>
                                    <li id="menu-item-52" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-52"><a href="https://www.facebook.com/jx2.animal">FanPage</a></li>
                                    <li id="menu-item-133" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-has-children menu-item-133">
                                        <a href="profile.php">Tài Khoản</a>
                                        <ul class="sub-menu">
                                            <li id="menu-item-134" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-134"><a href="profile.php">Thông Tin Tài Khoản</a></li>
                                            <li id="menu-item-136" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-93 current_page_item menu-item-136"><a href="register.php" aria-current="page">Đăng Kí</a></li>
                                            <li id="menu-item-135" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-135"><a href="login.php">Đăng Nhập</a></li>
                                            <li id="menu-item-140" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-140"><a href="changepwd.php">Đổi Mật Khẩu</a></li>
                                            <li id="menu-item-137" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-137"><a href="forgotpwd.php">Quên Mật Khẩu?</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </nav><!-- #site-navigation -->


                    </div>

                    <div class="header-action-container">
                        <div class="search-wrap">
                            <div class="search-icon">
                                <i class="fa fa-search"></i>
                            </div>
                            <div class="search-box">

                                <form role="search" method="get" class="searchform" action="localhost">
                                    <label>
                                        <input type="search" class="search-field" placeholder="Search &hellip;" value="" name="s" />
                                    </label>
                                    <button type="submit" class="search-submit btn search-btn"><span class="screen-reader-text">Search</span><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header><!-- #masthead -->




        <div id="content" class="site-content">
        <div class="tg-container">

    
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">

            
<article id="post-95" class="post-95 page type-page status-publish hentry">

    
    <div class="entry-content">
        <div class="uwp-account-class bsui sdel-f2aee091" ><div class="uwp_widgets uwp_widget_account"><div class="uwp_page">    <div class="container h-100">
        <div class="row h-100 height-auto">
            <div class="col-lg-3 h-100 height-auto px-0">
                <div class="navbar-light h-100 height-auto">
                    <div class="bg-light pt-5 h-100">
                        <div class="d-flex justify-content-center flex-column align-items-center">
                            <div class="card shadow-0 border-0 mw-100 bg-transparent">
<div class="card-body  mt-xl-0 pt-0">

    <div class="row justify-content-center">

        <div class="col  text-center tofront ">
                        <img class="rounded-circle shadow border border-white border-width-4 p-0" src="http://1.gravatar.com/avatar/12eb07a83db84a511663eec974ead628?s=150&amp;r=g&amp;d=http://jx2.xyz/Content/wp-content/plugins/userswp/assets/images/no_profile.png" alt="Hình đại diện của người dùng" height="150" width="150">
            
                            <div class="card-img-overlay d-flex p-0">
                    <a href="#" class="btn btn-sm uwp-banner-change-icon btn-outline-secondary btn-circle border-0 align-self-end mx-auto"  data-toggle="tooltip"  data-original-title="Cập nhật hình ảnh hồ sơ"  onclick="uwp_profile_image_change('avatar');return false;"  ><i class="fas fa-camera fa-fw" ></i></a>
                </div>
                    </div>

    </div>

</div>

</div><a href="#" class="mt-0 text-decoration-none font-weight-bold">@<?php echo $user['username'] ?></a>
                        </div>
                        <div class="d-flex justify-content-center nav mt-0">
                                <ul class="navbar-nav m-0 p-0 mt-3 list-unstyled flex-lg-column flex-row flex-wrap" aria-labelledby="account_settings">
                    <li class="nav-item m-0 p-0 list-unstyled mx-md-2 mx-2">
                <a class="nav-link text-decoration-none uwp-account-account " href="profile.php">
                    <i class="fas fa-user mr-1 fa-fw"></i>Chỉnh sửa tài khoản                </a>
            </li>
                        <li class="nav-item m-0 p-0 list-unstyled mx-md-2 mx-2">
                <a class="nav-link text-decoration-none uwp-account-change-password  active" href="changepwd.php">
                    <i class="fas fa-asterisk mr-1 fa-fw"></i>Đổi mật khẩu                </a>
            </li>
                        <li class="nav-item m-0 p-0 list-unstyled mx-md-2 mx-2">
                <a class="nav-link text-decoration-none uwp-account-notifications " href="#">
                    <i class="fas fa-envelope mr-1 fa-fw"></i>Thông báo                </a>
            </li>
                        <li class="nav-item m-0 p-0 list-unstyled mx-md-2 mx-2">
                <a class="nav-link text-decoration-none uwp-account-privacy " href="#">
                    <i class="fas fa-lock mr-1 fa-fw"></i>Riêng tư                </a>
            </li>
                        <li class="nav-item m-0 p-0 list-unstyled mx-md-2 mx-2">
                <a class="nav-link text-decoration-none uwp-account-delete-account " href="#">
                    <i class="fas fa-user-times mr-1 fa-fw"></i>Xóa tài khoản                </a>
            </li>
                        <li class="nav-item m-0 p-0 list-unstyled mx-md-2 mx-2">
                <a class="nav-link text-decoration-none uwp-account-logout " href="logout.php">
                    <i class="fas fa-sign-out-alt mr-1 fa-fw"></i>Đăng xuất                </a>
            </li>
                </ul>
                            </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="pl-lg-4 pl-sm-0 h-100 pt-5 pb-lg-0 pb-3">
                    <h3 class="mb-lg-5 mb-4">Đổi mật khẩu<br><div class="has-error"><?php echo (isset($update['pwd_3']))?$update['pwd_3']:'' ?></div></h3>
                    <form class="uwp-account-form uwp_form mt-3" method="post" enctype="multipart/form-data" style="background: #ff000000;">
                <div data-argument="old_password" class="form-group"  >                    
                    <label  for="old_password"  class="sr-only  " >Mật Khẩu Cấp 2 </label><div class="has-error"><?php echo (isset($errors['pwd_2']))?$errors['pwd_2']:'' ?></div>
                    <div class="input-group"  ><input type="password"  name="old_password"  id="old_password"  placeholder="Nhập mật khẩu cấp 2"  title="Mật Khẩu Cũ"  required  class="form-control "  ><div class="input-group-append "><span class="input-group-text c-pointer px-3" 
onclick="var $el = jQuery(this).find('i');$el.toggleClass('fa-eye fa-eye-slash');
var $eli = jQuery(this).parent().parent().find('input');
if($el.hasClass('fa-eye'))
{$eli.attr('type','text');}
else{$eli.attr('type','password');}"
><i class="far fa-fw fa-eye-slash"></i></span></div></div></div><div data-argument="password" class="form-group"  ><label  for="password"  class="sr-only  " ><span class="text-danger">*</span></label><div class="has-error"><?php echo (isset($errors['pwd']))?$errors['pwd']:'' ?></div><div class="input-group"  ><input type="password"  name="new_password"  id="password"  placeholder="Mật Khẩu Mới"  title="Mật Khẩu Mới"  required  class="form-control "  ><div class="input-group-append "><span class="input-group-text c-pointer px-3" 
onclick="var $el = jQuery(this).find('i');$el.toggleClass('fa-eye fa-eye-slash');
var $eli = jQuery(this).parent().parent().find('input');
if($el.hasClass('fa-eye'))
{$eli.attr('type','text');}
else{$eli.attr('type','password');}"
><i class="far fa-fw fa-eye-slash"></i></span></div></div></div><div data-argument="confirm_password" class="form-group"  ><label  for="confirm_password"  class="sr-only  " >Nhập Lại Mật Khẩu <span class="text-danger">*</span></label><div class="input-group"  ><input type="password"  name="confirm_password"  id="confirm_password"  placeholder="Nhập Lại Mật Khẩu"  title="Nhập Lại Mật Khẩu"  required  class="form-control "  ><div class="input-group-append "><span class="input-group-text c-pointer px-3" 
onclick="var $el = jQuery(this).find('i');$el.toggleClass('fa-eye fa-eye-slash');
var $eli = jQuery(this).parent().parent().find('input');
if($el.hasClass('fa-eye'))
{$eli.attr('type','text');}
else{$eli.attr('type','password');}"
><i class="far fa-fw fa-eye-slash"></i></span></div></div></div><input type="hidden" name="uwp_change_nonce" value="15fe4f46f7" />                <input name="uwp_change_submit" class="btn btn-primary btn-block text-uppercase" value="Đổi mật khẩu" type="submit">
            </form>
            
        <script>
           jQuery( document ).ready( function( $ ) {
                // Binding to trigger uwp_checkPasswordStrength
                $( 'body' ).on( 'keyup', 'input[name=password], input[name=confirm_password]',
                    function( event ) {
                        uwp_checkPasswordStrength(
                            $('input[name=password]'),         // First password field
                            $('input[name=confirm_password]'), // Second password field
                            $('#uwp-password-strength'),           // Strength meter
                            $('input[type=submit]'),           // Submit button
                            ['black', 'listed', 'word']        // Blacklisted words
                        );
                    }
                );
            });
        </script></div>
    </div><!-- .entry-content -->

    
    
</article><!-- #post-## -->

        </main><!-- #main -->
    </div>
    


                <aside id="secondary" class="widget-area" role="complementary">


                    <section id="recent-posts-2" class="widget widget_recent_entries">
                        <h3 class="widget-title">Bài viết mới</h3>      <ul>
                            <li>
                                <a href="indexe4c6.html?p=210">Lưu ý về tài khoản trên Jx2 Animal</a>
                            </li>
                            <li>
                                <a href="indexf45e.html?p=196">Tải &#038; Cài Đặt Game JX2</a>
                            </li>
                            <li>
                                <a href="index146c.html?p=186">Khai Mở Máy Chủ. Đua Top Nhận Thưởng</a>
                            </li>
                            <li>
                                <a href="indexada0.html?p=168">Hướng Dẫn Nạp Xu ( Kim Phiếu ) 10k = 1000 xu. Gấp 10 lần VNG</a>
                            </li>
                            <li>
                                <a href="index6c46.html?p=32">Nga My</a>
                            </li>
                        </ul>
                    </section><div class="end"></div><section id="categories-2" class="widget widget_categories">
                        <h3 class="widget-title">Chuyên mục</h3>        <ul>
                            <li class="cat-item cat-item-2">
                                <a href="index3f7b.html?cat=2">Cẩm Nang</a>
                            </li>
                            <li class="cat-item cat-item-3">
                                <a href="index81ea.html?cat=3">Cần Biết</a>
                            </li>
                            <li class="cat-item cat-item-4">
                                <a href="indexaa1e.html?cat=4">Cơ Bản</a>
                            </li>
                            <li class="cat-item cat-item-6">
                                <a href="indexb0b7.html?cat=6">Đặc Trưng</a>
                            </li>
                            <li class="cat-item cat-item-7">
                                <a href="indexc728.html?cat=7">Môn Phái</a>
                            </li>
                            <li class="cat-item cat-item-5">
                                <a href="indexb946.html?cat=5">Nhiệm Vụ</a>
                            </li>
                        </ul>
                    </section><div class="end"></div>
                    <a href="index.html" title="" class="TroVeTrangChu">Trở về trang chủ</a>
                    <a href="index3f7b.html?cat=2" title="" class="CamNangTanThu">Cẩm nang tân thủ</a>
                </aside><!-- #secondary -->

            </div><!-- .tg-container -->
        </div><!-- #content -->



        <footer id="colophon" class="footer-layout site-footer" role="contentinfo">
            <div id="footer-main">
                <div class="footer-link">
                    <ul>
                        <li><a href="#">Điều khoản sử dụng</a></li>
                        <li>|</li>
                        <li><a href="#">Bảo mật tài khoản</a></li>
                        <li>|</li>
                        <li><a href="#">Hướng dẫn cài đặt & gỡ bỏ</a></li>
                        <li>|</li>
                        <li><a href="#">Thanh toán</a></li>
                    </ul>
                </div>
                <div id="logo-kingsoft"></div>
                <div class="content-footer">
                    <p>© Bản Quyền Trò Chơi Thuộc Công Ty Kingsoft.</p>
                    <p>Jx2 Animal Phân Phối Bản Không Chính Thức Có Sửa Đổi.</p>
                    <p>Xem Tốt Nhất Ở Độ Phân Giải 1300 x 768 Trên Trình Duyệt Chrome Và FireFox</p>
                </div>
            </div>
        </footer><!-- #colophon -->



        <div id="Share">
            <div class="fb-share-button" data-href="http://facebook.com/jx2animal" data-layout="box_count" data-size="small"></div>
            <a href="#masthead" id="scroll-up"><i class="fa fa-chevron-up"></i></a>
        </div>
    </div><!-- #page -->

    
    <style>
        html {
            font-size: 16px;
        }
    </style>
    
    </form>
    
    <script type="text/javascript" src="/Content/wp-content/themes/VLTK2/js/jquery.nav.minc225.js?ver=5.4.1"></script>
    <script type="text/javascript" src="/Content/wp-content/themes/VLTK2/js/flashc225.js?ver=5.4.1"></script>
    <script type="text/javascript" src="/Content/wp-content/themes/VLTK2/js/navigation.minc225.js?ver=5.4.1"></script>
    <script type="text/javascript" src="/Content/wp-content/themes/VLTK2/js/skip-link-focus-fix4a7d.js?ver=20151215"></script>
    <script type="text/javascript" src="/Content/wp-content/themes/VLTK2/js/swiper.jqueryc225.js?ver=5.4.1"></script>
    <script type="text/javascript" src="/Content/wp-includes/js/wp-embed.minc225.js?ver=5.4.1"></script>
    <script type="text/javascript" src="/Content/wp-content/themes/VLTK2/inc/kirki/modules/webfont-loader/vendor-typekit/webfontloader8e5e.js?ver=3.0.28"></script>
    
    <script type="text/javascript" src="/Content/wp-admin/js/password-strength-meter.minc225.js?ver=5.4.1"></script>
<script type="text/javascript" src="Content/wp-content/themes/VLTK2/inc/kirki/modules/webfont-loader/vendor-typekit/webfontloader8e5e.js?ver=3.0.28"></script>
    <script type="text/javascript">
        WebFont.load({ google: { families: ["Montserrat:400:cyrillic,cyrillic-ext,devanagari,greek,greek-ext,khmer,latin,latin-ext,vietnamese,hebrew,arabic,bengali,gujarati,tamil,telugu,thai"] } });
    </script>
    <script async defer crossorigin="anonymous" src="../connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v7.0&appId=347359745616234&autoLogAppEvents=1"></script>
    <div style="position:fixed; top:150px; z-index:9999;">
        <a href="index3f7b.html?cat=2" target="_blank" class="tanthu"></a>
    </div>
</body>
</html>
