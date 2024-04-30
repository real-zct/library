<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">

<head>
   
    <!--====== Required meta tags ======-->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!--====== Title ======-->
    <title>LIBRARY</title>
    
    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">

    <!--====== Bootstrap css ======-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    
    <!--====== Animate css ======-->
    <link rel="stylesheet" href="assets/css/animate.css">
    
    <!--====== Magnific Popup css ======-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    
    <!--====== Slick css ======-->
    <link rel="stylesheet" href="assets/css/slick.css">
    
    <!--====== Line Icons css ======-->
    <link rel="stylesheet" href="assets/css/LineIcons.css">
    
    <!--====== Default css ======-->
    <link rel="stylesheet" href="assets/css/default.css">
    
    <!--====== Style css ======-->
    <link rel="stylesheet" href="assets/css/style.css">
    
    <!--====== Responsive css ======-->
    <link rel="stylesheet" href="assets/css/responsive.css">
 	<style type="text/css">
	<!--
		.FONT1 {
			font-family:"宋体";
			color: white;
			font-size=100px;
			background:rgba(254,132,114,0.91);
			font-weight:bold;
		}
	-->
</style>
<script language="JavaScript">
function validateMid(a){
	if(a.value==""){
	alert("内容不能为空!")}
}
</script>
  
</head>

