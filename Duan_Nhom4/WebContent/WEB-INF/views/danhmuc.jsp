<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template| Home :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body>
<div class="header">

<<<<<<< HEAD:Duan_Nhom4/WebContent/danhmuc.jsp
		<div class="container">
			
			<div class="logo">
            <h1 ><a href="index.html"><b>F<br>P<br>T</b>Thư Viện<span>Cao đẳng FPT polytechnic</span></a></h1>
				
			</div>
			<div class="head-t">
				<ul class="card">
				  <li></li>
					<li><a href="login.html" ><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
					<li></li>
					<li></li>
				</ul>	
			</div>
			
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>	
			</div>
		

				<div class="nav-top">
					<nav class="navbar navbar-default">
					
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						
=======
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="demo.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  Trang Chủ</a>
  
   <a href="quanlynhanvien.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  Quản Lý Nhân Viên</a>
  <a href="themnv.html" class="w3-bar-item w3-button w3-padding w3-blue" >Thêm Nhân Viên</a>
    <a href="sinhvien.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Quản Lý Sinh Viên</a>
    
    <a href="themsv.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm Sinh Viên</a>
    
    <a href="sach.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bullseye fa-fw"></i>  Quản Lý Sách</a>
    
    <a href="themsach.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm Sách</a>
    
    <a href="danhmuc.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-diamond fa-fw"></i>  Quản Lý danh mục</a>
    
    <a href="themdanhmuc.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm danh mục </a>
    
    <a href="Ma.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bell fa-fw"></i>  Quản Lý Mã</a>
    
    <a href="themma.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm Mã</a>
    
     <a href="dmls.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bell fa-fw"></i>  Quản Lý Danh Mục Loại Sách</a>
    <a href="them_dmls.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm Danh Mục Loại Sách</a>
    <a href="muontra.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bank fa-fw"></i>  Quản Lý Mượn Trả</a>
    <a href="themmuontra.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm Mượn trả</a>
    <a href="muontract.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-history fa-fw"></i>  Quản Lý mượn trả chi tiết </a>
    <a href="them_mtct.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm mượn trả chi tiết </a>
    
    
  </div>
</nav>
>>>>>>> 376b44159933199956f79d4c59895bd32fada5fd:Duan_Nhom4/WebContent/WEB-INF/views/danhmuc.jsp

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li class=" active"><a href="index.html" class="hyper "><span>Home</span></a></li>	
							
							<li class="dropdown ">
								<a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span>Sách<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
			
												<li><a href="cntt.html"><i class="fa fa-angle-right" aria-hidden="true"></i>CNTT</a></li>
												<li><a href="tienganh.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Tiếng Anh</a></li>

										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="marketing.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Marketing</a></li>
												<li><a href="marketing.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Du lich</a></li>

										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="cntt.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Tài liệu dự án đồ án</a></li>
												<li><a href="tienganh.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Tài liệu tham khảo</a></li>

										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="kitchen.html"><img src="images/sach1.png" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							<li class="dropdown">
							
								<a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span>Nội quy <b class="caret"></b></span></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="noiquy.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Giờ làm việc </a></li>

										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="noiquy.html"> <i class="fa fa-angle-right" aria-hidden="true"></i>Thủ tục mượn trả sách</a></li>

										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="noiquy.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Thủ tục đăng ký thẻ thành viên</a></li>

										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="care.html"><img src="images/sach1.png" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span>Tra cứu tài liệu<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi multi2">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="muontra.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Lịch sử mượn sách</a></li>
		
											</ul>
										
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="thanhly.html"><i class="fa fa-angle-right" aria-hidden="true"></i>sách thanh lý</a></li>

										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="muontra.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Vi phạm</a></li>

										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="hold.html"><img src="images/sach1.png" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							
							<li><a href="lienhe.html" class="hyper"> <span>Liên hệ</span></a></li>
							
						</ul>
					</div>
					</nav>
					 <div class="cart" ></div>
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>
  <!---->
<div data-vide-bg="video/video">
    <div class="container">
		<div class="banner-info">
			<h3>Nơi Hội Tụ Của Tri Thức </h3>	
			<div class="search-form">
				<form action="#" method="post">
					<input type="text" placeholder="Tìm kiếm..." name="Tìm kiếm...">
					<input type="submit" value=" " >
				</form>
			</div>		
		</div>	
    </div>
</div>

    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="js/jquery.vide.min.js"></script>

