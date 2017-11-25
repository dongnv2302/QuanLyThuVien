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
<title>Đăng ký</title>
<script src="resources/js/jquery-1.11.1.min.js"></script>
<script src="resources/js/jquery.mycart.js"></script>
<script src="resources/js/jquery.zoomtoo.js"></script>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/font-awesome.css" rel='stylesheet' type='text/css' />
<link href="resources/css/jstarbox.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="resources/mos-css/mos-style.css" rel='stylesheet' type='text/css' />
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/easing.js"></script>
<script src="resources/js/easyResponsiveTabs.js"></script>
<script src="resources/js/jstarbox.js"></script>
<script src="resources/js/modernizr.custom.js"></script>
<script src="resources/js/move-top.js"></script>
<script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <script type="text/javascript">
            jQuery(function () {
                jQuery('.starbox').each(function () {
                    var starbox = jQuery(this);
                    starbox.starbox({
                        average: starbox.attr('data-start-value'),
                        changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                        ghosting: starbox.hasClass('ghosting'),
                        autoUpdateAverage: starbox.hasClass('autoupdate'),
                        buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                        stars: starbox.attr('data-star-count') || 5
                    }).bind('starbox-value-changed', function (event, value) {
                        if (starbox.hasClass('random')) {
                            var val = Math.random();
                            starbox.next().text(' ' + val);
                            return val;
                        }
                    });
                });
            });
        </script>

</head>
<body>
<div class="header">

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

 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Đăng ký</h3>
		<h4><a href="index.html">Home</a><label>/</label>Đăng ký</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<!--login-->

	<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Đăng ký</h3>
					<form:form action="dangkyaction.poly" modelAttribute="sinhvien">
					<p><form:errors path="*" element="ul" />ca</p>
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<form:input path="masinhvien" placeholder="User Name"/>
							
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<form:input path="tensinhvien" placeholder="Tên sinh viên"/>
							
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<form:input path="gioitinh" placeholder="Giới tính"/>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-mobile" aria-hidden="true"></i>
							<form:input path="sdt" placeholder="Số điện thoại"/>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-birthday-cake" aria-hidden="true"></i>
							<form:input path="ngaysinh" placeholder="Ngày sinh"/>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-picture-o" aria-hidden="true"></i>
							<form:input  type="file" path="hinhanh" placeholder="Hình ảnh"/>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<form:password path="matkhau" placeholder="Mật khẩu"/>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<form:password path="matkhau" placeholder="Nhập lại mật khẩu"/>
							<div class="clearfix"></div>
						</div>
						<form:button class="btn btn-success">
						Đăng ký
						</form:button>
						
					</form:form>
					<c:if test="${not empty message }">
				${message}
				
				</c:if>
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
</body>
</html>