<body>
   <%request.setCharacterEncoding("utf-8"); %>
    <!--====== PRELOADER PART START ======-->
    
    <div class="preloader">
        <div class="spin">
            <div class="cube1"></div>
            <div class="cube2"></div>
        </div>
    </div>
    
    <!--====== PRELOADER PART START ======-->
    
    <!--====== HEADER PART START ======-->
    
    <header class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg">
                        <a class="navbar-brand" href="index.jsp">
                            <div style="color:#FD7865"><img src="assets/images/logo.png" alt="Logo" height="50" width="50">&nbsp;&nbsp;&nbsp;&nbsp;L&nbsp;I&nbsp;B&nbsp;R&nbsp;A&nbsp;R&nbsp;Y&nbsp;</div>
                        </a> <!-- Logo -->
						
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="bar-icon"></span>
                            <span class="bar-icon"></span>
                            <span class="bar-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul id="nav" class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a data-scroll-nav="0" href="#home">首页</a>
                                </li>
                                <li class="nav-item">
                                    <a data-scroll-nav="0" href="#product">榜单</a>
                                </li>
                                <li class="nav-item">
                                    <a data-scroll-nav="0" href="#service">分类</a>
                                </li>
                                <li class="nav-item">
                                    <a data-scroll-nav="0" href="#showcase">推荐</a>
                                </li>
                                <li class="nav-item">
                                    <a data-scroll-nav="0" href="#team">团队</a>
                                </li>
                                <li class="nav-item">
                                    <a data-scroll-nav="0" href="#blog">评论</a>
                                </li>
                                <li class="nav-item">
                                    <a data-scroll-nav="0" href="#contact">登录</a>
                                </li>
                            </ul> <!-- navbar nav -->
                        </div>
                    </nav> <!-- navbar -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </header>
    
    <!--====== HEADER PART ENDS ======-->

    <!--====== SLIDER PART START ======-->
    
    <section id="home" class="slider-area pt-100">
        <div class="container-fluid position-relative">
            <div class="slider-active">
                <div class="single-slider">
                    <div class="slider-bg">
                        <div class="row no-gutters align-items-center ">
                            <div class="col-lg-4 col-md-5">
                                <div class="slider-product-image d-none d-md-block">
                                    <img src="assets/images/slider/1.jpg" alt="Slider">
                                    <div class="slider-discount-tag">
                                        <p>-0.64% <br> OFF</p>
                                           
                                    </div>
                                </div> <!-- slider product image -->
                            </div>
                            <div class="col-lg-8 col-md-7">
                                <div class="slider-product-content">
                                  <h1 class="slider-title mb-10" data-animation="fadeInUp" data-delay="0.3s"><span>房思琪</span> 的 <span>初恋乐园</span></h1>
                                  <p class="mb-25" data-animation="fadeInUp" data-delay="0.9s">该小说讲述了美丽的文学少女房思琪被补习班老师李国华长期性侵，最终精神崩溃的故事。</p>
                                  <a class="main-btn" href="#contact" data-animation="fadeInUp" data-delay="1.5s">发现更多 <em class="lni-chevron-right"></em></a></div> <!-- slider product content -->
                            </div>
                        </div> <!-- row -->
                    </div> <!-- container -->
                </div> <!-- single slider -->

                <div class="single-slider">
                        <div class="slider-bg">
                            <div class="row no-gutters align-items-center">
                                <div class="col-lg-4 col-md-5">
                                    <div class="slider-product-image d-none d-md-block">
                                        <img src="assets/images/slider/eyi.jpg" alt="Slider">
                                        <div class="slider-discount-tag">
                                            <p>-20% <br> OFF</p>
                                        </div>
                                    </div> <!-- slider product image -->
                                </div>
                                <div class="col-lg-8 col-md-7">
                                    <div class="slider-product-content">
                                        <h1 class="slider-title mb-10" data-animation="fadeInUp" data-delay="0.3s"><span>恶意</span></h1>
                                        <p class="mb-25" data-animation="fadeInUp" data-delay="0.9s">畅销书作家日高邦彦在出国的前一晚在家中被杀。命案现场的发现者是作家的新婚妻子，及同样身为作家的昔日同窗好友野野口修。</p>
                                        <a class="main-btn" href="#contact" data-animation="fadeInUp" data-delay="1.5s">发现更多 <em class="lni-chevron-right"></em></a></div> <!-- slider product content -->
                                </div>
                            </div> <!-- row -->
                        </div> <!-- container -->
                </div> <!-- single slider -->

                <div class="single-slider">
                        <div class="slider-bg">
                            <div class="row no-gutters align-items-center">
                                <div class="col-lg-4 col-md-5">
                                    <div class="slider-product-image d-none d-md-block">
                                        <img src="assets/images/slider/xiaoxiong.jpg" alt="Slider">
                                        <div class="slider-discount-tag">
                                            <p>-20% <br> OFF</p>
                                        </div>
                                    </div> <!-- slider product image -->
                                </div>
                                <div class="col-lg-8 col-md-7">
                                    <div class="slider-product-content">
                                        <h1 class="slider-title mb-10" data-animation="fadeInUp" data-delay="0.3s"><span>小熊和</span> 最好的 <span>爸爸</span></h1>
                                        <p class="mb-25" data-animation="fadeInUp" data-delay="0.9s">该书主要讲述小熊和爸爸一起有了许多神奇的发现的故事。</p>
                                        <a class="main-btn" href="#contact" data-animation="fadeInUp" data-delay="1.5s">发现更多<i class="lni-chevron-right"></i></a>
                                    </div> <!-- slider product content -->
                                </div>
                            </div> <!-- row -->
                        </div> <!-- container -->
                </div> <!-- single slider -->
            </div> <!-- slider active -->
            <div class="slider-social">
                <div class="row justify-content-end">
                    
                </div>
            </div>
        </div> <!-- container fluid -->
    </section>
    
    <!--====== SLIDER PART ENDS ======-->
   
    
   	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
    <!--====== PRODUCT PART START ======-->
    
    <section id="product" class="product-area pt-100 pb-130">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4">
                    <div class="collection-menu text-center mt-30">
                        <h4 class="collection-tilte">图书排行榜</h4>
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="active" id="v-pills-furniture-tab" data-toggle="pill" href="#v-pills-furniture" role="tab" aria-controls="v-pills-furniture" aria-selected="true">图书畅销榜</a>
                            
                            <a id="v-pills-decorative-tab" data-toggle="pill" href="#v-pills-decorative" role="tab" aria-controls="v-pills-decorative" aria-selected="false">新书热卖榜</a>
                            
                            <a id="v-pills-lighting-tab" data-toggle="pill" href="#v-pills-lighting" role="tab" aria-controls="v-pills-lighting" aria-selected="false">童书榜</a>                            
                            <a id="v-pills-outdoor-tab" data-toggle="pill" href="#v-pills-outdoor" role="tab" aria-controls="v-pills-outdoor" aria-selected="false">好评榜</a>                            
                            <a id="v-pills-storage-tab" data-toggle="pill" href="#v-pills-storage" role="tab" aria-controls="v-pills-storage" aria-selected="false">特价榜</a>
                        </div> <!-- nav -->
                    </div> <!-- collection menu -->
                </div>
                <div class="col-lg-9 col-md-8">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-furniture" role="tabpanel" aria-labelledby="v-pills-furniture-tab">
                            <div class="product-items mt-30">
                                <div class="row product-items-active">
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-1.jpg" alt="Product"></a>
                                               <div class="product-discount-tag">
                                                    <p>1</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">你当像鸟飞往你的山</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥59.00</span>
                                                <span class="discount-price">￥59.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-2.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                    <p>2</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">小熊和最好的爸爸</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥34.30</span>
                                                <span class="discount-price">￥35.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-3.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                    <p>3</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">人间失格</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star"></i></li>
                                                </ul>
                                                <span class="regular-price">￥25.00</span>
                                                <span class="discount-price">￥18.80</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-4.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                    <p>4</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">神奇校车·桥梁书版（全20册）</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥147.00</span>
                                                <span class="discount-price">￥150.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-5.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                    <p>5</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">正面管教(修订版)</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥38.00</span>
                                                <span class="discount-price">￥38.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                </div> <!-- row -->
                            </div> <!-- product items -->
                        </div> <!-- tab pane -->

                        <div class="tab-pane fade" id="v-pills-decorative" role="tabpanel" aria-labelledby="v-pills-decorative-tab">
                            <div class="product-items mt-30">
                                <div class="row product-items-active">
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-6.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                    <p>1</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">因为这是你的人生</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥46.80</span>
                                                <span class="discount-price">￥46.80</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-7.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>2</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">呼吸</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥42.00</span> <span class="discount-price">￥42.00</span></div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-8.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>3</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">变量：推演中国经济基本盘</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥51.75</span>
                                                <span class="discount-price">￥69.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-9.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>4</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">物种起源（绘本版）</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥94.10</span>
                                                <span class="discount-price">￥98.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-10.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>5</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">半小时漫画中国史（番外篇）</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥20.00</span>
                                                <span class="discount-price">￥39.90</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                </div> <!-- row -->
                            </div> <!-- product items -->
                        </div> <!-- tab pane -->

                        <div class="tab-pane fade" id="v-pills-lighting" role="tabpanel" aria-labelledby="v-pills-lighting-tab">
                            <div class="product-items mt-30">
                                <div class="row product-items-active">
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-11.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                    <p>1</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">神奇校车大家族</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥811.40</span>
                                                <span class="discount-price">￥828.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-12.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>2</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">神奇校车·桥梁书版</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥147.00</span>
                                                <span class="discount-price">￥150.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-13.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>3</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">写给儿童的中国历史</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥337.30</span>
                                                <span class="discount-price">￥355.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-14.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>4</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">皮特猫·3~6岁好性格养成书</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥537.20</span>
                                                <span class="discount-price">￥559.60</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-15.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>5 </p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">小鸡球球触感玩具书：全5册</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥237.50</span>
                                                <span class="discount-price">￥250.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                </div> <!-- row -->
                            </div> <!-- product items -->
                        </div> <!-- tab pane -->

                        <div class="tab-pane fade" id="v-pills-outdoor" role="tabpanel" aria-labelledby="v-pills-outdoor-tab">
                            <div class="product-items mt-30">
                                <div class="row product-items-active">
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-16.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>1</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">追风筝的人</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥28.40</span>
                                                <span class="discount-price">￥29.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-17.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>2</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">窗边的小豆豆</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥19.70</span>
                                                <span class="discount-price">￥25.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-18.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>3</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">从你的全世界路过</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥34.20</span>
                                                <span class="discount-price">￥36.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-19.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>4</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">岛上书店</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥32.60</span>
                                                <span class="discount-price">￥35.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-20.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>5 </p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">平凡的世界（全三册）</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥55.10</span>
                                                <span class="discount-price">￥79.80</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                </div> <!-- row -->
                            </div> <!-- product items -->
                        </div> <!-- tab pane -->

                        <div class="tab-pane fade" id="v-pills-storage" role="tabpanel" aria-labelledby="v-pills-storage-tab">
                            <div class="product-items mt-30">
                                <div class="row product-items-active">
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-21.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>-65.1%</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">受益一生的5本书正版书籍</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥72.00</span>
                                                <span class="discount-price">￥206.40</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-22.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>-89.3%</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">越玩越聪明的数独</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥10.20</span> <span class="discount-price">￥96.00</span></div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-23.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>-45%</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">儿童剪纸大全</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥22.00</span>
                                                <span class="discount-price">￥40.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-24.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>-81%</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">海豚宝宝翻翻乐·趣味认数</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥1.90</span>
                                                <span class="discount-price">￥19.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single-product-items">
                                            <div class="product-item-image">
                                                <a href="#contact"><img src="assets/images/product/p-25.jpg" alt="Product"></a>
                                                <div class="product-discount-tag">
                                                  <p>-81%</p>
                                                </div>
                                            </div>
                                            <div class="product-item-content text-center mt-30">
                                                <h5 class="product-title"><a href="#contact">海豚宝宝翻翻乐·颜色形状</a></h5>
                                                <ul class="rating">
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                    <li><i class="lni-star-filled"></i></li>
                                                </ul>
                                                <span class="regular-price">￥1.90</span>
                                                <span class="discount-price">￥10.00</span>
                                            </div>
                                        </div> <!-- single product items -->
                                    </div>
                                </div> <!-- row -->
                            </div> <!-- product items -->
                        </div> <!-- tab pane -->
                    </div> <!-- tab content --> 
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>
    
    <!--====== PRODUCT PART ENDS ======-->

    <!--====== SERVICES PART START ======-->
    
    <section id="service" class="services-area pt-125 pb-130">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title pb-30">
                        <h5 class="mb-15">分类</h5>
        				 <h3 class="title mb-15">丰富你的精神世界</h3>
                    </div> <!-- section title -->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="services-right mt-45">
                        <div class="services">
                            <img src="assets/images/services/services.jpg" alt="">
                            <a href="#contact" class="main-btn mt-30">更多分类 <i class="lni-chevron-right"></i></a>
                        </div> <!-- services btn -->
                    </div> <!-- services left -->
                </div>
                <div class="col-lg-6">
                    
                    <div class="services-left mt-45">
                        <div class="row justify-content-center">
                            <div class="col-md-6 col-sm-8">
                                <div class="single-services text-center">
                                    <div class="services-icon">
                                        <i class="lni-grid-alt"></i>
                                    </div>
                                    <div class="services-content mt-20">
                                        <h5 class="title mb-10"><a href="#contact"><div style="color:#FD7865">书籍/杂志/报纸</div></a></h5>
										<p>世界名著、外国小说、</p><p>心理学、青春小说、</p><p>中国现当代随笔等。</p>
								 </div>
                                </div> <!-- single services -->
                                
                                <div class="single-services text-center mt-30">
                                    <div class="services-icon">
                                        <i class="lni-ruler-pencil"></i>
                                    </div>
                                    <div class="services-content mt-20">
                                      <h5 class="title mb-10"><a href="#contact"><div style="color:#FD7865">适用年龄分类</div></a></h5>
                                      <p>0岁-2岁、3岁-6岁、</p><p>7岁-10岁、11岁-14岁、</p><p>14岁以上等。</p>
                                    </div>
                                </div> <!-- single services -->
                            </div>
                            <div class="col-md-6 col-sm-8">
                                <div class="single-services text-center mt-30">
                                    <div class="services-icon">
                                        <i class="lni-customer"></i>
                                    </div>
                                    <div class="services-content mt-20">
										<h5 class="title mb-10"><a href="#contact"><div style="color:#FD7865">品牌分类</div></a></h5>
                                      <p>UTOP/禹田文化传媒</p><p>中信出版</p><p>Children's Fun/童趣</p><p>......</p>
                                    </div>
                                </div> <!-- single services -->
                                
                                <div class="single-services text-center mt-30">
                                    <div class="services-icon">
                                        <i class="lni-support"></i>
                                    </div>
                                    <div class="services-content mt-20">
                                      <h5 class="title mb-10"><a href="#contact"><div style="color:#FD7865">出版社名称分类</div></a></h5>
                                      <p>北京日报出版社</p><p>上海科学普及出版社</p>
                                      <p>北京教育出版社</p>
										<p>......</p>
                                    </div>
                                </div> <!-- single services -->
                            </div>
                        </div> <!-- row -->
                    </div> <!-- services right -->
                </div>
				
            </div> <!-- row -->
        </div> <!-- container -->
    </section>
    
    <!--====== SERVICES PART ENDS ======-->

    <!--====== SHOWCASE PART START ======-->
    
    <section id="showcase" class="showcase-area pt-100 pb-130">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="showcase-title pt-25">
                        <h2 class="title">今日作家推荐<br>--东野圭吾</h2>
                    </div> <!-- showcase title -->
                </div> 
                <div class="col-lg-6">
                    <div class="showcase-title pt-25">
                        <p>东野圭吾（ひがしの けいご，Higashino Keigo），日本推理小说作家。代表作有《放学后》、《秘密》、《白夜行》、《以眨眼干杯》、《神探伽利略》、《嫌疑人X的献身》、《预知梦》、《湖畔》等。