<!--content-->
<div class="content-top ">
	<div class="container ">
		<div class="spec ">
			<h3>Sách Hay Trong Tháng</h3>
			<div class="ser-t">
				<b></b>
				<span><i></i></span>
				<b class="line"></b>
			</div>
		</div>
			<div class="tab-head ">
				<nav class="nav-sidebar">
					<ul class="nav tabs ">
					  <li class="active"><a href="#tab1" data-toggle="tab">CNTT</a></li>
					  <li class=""><a href="#tab2" data-toggle="tab">Du Lịch</a></li> 
					  <li class=""><a href="#tab3" data-toggle="tab">Marketing</a></li>  
					  <li class=""><a href="#tab4" data-toggle="tab">Tiếng Anh</a></li>
					</ul>
				</nav>
				<div class=" tab-content tab-content-t ">
					<div class="tab-pane active text-style" id="tab1">
						<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">								
									<a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
										<img src="images/cn15.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hot</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
										<span title="Java concurrency in practice"><h6>Java concurrency in practice</h6></span>						
										</div>
										
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal2" class="offer-img">
										<img src="images/cn2.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hot</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>định kiểu web với css</h6>							
										</div>
										
											
											
										
												<div class="add">
										   
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal3" class="offer-img">
										<img src="images/cn3.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hot</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>PHP and MYSQL</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
										<img src="images/cn4.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hot</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Code complete</a></h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>
					</div>
					<div class="tab-pane  text-style" id="tab2">
						<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal5" class="offer-img">
										<img src="images/dl1.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Non nước Việt Nam</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal6" class="offer-img">
										<img src="images/dl2.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Địa lý du lịch</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal7" class="offer-img">
										<img src="images/dl3.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Tuyên điểm du lịch Việt Nam</h6>							
										</div>
										
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal8" class="offer-img">
										<img src="images/dl4.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>xuất khẩu thông qua du lịch</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>		  
					</div>
					<div class="tab-pane  text-style" id="tab3">
						<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal9" class="offer-img">
										<img src="images/m1.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>13 Nguyên Tắc Nghĩ Giàu làm giàu</h6>							
										</div>
							
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal10" class="offer-img">
										<img src="images/m2.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Người Bán Hàng Vĩ Đại Nhất thế giới (tập 1)</h6>							
										</div>
								
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal11" class="offer-img">
										<img src="images/m3.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6> Người Bán Hàng Vĩ Đại Nhất Thế Giới (Tập 2)</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal12" class="offer-img">
										<img src="images/m4.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Quảng Cáo Không Nói Láo Phần 1</h6>							
										</div>
							
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>		  
					</div>
					<div class="tab-pane text-style" id="tab4">
							<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal13" class="offer-img">
										<img src="images/t1.jpg" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>130 đề mục ngữ pháp tiếng Anh</h6>							
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m ">
									<a href="#" data-toggle="modal" data-target="#myModal14" class="offer-img">
										<img src="images/t2.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Bài Tập Thành Ngữ Tiếng Anh</h6>							
										</div>
								
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m ">
									<a href="#" data-toggle="modal" data-target="#myModal15" class="offer-img">
										<img src="images/t3.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Vừa lười vừa bận vẫn giỏi tiếng Anh</h6>							
										</div>
						
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal16" class="offer-img">
										<img src="images/t4.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Hót</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Cấp tốc chinh phục ngữ pháp tiếng Anh căn bản</h6>							
										</div>
							
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>
					</div>
				</div>
			</div>
		
	</div>
	</div>
<!--content-->
<div class="content-mid">
	<div class="container">
		
		<div class="col-md-4 m-w3ls">
			<div class="col-md1 ">
				<a href="kitchen.html">
					<img src="images/co1.jpg" class="img-responsive img" alt="">
					<div class="big-sa">
						<h6>New Collections</h6>
						<h3>Season<span>ing </span></h3>
						<p>There are many variations of passages of Lorem Ipsum available, but the majority </p>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4 m-w3ls1">
			<div class="col-md ">
				<a href="hold.html">
					<img src="images/co.jpg" class="img-responsive img" alt="">
					<div class="big-sale">
						<div class="big-sale1">
							<h3>Big <span>Sale</span></h3>
							<p>It is a long established fact that a reader </p>
						</div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4 m-w3ls">
			<div class="col-md2 ">
				<a href="kitchen.html">
					<img src="images/co2.jpg" class="img-responsive img1" alt="">
					<div class="big-sale2">
						<h3>Cooking <span>Oil</span></h3>
						<p>It is a long established fact that a reader </p>		
					</div>
				</a>
			</div>
			<div class="col-md3 ">
				<a href="hold.html">
					<img src="images/co3.jpg" class="img-responsive img1" alt="">
					<div class="big-sale3">
						<h3>Vegeta<span>bles</span></h3>
						<p>It is a long established fact that a reader </p>
					</div>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--content-->
  <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="images/ba.jpg" alt="First slide"></a>
       
        </div>
        <div class="item">
          <img class="second-slide " src="images/ba1.jpg" alt="Second slide"></a>
         
        </div>
        <div class="item">
          <img class="third-slide " src="images/ba2.jpg" alt="Third slide"></a>
          
        </div>
      </div>
    
    </div><!-- /.carousel -->

