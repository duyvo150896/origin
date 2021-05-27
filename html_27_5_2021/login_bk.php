<?php 
    include "./connect.php";
    session_start();
        if (isset($_POST['login_user'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];

        if (empty($username)) {
            $errors['username'] = 'Chưa nhập tài khoản';
            }
        if (empty($password)) {
            $errors['password'] = 'Chưa nhập mật khẩu';
            }
            if (count($errors) == 0) {
            $password = md5($password);
            $sql = "SELECT * FROM account WHERE username='$username' AND password='$password'";
            $results = mysqli_query($db, $sql);
            $data = mysqli_fetch_assoc ($query);
            $checkusername = mysqli_num_rows($results);
            if ($checkusername == 1) {
                $_SESSION['success'] = $data;
                header('location: profile.php');
            }else{
                $errors['_null'] = "Nhập sai tài khoản hoặc mật khẩu";
                         
            }       
        }
    } 
?>


<!DOCTYPE html>
<html>
<head>
	<title>Đăng Nhập Jx2 Animal</title>
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
                                        <a href="index0594.html?page_id=95">Tài Khoản</a>
                                        <ul class="sub-menu">
                                            <li id="menu-item-134" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-134"><a href="index0594.html?page_id=95">Thông Tin Tài Khoản</a></li>
                                            <li id="menu-item-136" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-93 current_page_item menu-item-136"><a href="register.php" aria-current="page">Đăng Kí</a></li>
                                            <li id="menu-item-135" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-135"><a href="indexfd26.html?page_id=94">Đăng Nhập</a></li>
                                            <li id="menu-item-140" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-140"><a href="index1956.html?page_id=98">Đổi Mật Khẩu</a></li>
                                            <li id="menu-item-137" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-137"><a href="index31e8.html?page_id=96">Quên Mật Khẩu?</a></li>
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

                                <form role="search" method="get" class="searchform" action="http://127.0.0.1/">
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


                        <article id="post-93" class="post-93 page type-page status-publish hentry">


                            <div class="entry-content">
                                <div class="uwp-register-class bsui sdel-fd972aa6">
                                    <div class="uwp_widgets uwp_widget_register">
                                        <div class="uwp_page wpbs ">
                                            <div class="row">
                                                <div class="card mx-auto container-fluid p-0 border-0">
                                                    <div class="card-body">
                                                        <h3 class="card-title text-center mb-4">Đăng Nhập</h3>
                                                        
                                                        <form method="post" action="" class="uwp-registration-form uwp_form">

            <div class="has-error">
            <?php echo (isset($errors['_null']))?$errors['_null']:'' ?>
            
            
            </div>
        <div class="form-group">
            <label>Tài khoản</label><span> <div class="has-error"><?php echo (isset($errors['username']))?$errors['username']:'' ?> </span></div>
            <input type="text" name="username" class="form-control" >
        </div>
        <div class="form-group">
            <label>Mật khẩu</label><div class="has-error"><span> <?php echo (isset($errors['password']))?$errors['password']:'' ?> </span></div>
            <input type="password" name="password" class="form-control">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block text-uppercase uwp_register_submit" name="login_user">Đăng Nhập</button>
        </div>
        <p>
            Bạn chưa có tài khoản? <a href="register.php">Đăng Ký</a>
        </p>
    </form>
    </div>
    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <script>
                                        jQuery(document).ready(function ($) {
                                            // Binding to trigger uwp_checkPasswordStrength
                                            $("body").on("keyup", "input[name=password], input[name=confirm_password]",
                                                function (event) {
                                                    uwp_checkPasswordStrength(
                                                        $("input[name=password]"),         // First password field
                                                        $("input[name=confirm_password]"), // Second password field
                                                        $("#uwp-password-strength"),           // Strength meter
                                                        $("input[type=submit]"),           // Submit button
                                                        ["black", "listed", "word"]        // Blacklisted words
                                                    );
                                                }
                                            );
                                        });
                                    </script> 
                                </div>
                            </div><!-- .entry-content -->



                        </article><!-- #post-## -->

                    </main><!-- #main -->
                </div><!-- #primary -->


                <aside id="secondary" class="widget-area" role="complementary">


                    <section id="recent-posts-2" class="widget widget_recent_entries">
                        <h3 class="widget-title">Bài viết mới</h3>		<ul>
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
                        <h3 class="widget-title">Chuyên mục</h3>		<ul>
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