1958年2月4日出生于日本大阪。毕业于大阪府立大学电气工学专业，之后在汽车零件供应商日本电装担任生产技术工程师，并进行推理小说的创作。1985年，凭借《放学后》获得第31回江户川乱步奖，从此成为职业作家，开始专职写作。
1999年《秘密》获第52届日本推理作家协会奖，2006年《嫌疑人X的献身》获134届直木奖，东野圭吾从而达成了日本推理小说史上罕见的“三冠王”。
2017年4月，第11届中国作家富豪榜子榜单“外国作家富豪榜”发布，东野圭吾问鼎外国作家富豪榜首位。 [1]  同年出版小说集《第十年的情人节》。</p>
                    </div> <!-- showcase title -->
                </div>
            </div> <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="showcase-active mt-65">
                        <div class="single-showcase">
                            <img src="assets/images/showcase/jieyou.JPG" alt="Testimonial">
           
                        </div> <!-- single showcase -->
                        <div class="single-showcase">
                            <img src="assets/images/showcase/baiye.JPG" alt="Testimonial">
                            
                        </div> <!-- single showcase -->
                    </div> <!-- showcase active -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>
    
    <!--====== SHOWCASE PART ENDS ======-->

    <!--====== TEAM PART START ======-->
    
    <section id="team" class="team-area pt-125 pb-130">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section-title text-center pb-25">
                      <h3 class="title mb-15">我们的团队</h3>
                      <p>请联系组长</p>
                    </div> <!-- section title -->
                </div>
            </div> <!-- row -->
            <div class="row justify-content-center">
                <div class="col-lg-3 col-md-6 col-sm-8">
                    <div class="single-temp text-center mt-30">
                        <div class="team-image">
                            <img src="assets/images/team/t-1.jpg"
                             alt="Team">
                        </div>
                        <div class="team-content mt-30">
                            <h4 class="title mb-10"><a href="#">战琛婷</a></h4>
                            <span>组长</span>
                            <ul class="social mt-15">
                                <li><a href="#"><i class="lni-facebook-filled"></i></a></li>
                                <li><a href="https://twitter.com/zct17350713"><i class="lni-twitter-original"></i></a></li>
                                <li><a href="https://www.instagram.com/zct0112/"><i class="lni-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div> <!-- single temp -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-8">
                    <div class="single-temp text-center mt-30">
                        <div class="team-image">
                            <img src="assets/images/team/t-2.jpg"
                             alt="Team">
                        </div>
                        <div class="team-content mt-30">
                            <h4 class="title mb-10"><a href="#">刘恬</a></h4>
                            组员<br>
                            <ul class="social mt-15">
                              <li><a href="#"><i class="lni-facebook-filled"></i></a></li>
                                <li><a href="#"><i class="lni-twitter-original"></i></a></li>
                                <li><a href="#"><i class="lni-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div> <!-- single temp -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-8">
                    <div class="single-temp text-center mt-30">
                        <div class="team-image">
                            <img src="assets/images/team/t-3.jpg"
                             alt="Team">
                        </div>
                        <div class="team-content mt-30">
                            <h4 class="title mb-10"><a href="#">杨晔</a></h4>
                            <span>组员</span>
                            <ul class="social mt-15">
                                <li><a href="#"><i class="lni-facebook-filled"></i></a></li>
                                <li><a href="#"><i class="lni-twitter-original"></i></a></li>
                                <li><a href="#"><i class="lni-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div> <!-- single temp -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-8">
                    <div class="single-temp text-center mt-30">
                        <div class="team-image">
                            <img src="assets/images/team/t-4.jpg"
                             alt="Team">
                        </div>
                        <div class="team-content mt-30">
                            <h4 class="title mb-10"><a href="#">谢泠葳</a></h4>
                            <span>组员</span>
                            <ul class="social mt-15">
                                <li><a href="#"><i class="lni-facebook-filled"></i></a></li>
                                <li><a href="#"><i class="lni-twitter-original"></i></a></li>
                                <li><a href="#"><i class="lni-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div> <!-- single temp -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>
    
    <!--====== TEAM PART ENDS ======-->


    <!--======  BLOG PART START ======-->
    
    <section id="blog" class="blog-area pt-125">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section-title text-center pb-25">
                        <h3 class="title mb-15">购买评价</h3>
                        <p>在这里买家们可以畅所欲言，发表不同的评论！</p>
                    </div> <!-- section title -->
                </div>
            </div> <!-- row -->
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog mt-30">
                        <div class="blog-image">
                            <img src="assets/images/blog/b-1.jpg" alt="Blog">
                        </div>
                        <div class="blog-content">
                            <div class="content">
                                <h4 class="title"><a href="#">配图与文字无关<br>买的书很赞！</a></h4>
                                <span>25 6, 2019</span>
                            </div>
                            <div class="meta d-flex justify-content-between align-items-center">
                                <div class="meta-admin d-flex align-items-center">
                                    <div class="image">
                                        <a href="#"><img src="assets/images/blog/admin.jpg" alt="Admin"></a>
                                    </div>
                                    <div class="admin-title">
                                        <h6 class="title"><a href="#">匿名用户</a></h6>
                                    </div>
                                </div>  <!-- meta admin -->
                                <div class="meta-icon">
                                    <ul>
                                        <li><a href="#"><i class="lni-share"></i></a></li>
                                        <li><a href="#"><i class="lni-heart"></i></a></li>
                                    </ul>
                                </div> <!-- meta icon -->
                            </div> <!-- meta -->
                        </div>
                    </div> <!-- single blog -->
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog mt-30">
                        <div class="blog-image">
                            <img src="assets/images/blog/b-2.jpg" alt="Blog">
                        </div>
                        <div class="blog-content">
                            <div class="content">
                                <h4 class="title"><a href="#">买的书质量很棒，在一个悠闲的午后读完了！</a></h4>
                                <span>22 4, 2019</span>
                            </div>
                            <div class="meta d-flex justify-content-between align-items-center">
                                <div class="meta-admin d-flex align-items-center">
                                    <div class="image">
                                        <a href="#"><img src="assets/images/blog/admin.jpg" alt="Admin"></a>
                                    </div>
                                    <div class="admin-title">
                                        <h6 class="title"><a href="#">匿名用户</a></h6>
                                    </div>
                                </div>  <!-- meta admin -->
                                <div class="meta-icon">
                                    <ul>
                                        <li><a href="#"><i class="lni-share"></i></a></li>
                                        <li><a href="#"><i class="lni-heart"></i></a></li>
                                    </ul>
                                </div> <!-- meta icon -->
                            </div> <!-- meta -->
                        </div>
                    </div> <!-- single blog -->
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog mt-30">
                        <div class="blog-image">
                            <img src="assets/images/blog/b-3.jpg" alt="Blog">
                        </div>
                        <div class="blog-content">
                            <div class="content">
                                <h4 class="title"><a href="#">寄来的书完好无损<br>开心！</a></h4>
                                <span>11 5, 2022</span>
                            </div>
                            <div class="meta d-flex justify-content-between align-items-center">
                                <div class="meta-admin d-flex align-items-center">
                                    <div class="image">
                                        <a href="#"><img src="assets/images/blog/admin.jpg" alt="Admin"></a>
                                    </div>
                                    <div class="admin-title">
                                        <h6 class="title"><a href="#">匿名用户</a></h6>
                                    </div>
                                </div>  <!-- meta admin -->
                                <div class="meta-icon">
                                    <ul>
                                        <li><a href="#"><i class="lni-share"></i></a></li>
                                        <li><a href="#"><i class="lni-heart"></i></a></li>
                                    </ul>
                                </div> <!-- meta icon -->
                            </div> <!-- meta -->
                        </div>
                    </div> <!-- single blog -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>
    
    <!--======  BLOG PART ENDS ======-->

    <!--====== CONTACT PART START ======-->
    
    <section id="contact" class="contact-area pt-115">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="contact-title text-center">
                        <h2 class="title">欢迎来到LIBRARY</h2>
                    </div> <!-- contact title -->
                </div>
            </div> <!-- row -->
            <div class="contact-box mt-70">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="contact-info pt-25">
                            <h4 class="info-title">密码登陆</h4>
                            <ul>
                                <li><!-- single info -->
                                </li>
                                <li><!-- single info -->
                              </li>
                                <li>
									//请隐藏好自己密码避免被他人知晓
									<p></p>
									<p></p>
									<!-- single info -->
                                </li>
                            </ul>
                        </div> <!-- contact info -->
                    </div> 
                    <div class="col-lg-8">
                        <div class="contact-form">
                            <form id="contact-form" action="LoginServlet" method="post" data-toggle="validator">
                                <div class="row">
                                    <div class="col-lg-6"><!-- single form -->
                                    </div>