<!--content-->
	<div class="product">
		<div class="container">
			<div class="spec ">
				<h3>Có thể bạn thích</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
			</div>
				<div class=" con-w3l">
							<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal17" class="offer-img">
										<img src="images/cn5.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>JavaScript</h6>							
										</div>
										
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal18" class="offer-img">
										<img src="images/cn6.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Dive Into Python 3 </h6>							
										</div>
										
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal19" class="offer-img">
										<img src="images/cn7.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Photoshop cs4</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal20" class="offer-img">
										<img src="images/cn8.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>MySQL </h6>							
										</div>
									
									</div>
								</div>
							</div>
							
							<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal21" class="offer-img">
										<img src="images/m5.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Sáng Tạo Thần Sầu</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal22" class="offer-img">
										<img src="images/m6.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Tỷ Phú Bán Giày (Tái Bản)</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal23" class="offer-img">
										<img src="images/m7.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Ý Tưởng Này Là Của Chúng</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal24" class="offer-img">
										<img src="images/m8.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>Dốc Hết Trái Tim</h6>							
										</div>
									
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>
		</div>
	</div>
<!--footer-->
<div class="footer">
	<div class="container">
		<div class="col-md-3 footer-grid">
			<h3>Thư viện FPT</h3>
			<p>mang tri thức đến gần bên bạn</p>
		</div>
		<div class="col-md-3 footer-grid ">
			<h3>Menu</h3>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="cntt.html">Sách </a></li>
				<li><a href="noiquy.html">Nội Quy</a></li>
				<li><a href="muontra.html">Tra cứu tài liệu</a></li>						 
				<li><a href="lienhe.html">Liên hệ</a></li> 
				
			</ul>
		</div>
		<div class="col-md-3 footer-grid ">
			<h3>Dịch vụ</h3>
			<ul>
				<li><a href="noiquy.html">Điều khoản mượn trả sách</a></li>
				<li><a href="muontra.html">Lịch sử mượn trả sách</a></li>
									 
				 
			</ul>
		</div>
		<div class="col-md-3 footer-grid">
			<h3>Tài khoản</h3>
			<ul>
				<li><a href="login.html">Đăng nhập</a></li>
				<li><a href="login.html">Đăng ký</a></li>
				<li><a href="login.html">Quên mật khẩu</a></li>
				
			</ul>
		</div>
		<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2 ><a href="index.html"><b>F<br>P<br>T</b>Thư Viện<span>Cao đẳng FPT polytechnic</span></a></h2>
				<p class="fo-para">Bạn càng đọc nhiều càng biết nhiều. Bạn càng học nhiều bạn càng biết nhiều</p>
				<ul class="social-fo">
					<li><a href="#" class=" face"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" twi"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" pin"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" dri"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				</ul>
				<div class=" address">
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-home" aria-hidden="true"></i>137 Nguyễn Thị Thập ,Đà Nẵng.</p>
					</div>
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-phone" aria-hidden="true"></i>+01689132259 , +099999999</p>	
					</div>
					<div class="col-md-4 fo-grid1">
						<p><a href="mailto:Fptpolytechnic@example.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>fptpolytechnic@example1.com</a></p>
					</div>
					<div class="clearfix"></div>
					
					</div>
			</div>
		<div class="copy-right">
			<p> &copy; 2017 Thư viện FPT. All Rights Reserved | Design by FPT polytechnic</p>
		</div>
	</div>
</div>
<!-- //footer-->