<div class="col-lg-12">
                      <div class="single-form form-group">
                                          <div class="help-block with-errors">
                                            <input type="text" name="mid" placeholder="请输入编号" onblur="validateMid(this)">
                                          </div>
                  </div> <!-- single form -->
                                    </div>
                                    <div class="col-lg-12">
                                      <div class="single-form form-group">
                                        <input type="password" name="mpassword" placeholder="请输入密码">
                                        <div class="help-block with-errors"></div>
                                      </div>
                                      <!-- single form -->
                                      <div class="col-lg-6">
                                      <div class="single-form form-group">
                                        <input type="text" name="code" placeholder="请输入验证码"><img src="image.jsp">
                                        <div class="help-block with-errors"></div>
                                      </div>
                                    </div>
                                    <p class="form-message"></p>
                                    <div class="col-lg-12">
                                        <div class="single-form form-group">
                                            <button class="main-btn" type="submit" >登录</button>
                                            <a href="register.jsp"><button class="main-btn" type="button">注册</button>
                                        </div> <!-- single form -->
                                    </div>
                                </div> <!-- row -->
                            </form>
                        </div> <!-- row -->
                    </div> 
                </div> <!-- row -->
            </div> <!-- contact box -->
        </div> <!-- container -->
    </section>
    
    <!--====== CONTACT PART ENDS ======-->

    <!--====== FOOTER PART START ======-->
    
    <section id="footer" class="footer-area">
        <div class="container">
            <div class="footer-copyright pt-15 pb-15">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright text-center">
                            <p> <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">Copyright &copy; 2020 LIBRARY  <I> the IMIS Web Project of Group 3</I>.All rights reserved.</a>  <a href="http://www.cssmoban.com/" title="网页模板" target="_blank"></a></p>
                        </div> <!-- copyright -->
                    </div>
                </div> <!-- row -->
            </div> <!--  footer copyright -->
        </div> <!-- container -->
    </section>
    
    <!--====== FOOTER PART ENDS ======-->
    
    <!--====== BACK TO TOP PART START ======-->
    
    <a href="#" class="back-to-top"><i class="lni-chevron-up"></i></a>
    
    <!--====== BACK TO TOP PART ENDS ======-->

    
    <!--====== jquery js ======-->
    <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>

    <!--====== Bootstrap js ======-->
    <script src="assets/js/bootstrap.min.js"></script>
    
    
    <!--====== Slick js ======-->
    <script src="assets/js/slick.min.js"></script>
    
    <!--====== Magnific Popup js ======-->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>

    
    <!--====== nav js ======-->
    <script src="assets/js/jquery.nav.js"></script>
    
    <!--====== Nice Number js ======-->
    <script src="assets/js/jquery.nice-number.min.js"></script>
    
    <!--====== Main js ======-->
    <script src="assets/js/main.js"></script>

</body>

</html>
  
</html>