<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>
  
  <!-- product -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/cn15.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Java Concurrency in Practice</h3>
									<p class="in-para"> Sách công nghệ thông tin</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>200.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Java Concurrency in Practice là cuốn sách bao quát toàn diện và chuyên sâu Concurrency. Mỗi trang là những vấn đề từ cơ bản đến phức tạp (kèm theo giải pháp) bạn gặp hàng ngày. Nội dung trình bày rất chi tiết và khéo léo theo cách rõ ràng, súc tích, được viết cẩn thận, dễ bám sát, mạnh về áp dụng thực tế.</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
<!-- product -->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/cn2.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Định dạng kiểu web với css</h3>
									<p class="in-para"> TSách công nghệ thông tin</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>195.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Cuốn sách Định kiểu Web với CSS sẽ hướng dẫn bạn những kỹ thuật hữu ích nhất để thiết kế các trang web đáp ứng tốt nhất các yêu cầu về tính năng và trình bày giao diện. Những kỹ thuật quan trọng được đề cập tới bao gồm cách thức sử dụng các thuộc tính căn vị trí, thuộc tính hiển thị, các kỹ thuật tạo hiệu ứng nổi (floating), hủy bỏ hiệu ứng nổi (clearing) để thiết kế những trang web có tính linh hoạt cao...</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/cn3.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>PHP and MYSQL</h3>
									<p class="in-para"> Sách công nghệ thông tin</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>190.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Lập trình nâng cao PHP và MySQL là cuốn sách nối tiếp cuốn Lập trình cơ bản PHP và MySQL, trong cùng bộ sách về lập trình PHP và MySQL do Trường Đại học FPT tuyển dịch và giới thiệu. Nếu cuốn thứ nhất đưa bạn khởi động nhanh với PHP và MySQL thì cuốn thứ hai sẽ hướng dẫn bạn sử dụng các kỹ năng nâng cao để lập trình với PHP và MySQL ở mức độ chuyên sâu.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/cn4.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Code complete</h3>
									<p class="in-para"> Sách công nghệ thông tin</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>156.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Cuốn sách Code Complete 2 của tác giả Steve McConnell đối với các nhà phát triển phần mềm thì cũng nổi tiếng như cuốn Joy of Cooking dành cho các chuyên gia đầu bếp vậy. Đọc nó nghĩa là bạn yêu thích công việc của mình, bạn có thái độ nghiêm túc về cái bạn làm, và bạn muốn làm cho nó trở nên tốt hơn. Trong Code Complete, tác giả Steve ghi chú rằng lập trình viên trung bình đọc ít hơn một cuốn sách kỹ thuật mỗi năm. Và với việc đọc cuốn sách này thì đã giúp kéo bạn ra xa khỏi 90% các đồng nghiệp của còn lại. Theo hướng tốt hơn.</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/dl1.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Non nước Việt Nam</h3>
									<p class="in-para"> Sách du lịch</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>54.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU VỀ</h4>
									<p class="quick_desc"> Non Nước Việt Nam (Sách Hướng Dẫn Du Lịch):
Là một đất nước giàu tiềm năng du lịch, Việt Nam chúng ta có điều kiện trở thành một quốc gia phát triển Du lịch . Để đạt được mục tiêu đó có rất nhiều việc phải làm, trong đó đẩy mạnh công tác thông tin và xúc tiến Du lịch có một vai trò quan trọng.

Phát triển Du lịch là sự nghiệp của toàn dân, bởi vậy bên cạnh việc tuyên truyền giới thiệu Việt Nam ra nước ngoài, việc cung cấp một cách có hệ thống các thông tin cơ bản về tiềm năng Du lịch của nước ta cho nhân dân trong nước, cho kiều bào ta ở nước ngoài, cho các nhà quản lý và kinh doanh du lịch, cho các hướng dẫn viên du lịch và sinh viên khoa Du lịch các trường đại học là rất cần thiết. Với mục đích đó, cuốn sách "Non Nước Việt Nam " được tác giả biên soạn nhằm làm tài liệu hướng dẫn về Du lịch Việt Nam.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/dl2.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Địa lý du lịch</h3>
									<p class="in-para">Sách du lịch</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>69.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Phương pháp huấn luyện PISA – chương trình kiểm tra học sinh về kỹ năng lĩnh hội khoa học cho thế giới ngày mai của Unesco và OECD đang đưa nhân loại sang một kỷ nguyên giáo dục mới, định nghĩa lại từ đầu mọi khái niệm và chuẩn mực căn bản. PISA giờ là phong trào cải tiến và học hỏi rộng khắp tại các quốc gia phát triển và có ảnh hưởng sâu sắc không chỉ đối với học sinh, mà với cả những người trưởng thành.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/dl3.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Tuyên điểm du lịch Việt Nam</h3>
									<p class="in-para"> Sách du lịch</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>152.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc">Phần 1 cuốn sách "Tuyến điểm du lịch Việt Nam" của tác giả Bùi Thị Hải Yến gồm nội dung 2 chương đầu tài liệu, trình bày khái quát về điều kiện tự nhiên, tài nguyên du lịch và kết cấu hạ tầng của Việt Nam; một số tuyến, điểm du lịch của vùng du lịch Bắc bộ.</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/dl4.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>xuất khẩu thông qua du lịch</h3>
									<p class="in-para"> Sách du lịch</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>52.000 VNĐ									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Du lịch Việt Nam đang phát triển với tốc độ cao, mang lại nguồn thu đáng kể cho đất nước. Trong tổ chức hoạt động du lịch quốc tế thu ngoại tệ, nhiều vật tư, hàng hoá và dịch vụ được sử dụng để đáp ứng nhu cầu đa dạng trong suốt chuyến đi của khách quốc tế vào Việt Nam du lịch. Thực chất đây là hoạt động xuất khẩu, nhưng là xuất khẩu tại chỗ vì hàng hoá và dịch vụ không phải vượt qua biên giới quốc gia. Nhưng đến nay, loại hình xuất khẩu tại chỗ thông qua du lịch chưa được đánh giá đúng và chưa được hiểu đầy đủ.

 

Trong bối cảnh xuất khẩu theo hình thái thông thường của nước ta đã có những lúc biểu hiện xu hướng sụt giảm do nhiều nguyên nhân, thì xuất khẩu tại chỗ thông qua du lịch càng có ý nghĩa quan trọng. Nhưng hiểu thế nào cho đầy đủ nội hàm của xuất khẩu tại chỗ thông qua du lịch đang còn là một vấn đề tranh cãi, chưa thống nhất, dẫn đến nhận thức về xuất khẩu tại chỗ thông qua du lịch chưa đầy đủ và do đó chưa được chú trọng đầu tư đúng mức.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/m1.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>13 Nguyên Tắc Nghĩ Giàu Làm Giàu - Think And Grow Rich</h3>
									<p class="in-para"> Sách Marketing</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>200.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> 13 Nguyên Tắc Nghĩ Giàu Làm Giàu là cuốn sách “chỉ dẫn” duy nhất chỉ ra những nguồn lực bạn phải có để thành công. Cuốn sách sẽ giúp bạn trở nên giàu có, làm giàu thêm cho cuộc sống của bạn trên tất cả các phương diện của cuộc sống chứ không chỉ về tài chính và vật chất. Những ý tưởng trong cuốn sách Think and Grow rich – 13 nguyên tắc nghĩ giàu, làm giàu bắt nguồn từ những động lực tốt đẹp: “Thành công cá nhân” và “Quan điểm suy nghĩ tích cực”. Cuốn sách chứa đựng nhiều hơn những gì mà cuốn sách giải thích về sức mạnh của những nguyên tắc. Phần hấp dẫn nhất của cuốn sách chính là những điều phi thường, những thông điệp trong cuốn sách được viết ra từ rất lâu nhưng vẫn mang tính “thời đại”. Ông đã bàn về những quan niệm như quản lý nhóm, dịch vụ chăm sóc khách hàng hoàn hảo, những công cụ hữu hình, trí tuệ tập thể và mục tiêu cần được viết ra trước khi hành động.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/m2.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Người Bán Hàng Vĩ Đại Nhất Thế Giới (Tập 1)</h3>
									<p class="in-para"> Sách Marketing</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>195.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> "Người Bán Hàng Vĩ Đại Nhất Thế Giới" của Og Mandino là một hành trình dài về câu chuyện của Hafid, một cậu bé lạc đà nghèo, ở Jerusalem cổ đại. Người thanh niên đã học được từ một thương nhân giàu có và thành công về những bí quyết để trở thành một người bán hàng vĩ đại. Cuốn sách này được gói gọn trong mười cuốn da dê giúp bạn trở thành một Người bán hàng vĩ đại nhất thế giới, tuy nhiên nó không chỉ dạy bạn cách “bán hàng”, mà nó còn là một cuốn sách dạy bạn làm người, giúp bạn trở thành người “vĩ đại nhất” trong lĩnh vực mà mình đã chọn. Nội dung cuốn sách này được đúc rút từ những kinh nghiệm xương máu mà nhờ đó nó đã biến các ước mơ của cổ nhân thành hiện thực chứ không phải do một cá nhân nào đó tưởng tượng ra trong khi lại chưa được thực nghiệm kiểm chứng cả. Mỗi người đều có quyền tự do lựa chọn con đường để thực hiện giấc mơ của mình tuỳ thuận với nhận thức riêng của họ. Quyển sách này là một trong những con đường có thể giúp bạn đạt được ước mơ của mình. Cho đến nay, “Người bán hàng vĩ đại nhất Thế giới” được dịch ra 25 ngôn ngữ và đã bán ra hơn 50 triệu bản, trở thành cuốn sách bán chạy nhất Thế giới. "Người Bán Hàng Vĩ Đại Nhất Thế Giới" có một cốt truyện rất độc đáo và thú vị cùng văn phong tài tình và cuốn hút. Mỗi người trong chúng ta đều là một nhà kinh doanh, dù ta thuộc ngành nghề nào. Bởi vì quan trọng nhất là ta phải tiếp thị được bản thân mình cho chính mình, chỉ khi đó ta mới tìm được hạnh phúc và sự bình yên trong tâm hồn. Hãy đọc thật cẩn thận, tiếp thu và lưu từng chi tiết trong cuốn sách này, và nó sẽ giúp bất cứ người nào trở thành nhà kinh doanh tài ba nhấ</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal11" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/m3.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Người Bán Hàng Vĩ Đại Nhất Thế Giới (Tập 2) )</h3>
									<p class="in-para"> Sách Marketing</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>190.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Người Bán Hàng Vĩ Đại Nhất Thế Giới (Tập 2) ) nhanh chóng lên kệ để tiếp nối cho câu chuyện chưa có hồi kết ở tập 1. Ở cuốn đầu tiên Og Mandino đã kể về cách mà mười cuộn giấy về thành công và hạnh phúc rơi vào tay một cậu bé chăn lạc đà can đảm, khi cậu vô tình ghé vào một hang lừa tại Bethlehem đêm nọ. Cuộc đời của cậu từ đó bước sang một trang mới với tất cả sự thay đổi về nhận thức để trở thành một người bán hàng vĩ đại, một nhân cách lớn, con người rộng lượng, cảm thông, chia sẻ các mà cậu ta học được từ mười cuộn da dê.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal12" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/m4.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Quảng Cáo Không Nói Láo</h3>
									<p class="in-para"> Sách Marketing</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>156.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Có 3 lý do tại sao mọi người lại hay tin rằng “quảng cáo nói láo”: (1) Ngoài kia đang có nhiều quảng cáo thực sự đang... nói láo. Vì họ đang làm quảng cáo một cách cảm tính, thiếu khoa học và thiếu kiến thức. Vậy mới thấy, để nói thật không hề dễ. (2) Nhiều người đang nhìn quảng cáo dưới góc nhìn quá nghiêm túc (thậm chí nghiêm trọng). Quảng cáo giống Bác Ba Phi vậy, có nói quá lên một chút nhưng vẫn là sự thật, vẫn để nhắc lại những kỷ niệm đẹp để mọi người nhớ mình đã từng tin và dùng sản phẩm ra sao. Nếu quảng cáo chỉ nói về sản phẩm thì chẳng khác gì… phim tài liệu. (3) Cuối cùng, có thể bạn đang không thấu "nỗi lòng" mà quảng cáo cố nhắm tới</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal13" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/t1.jpg" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>130 đề mục ngữ pháp tiếng Anh thông dụng</h3>
									<p class="in-para"> Sách tiếng anh

</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>200.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc">Có thực sự cần học hết tất cả ngữ pháp tiếng Anh để sử dụng tiếng Anh thành thạo hay không? Câu trả lời là: Không! Rất nhiều người khi sinh sống và học tập tại môi trường nói tiếng Anh đã không bắt đầu học tiếng Anh từ việc học ngữ pháp, trẻ con khi sinh ra và lớn lên đã có thể nói sõi tiếng Anh mà không cần học ngữ pháp. Vậy tại sao chúng ta phải học hết tất cả đống ngữ pháp khô khan lằng nhằng với hàng tá quy luật phức tạp? Hãy từ bỏ ý định học tất cả ngữ pháp không cần thiết! Nắm vững 130 đề mục ngữ pháp tiếng Anh thông dụng nhất dưới đây bạn có thể “tồn tại” và sử dụng tiếng Anh trôi chảy rồi!</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal14" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/t2.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Bài Tập Thành Ngữ Tiếng Anh</h3>
									<p class="in-para"> Sách tiếng anh</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>195.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Đối với các bạn đã tiếp xúc với môn tiếng Anh và đang trong giai đoạn rèn luyện các kỹ năng để thi các chứng chỉ Anh văn, kiến thức về các thành ngữ tiếng Anh là một trong những phần cần thiết nhưng cũng không dễ dàng học được.</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal15" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/t3.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Vừa lười vừa bận vẫn giỏi tiếng Anh</h3>
									<p class="in-para"> Sách tiếng anh</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>190.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Cuốn sách “Vừa lười vừa bận vẫn giỏi tiếng Anh” được thiết kế như một sản phẩm học bằng âm thanh, sao cho ai cũng có thể học được, sách cũng hiệu quả cho cả người muốn học để giao tiếp thực tế trong đời sống và trong công việc.</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal16" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/t4.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Cấp tốc chinh phục ngữ pháp tiếng Anh căn bản</h3>
									<p class="in-para"> Sách tiếng anh</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>156.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Mỗi đơn vị bài học là chương trình học tổng hợp nhiều kỹ năng được nghiên cứu, có nhiều tranh ảnh minh họa sinh động giúp các đối tượng học sinh, sinh viên liên kết hình ảnh, ngôn ngữ và tình huống giao tiếp, đồng thời tạo niềm say mê, hứng thú cho người học.</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal17" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/cn5.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>JavaScript</h3>
									<p class="in-para"> Sách công nghệ thông tin</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>198.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Học kiến thức lập trình JavaScript cơ sở thông qua các hướng dẫn thực hành từng bước. Cuốn sách hướng dẫn bạn từng bước để lập trình JavaScript. Lý tưởng cho người học làm quen với những kỹ năng lập trình cơ bản, cuốn sách này cung cấp các chỉ dẫn rõ ràng, những ví dụ thực hành thực tế, cần thiết để tạo hoặc tùy chỉnh các ứng dụng Web giàu tính tương tác bằng cách sử dụng kỹ thuật và các tính năng chính của JavaScript.</p>
									 >
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal18" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/cn6.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Dive Into Python 3</h3>
									<p class="in-para"> Sách công nghệ thông tin</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>127.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Một phần của loạt hướng dẫn cho người mới bắt đầu của Packt, cuốn sách này theo một ứng dụng mẫu, với rất nhiều ảnh chụp màn hình, để giúp bạn nắm bắt các kỹ thuật càng nhanh càng tốt. Các lập trình viên Python có kinh nghiệm vừa học vừa học cách tạo ra các ứng dụng web tương thích chéo, dựa trên cơ sở dữ liệu, tương đối chéo, được duy trì và nhìn tốt sẽ thấy cuốn sách này sử dụng nhiều nhất. Tất cả các công nghệ chính trừ Python 3 được giải thích chi tiết.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal19" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/cn7.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Photoshop cs4)</h3>
									<p class="in-para"> Sách công nghệ thông tin</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>89.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Adobe Photoshop là phần mềm hàng đầu trong ngành công nghiệp xử lý ảnh số. Cuốn sách Thiết kế hình ảnh với Photoshop CS4 cung cấp hướng dẫn trọn vẹn về những kỹ năng sử dụng công cụ thiết yếu để thiết kế và thao tác với hình ảnh dùng trong in ấn, đăng tải lên web, làm nội dung truyền thông đa phương tiện, ghép vào clip và phục vụ việc thể hiện ý tưởng sáng tạo một cách trực quan bằng hình ảnh, thông qua từng bài học và các video hướng dẫn cụ thể trong đĩa CD đính kèm.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal20" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/cn8.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>MySQL</h3>
									<p class="in-para"> Sách công nghệ thông tin</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>200.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Lập trình nâng cao PHP và MySQL là cuốn sách nối tiếp cuốn Lập trình cơ bản PHP và MySQL, trong cùng bộ sách về lập trình PHP và MySQL do Trường Đại học FPT tuyển dịch và giới thiệu. Nếu cuốn thứ nhất đưa bạn khởi động nhanh với PHP và MySQL thì cuốn thứ hai sẽ hướng dẫn bạn sử dụng các kỹ năng nâng cao để lập trình với PHP và MySQL ở mức độ chuyên sâu.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal21" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/m5.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Sáng Tạo Thần Sầu</h3>
									<p class="in-para"> Sách Marketing</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>198.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Chuyện bàn nhậu về đời sáng tạo! Một năm từ sau khi Ngấu Nghiến Nghiền Ngẫm ra mắt, Dave Trott đã trở thành “soái ca sáng tạo” đúng nghĩa với rất nhiều độc giả - khi mà hai quyển sách của ông (quyển thứ hai là Một với Một là Ba) luôn đứng trong top sách sáng tạo bán chạy nhất. Nhưng đây sẽ là quyển sách sáng tạo “nguy hiểm” nhất bạn từng đọc đấy! Nếu hai quyển sách trước là nói chuyện sáng tạo với Dave Trott bên tách trà thì quyển này chính là mấy chuyện trên bàn nhậu đó nha! Quanh tách trà thì nói chuyện khách sáo, thảo mai nhưng đã lên bàn nhậu thì bí mật mới được bật mí nè!</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal22" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/m6.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Tỷ Phú Bán Giày (Tái Bản)r</h3>
									<p class="in-para"> Sách Marketing</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>127.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Tỷ Phú Bán Giày không phải là một cuốn sách dạy cách làm giàu tuần tự theo các bước 1 - 2 - 3,... cũng không hẳn là một cuốn sách chỉ dẫn bí quyết kinh doanh hay nghệ thuật quản lý. Là hành trình tìm ra chân lý của Hạnh phúc, Đam mê và Lợi nhuận, Tỷ Phú Bán Giày kể câu chuyện về thành công và thất bại của tác giả từ những thương vụ kinh doanh được khởi nghiệp từ khi 9 tuổi. Những trang trại giun đất, làm cúc áo thủ công, bán pizza ở Harvard,... đã trở thành nền móng cho một LinkExchange và sau này là Zappos lừng danh.</p>
									
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal23" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/m7.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Ý Tưởng Này Là Của Chúng Mình</h3>
									<p class="in-para"> Sách Marketing</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>89.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc">Quyển sách nhỏ này sẽ cung cấp cho bạn nhiều thông tin hơn về thế giới của một Công Ty Quảng Cáo Sáng Tạo (Creative Agency) và những buồn nhiều, vui chẳng thiếu của một Copywriter, nghề “thời thượng” trong mắt bạn trẻ. Tôi muốn nói lên tâm sự chung của những người trong ngành Creative. Không gì bằng niềm vui sáng tạo, vui vầy với ý tưởng mà còn được trả tiền! Đôi khi cũng có chút lăn tăn, vài bi kịch tối tạo khiến ta ngập ngừng chân bước. Không sao, dân sáng tạo chỉ thiếu tình, thiếu tiền, ý tưởng không bao giờ thiếu!</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			<div class="modal fade" id="myModal24" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img src="images/m8.png" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>Dốc Hết Trái Tim - Cách Starbucks Xây Dựng Công Ty Bằng Từng Tách Cà Phê</h3>
									<p class="in-para"> Sách Marketing</p>
									<div class="price_single">
									  <span class="reducedfrom "><del></del>200.000 VNĐ</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
									<p class="quick_desc"> Thành công của Công ty Cà phê Starbucks là một trong những câu chuyện kỳ diệu nhất về kinh doanh trong suốt nhiều thập kỷ. Một cửa hàng nhỏ ven sông ở Seattle rốt cuộc lại lớn mạnh và phát triển nên hơn một ngàn sáu trăm cửa hàng trên khắp thế giới và mỗi ngày lại có thêm một cửa hàng mới mọc lên. Tuyệt vời hơn cả, Starbucks đã thành công trong việc giữ vững cam kết về chất lượng sản phẩm ưu việt và mang lại những gì tốt đẹp nhất cho nhân viên của mình. Trong Dốc hết trái tim, CEO Howard Schultz chỉ ra các nguyên tắc định hình nên hiện tượng Starbucks, chia sẻ những tri thức mà ông đúc kết được từ cuộc hành trình biến cà phê ngon thành một phần tất yếu của trải nghiệm Mỹ.</p>
									 
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
</body>
</html>
    