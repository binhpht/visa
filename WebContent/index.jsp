<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>

<head>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Title -->
<title>Vietnam visa on arrvial</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Great+Vibes'
	rel='stylesheet' type='text/css'>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

<!-- Stylesheets -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/fontello.css" rel="stylesheet" type="text/css">
<link href="css/flexslider.css" rel="stylesheet" type="text/css">
<link href="js/revolution-slider/css/settings.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="css/responsive-calendar.css" rel="stylesheet"
	type="text/css">
<link href="css/chosen.css" rel="stylesheet" type="text/css">
<link href="jackbox/css/jackbox.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css">


<!--[if IE 9]>
			<link rel="stylesheet" href="css/ie9.css">
		<![endif]-->

<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<link href="css/jackbox-ie8.css" rel="stylesheet" type="text/css" />
			<link rel="stylesheet" href="css/ie.css">
        <![endif]-->

<!--[if gt IE 8]>
			<link href="css/jackbox-ie9.css" rel="stylesheet" type="text/css" />
		<![endif]-->

<!--[if IE 7]>
			<link rel="stylesheet" href="css/fontello-ie7.css">
		<![endif]-->

<style type="text/css">
.no-fouc {
	display: none;
}
</style>

<!-- jQuery -->
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery-ui-1.10.4.min.js"></script>

<!-- Preloader -->
<script src="js/jquery.queryloader2.min.js"></script>

<script type="text/javascript">
		$('html').addClass('no-fouc');
		
		$(document).ready(function(){
			
			$('html').show();
			
			var window_w = $(window).width();
			var window_h = $(window).height();
			var window_s = $(window).scrollTop();
			
			$("body").queryLoader2({
				backgroundColor: '#f2f4f9',
				barColor: '#63b2f5',
				barHeight: 4,
				percentage:false,
				deepSearch:true,
				minimumTime:1000,
				onComplete: function(){
					
					$('.animate-onscroll').filter(function(index){
					
						return this.offsetTop < (window_s + window_h);
						
					}).each(function(index, value){
						
						var el = $(this);
						var el_y = $(this).offset().top;
						
						if((window_s) > el_y){
							$(el).addClass('animated fadeInDown').removeClass('animate-onscroll');
							setTimeout(function(){
								$(el).css('opacity','1').removeClass('animated fadeInDown');
							},2000);
						}
						
					});
					
				}
			});
			
		});
		</script>

</head>

<body class="sticky-header-on tablet-sticky-header boxed-layout">

	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	<!-- Container -->
	<div class="container">


		<%@include file="includes/header.jsp"%>





		<section id="content">

			<!-- Section -->
			<section class="section full-width-bg">

				<div class="row">

					<div class="col-lg-9 col-md-9 col-sm-8">

						<!-- Main Slider -->
						<div class="flexslider main-flexslider animate-onscroll">

							<ul class="slides">

								<li id="main_flex_3">

									<div class="slide align-left">
										<h2>
Easy and  safe										</h2>
										<a href="step1.action" class="button big button-arrow">book now</a>
									</div>

								</li>

								<li id="main_flex_2">

									<div class="slide align-center">
										<h4 class="great-vibes">Lowest price</h4>
										<h2>guarantee!</h2>
										<a href="step1.action" class="button big button-arrow">Get Involved</a>
									</div>

								</li>

								<li id="main_flex_3">

									<div class="slide align-right">
										<h2>Many yean of experiences in tourism</h2>
									
										<a href="step1.action" class="button big button-arrow">apply now</a>
									</div>

								</li>

							</ul>

						</div>
						<!-- /Main Slider -->

					</div>


					<div class="col-lg-3 col-md-3 col-sm-4 sidebar">


						<div class="banner-wrapper">
							<div class="banner donate-banner animate-onscroll">

								<h5>
									Make a <strong>quick form</strong> here
								</h5>
								<s:form action="step2" namespace="/" theme="simple">
									<label>From country:</label>
									<s:select headerKey="United States" headerValue="United States"
										list="strCountry" id="strCountry" name="strCountry"
										value="strCountry" />
									<label>Number of Applicants:</label>
									<s:select headerKey="1 applicants" headerValue="1 applicant"
										list="strNumberApplicants" id="numberApplicants"
										name="applicantNumbers" value="defaultApplicants" />
									<label>Visa Types: </label>
									<s:select headerValue="1 month single" list="strVisaTypes"
										id="visaTypes" name="visaTypes" value="1 month single" />
									<label>Visa Purpose:</label>
									<s:select value="visaPurpose" headerValue="Tourism"
										list="strVisaPurpose" id="visaPurpose" name="visaPurpose"
										value="Tourism" />

									</br>
																		<label>Processing time</br></label>
									
<s:select value="radiogroup" headerValue="Tourism"
										list="strProcessTime" id="visaPurpose" name="radiogroup"
										value="processingTimeDefault" />

									
									</br>



									<script type="text/javascript">
var listDiffcultCountry = [];

<s:iterator status="status" value='strDiffCountry'>
listDiffcultCountry.push('<s:property/>');
</s:iterator>
</script>
</br>

<h5> Estimated fee: <span id="visaTotal"></span> </h5></br>

									<s:submit value="Next " name="submit" />
								</s:form>


							</div>
						</div>
						<div class="social-media animate-onscroll">
							<span class="small-caption">Get connected:</span>
							<ul class="social-icons">
								<li class="facebook"><a href="#" class="tooltip-ontop"
									title="Facebook"><i class="icons icon-facebook"></i></a></li>
								<li class="twitter"><a href="#" class="tooltip-ontop"
									title="Twitter"><i class="icons icon-twitter"></i></a></li>
								<li class="google"><a href="#" class="tooltip-ontop"
									title="Google Plus"><i class="icons icon-gplus"></i></a></li>
								<li class="youtube"><a href="#" class="tooltip-ontop"
									title="Youtube"><i class="icons icon-youtube-1"></i></a></li>
								<li class="flickr"><a href="#" class="tooltip-ontop"
									title="Flickr"><i class="icons icon-flickr-4"></i></a></li>
								<li class="email"><a href="#" class="tooltip-ontop"
									title="Email"><i class="icons icon-mail"></i></a></li>
							</ul>
							<ul class="social-buttons">
								<li><iframe
										src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;width&amp;layout=standard&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35"
										style="border: none; overflow: hidden; height: 21px; padding-top: 1px; width: 50px;"></iframe>
								</li>
								<li class="facebook-share">
									<div class="fb-share-button"
										data-href="https://developers.facebook.com/docs/plugins/"
										data-type="button_count"></div>
								</li>
								<li class="twitter-share"><a
									href="https://twitter.com/share" class="twitter-share-button">Tweet</a>
								</li>
							</ul>
						</div>
					</div>

				</div>

			</section>
			<!-- /Section -->




			<!-- Section -->
			<section class="section full-width-bg gray-bg">

				<div class="row">

					<div class="col-lg-9 col-md-9 col-sm-8">

						<h3 class="animate-onscroll no-margin-top">Latest news</h3>

						<!-- Blog Post -->
						<div class="blog-post big animate-onscroll">

							<div class="post-image">
								<img src="img/blog/post1.jpg" alt="">
							</div>

							<h4 class="post-title">
								<a href="blog-single-sidebar.html">Nam elit agna, endrerit
									sit amet, tincidunt ac, viverra sed</a>
							</h4>

							<div class="post-meta">
								<span>by <a href="#">admin</a></span> <span>October 01,
									2013 11:28AM</span>
							</div>

							<p>Ut tellus dolor, dapibus eget, elementum vel, cursus
								eleifend, elit. Aenean auctor wisi et urna. Aliquam erat
								volutpat. Duis ac turpis. Integer rutrum ante eu lacus.</p>

							<a href="blog-single-sidebar.html"
								class="button read-more-button big button-arrow">Read More</a>

						</div>
						<!-- /Blog Post -->
						<!-- Owl Carousel -->
						<div class="owl-carousel-container">

							<div class="owl-header">

								<h3 class="animate-onscroll">Customer satisfaction</h3>

								<div class="carousel-arrows animate-onscroll">
									<span class="left-arrow"><i class="icons icon-left-dir"></i></span>
									<span class="right-arrow"><i
										class="icons icon-right-dir"></i></span>
								</div>

							</div>

							<div class="owl-carousel" data-max-items="3">

								<!-- Owl Item -->
								<div>

									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">

										<div class="post-image">
											<img src="img/blog/post2.jpg" alt="">
										</div>

										<h4 class="post-title">
											<a href="blog-single-sidebar.html">Donec porta diam eu
												massa</a>
										</h4>

										<div class="post-meta">
											<span>by <a href="#">admin</a></span> <span>October
												01, 2013 11:28AM</span>
										</div>

										<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis
											ac turpis. Integer rutrum ante eu lacus. Vestibulum libero
											nisl, porta vel.</p>

										<a href="blog-single-sidebar.html"
											class="button read-more-button big button-arrow">Read
											More</a>

									</div>
									<!-- /Blog Post -->

								</div>
								<!-- /Owl Item -->

								<!-- Owl Item -->
								<div>

									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">

										<div class="post-image">
											<img src="img/blog/post3.jpg" alt="">
										</div>

										<h4 class="post-title">
											<a href="blog-single-sidebar.html">Vestibulum iaculis </a>
										</h4>

										<div class="post-meta">
											<span>by <a href="#">admin</a></span> <span>October
												01, 2013 11:28AM</span>
										</div>

										<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis
											ac turpis. Integer rutrum ante eu lacus. Vestibulum libero
											nisl, porta vel.</p>

										<a href="blog-single-sidebar.html"
											class="button read-more-button big button-arrow">Read
											More</a>

									</div>
									<!-- /Blog Post -->

								</div>
								<!-- /Owl Item -->

								<!-- Owl Item -->
								<div>

									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">

										<div class="post-image">
											<img src="img/blog/post4.jpg" alt="">
										</div>

										<h4 class="post-title">
											<a href="blog-single-sidebar.html">Praesent justo dolor</a>
										</h4>

										<div class="post-meta">
											<span>by <a href="#">admin</a></span> <span>October
												01, 2013 11:28AM</span>
										</div>

										<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis
											ac turpis. Integer rutrum ante eu lacus. Vestibulum libero
											nisl, porta vel.</p>

										<a href="blog-single-sidebar.html"
											class="button read-more-button big button-arrow">Read
											More</a>

									</div>
									<!-- /Blog Post -->

								</div>
								<!-- /Owl Item -->

								<!-- Owl Item -->
								<div>

									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">

										<div class="post-image">
											<img src="img/blog/post2.jpg" alt="">
										</div>

										<h4 class="post-title">
											<a href="blog-single-sidebar.html">Donec porta diam eu
												massa</a>
										</h4>

										<div class="post-meta">
											<span>by <a href="#">admin</a></span> <span>October
												01, 2013 11:28AM</span>
										</div>

										<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis
											ac turpis. Integer rutrum ante eu lacus. Vestibulum libero
											nisl, porta vel.</p>

										<a href="blog-single-sidebar.html"
											class="button read-more-button big button-arrow">Read
											More</a>

									</div>
									<!-- /Blog Post -->

								</div>
								<!-- /Owl Item -->

								<!-- Owl Item -->
								<div>

									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">

										<div class="post-image">
											<img src="img/blog/post3.jpg" alt="">
										</div>

										<h4 class="post-title">
											<a href="blog-single-sidebar.html">Vestibulum iaculis </a>
										</h4>

										<div class="post-meta">
											<span>by <a href="#">admin</a></span> <span>October
												01, 2013 11:28AM</span>
										</div>

										<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis
											ac turpis. Integer rutrum ante eu lacus. Vestibulum libero
											nisl, porta vel.</p>

										<a href="blog-single-sidebar.html"
											class="button read-more-button big button-arrow">Read
											More</a>

									</div>
									<!-- /Blog Post -->

								</div>
								<!-- /Owl Item -->

								<!-- Owl Item -->
								<div>

									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">

										<div class="post-image">
											<img src="img/blog/post4.jpg" alt="">
										</div>

										<h4 class="post-title">
											<a href="blog-single-sidebar.html">Praesent justo dolor</a>
										</h4>

										<div class="post-meta">
											<span>by <a href="#">admin</a></span> <span>October
												01, 2013 11:28AM</span>
										</div>

										<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis
											ac turpis. Integer rutrum ante eu lacus. Vestibulum libero
											nisl, porta vel.</p>

										<a href="blog-single-sidebar.html"
											class="button read-more-button big button-arrow">Read
											More</a>

									</div>
									<!-- /Blog Post -->

								</div>
								<!-- /Owl Item -->

							</div>

						</div>
						<!-- /Owl Carousel -->
						<!-- Banner Rotator -->
						<div class="banner-rotator animate-onscroll">

							<div class="flexslider banner-rotator-flexslider">

								<ul class="slides">

									<li id="flex_rotator_1">
										<div class="banner-rotator-content">
											<h5>Campaign trial</h5>
											<h2>New York</h2>
											<span class="date">December 17th</span> <a href="#"
												class="button big button-arrow">Details</a>
										</div>
									</li>

									<li id="flex_rotator_2">
										<div class="banner-rotator-content">
											<h5>Campaign trial</h5>
											<h2>Corden</h2>
											<span class="date">April 12th</span> <a href="#"
												class="button big button-arrow">Details</a>
										</div>
									</li>

									<li id="flex_rotator_3">
										<div class="banner-rotator-content">
											<h5>Campaign trial</h5>
											<h2>Redhedge</h2>
											<span class="date">June 27th</span> <a href="#"
												class="button big button-arrow">Details</a>
										</div>
									</li>

								</ul>

							</div>

						</div>
						<!-- /Banner Rotator -->

					</div>



					<!-- Sidebar -->
					<div class="col-lg-3 col-md-3 col-sm-4 sidebar">

						<!-- Featured Video -->
						<div class="sidebar-box white featured-video animate-onscroll">
							<h3>Featured Video</h3>
							<iframe width="560" height="315"
								src="//www.youtube.com/watch?v=N3_jDVkmNtc?wmode=transparent"
								allowfullscreen></iframe>
							<a href="#" class="button transparent button-arrow">More
								videos</a>
						</div>
						<!-- /Featured Video -->
						<!-- Upcoming Events -->
						<div class="sidebar-box white animate-onscroll">
							<h3>Upcoming Events</h3>
							<ul class="upcoming-events">

								<!-- Event -->
								<li>
									<div class="date">
										<span> <span class="day">25</span> <span class="month">DEC</span>
										</span>
									</div>

									<div class="event-content">
										<h6>
											<a href="event-post-v2.html">Sed in lacus ut enim</a>
										</h6>
										<ul class="event-meta">
											<li><i class="icons icon-clock"></i> 4:00 pm - 6:00 pm</li>
											<li><i class="icons icon-location"></i> 340 W 50th
												St.New York</li>
										</ul>
									</div>
								</li>
								<!-- /Event -->

								<!-- Event -->
								<li>
									<div class="date">
										<span> <span class="day">5</span> <span class="month">JAN</span>
										</span>
									</div>

									<div class="event-content">
										<h6>
											<a href="event-post-v2.html">Sed in lacus ut enim</a>
										</h6>
										<ul class="event-meta">
											<li><i class="icons icon-clock"></i> 4:00 pm - 6:00 pm</li>
											<li><i class="icons icon-location"></i> 340 W 50th
												St.New York</li>
										</ul>
									</div>
								</li>
								<!-- /Event -->

								<!-- Event -->
								<li>
									<div class="date">
										<span> <span class="day">8</span> <span class="month">JAN</span>
										</span>
									</div>

									<div class="event-content">
										<h6>
											<a href="event-post-v2.html">Sed in lacus ut enim</a>
										</h6>
										<ul class="event-meta">
											<li><i class="icons icon-clock"></i> 4:00 pm - 6:00 pm</li>
											<li><i class="icons icon-location"></i> 340 W 50th
												St.New York</li>
										</ul>
									</div>
								</li>
								<!-- /Event -->

							</ul>
							<a href="#" class="button transparent button-arrow">More
								events</a>
						</div>
						<!-- /Upcoming Events -->
						<!-- Image Banner -->
						<div class="sidebar-box image-banner animate-onscroll">
							<a href="issues.html"> <img src="img/main-issues.jpg" alt="">
								<h3>The main issues</h3> <span
								class="button transparent button-arrow">Find out more</span>
							</a>
						</div>
						<!-- /Image Banner -->
						<!-- Flickr Photos -->
						<div class="sidebar-box white flickr-photos animate-onscroll">
							<h3>Flickr Photos</h3>
							<ul class="flickr-feed">
							</ul>
						</div>
						<!-- /Flickr Photos -->
					</div>
					<!-- /Sidebar -->




				</div>

			</section>
			<!-- /Section -->

		</section>








		<!-- Back To Top -->
		<a href="#" id="button-to-top"><i class="icons icon-up-dir"></i></a>

	</div>
	<!-- /Container -->

	<!-- JavaScript -->

	<!-- Bootstrap -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<!-- Modernizr -->
	<script type="text/javascript" src="js/modernizr.js"></script>

	<!-- Sliders/Carousels -->
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>

	<!-- Revolution Slider  -->
	<script type="text/javascript"
		src="js/revolution-slider/js/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript"
		src="js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Calendar -->
	<script type="text/javascript" src="js/responsive-calendar.min.js"></script>

	<!-- Raty -->
	<script type="text/javascript" src="js/jquery.raty.min.js"></script>

	<!-- Chosen -->
	<script type="text/javascript" src="js/chosen.jquery.min.js"></script>

	<!-- jFlickrFeed -->
	<script type="text/javascript" src="js/jflickrfeed.min.js"></script>

	<!-- InstaFeed -->
	<script type="text/javascript" src="js/instafeed.min.js"></script>

	<!-- Twitter -->
	<script type="text/javascript" src="php/twitter/jquery.tweet.js"></script>

	<!-- MixItUp -->
	<script type="text/javascript" src="js/jquery.mixitup.js"></script>

	<!-- JackBox -->
	<script type="text/javascript" src="jackbox/js/jackbox-packed.min.js"></script>

	<!-- CloudZoom -->
	<script type="text/javascript" src="js/zoomsl-3.0.min.js"></script>

	<!-- Main Script -->
		<script type="text/javascript" src="js/booking.js"></script>
	    <script type="text/javascript" src="js/script.js"></script>
	    <script type="text/javascript" src="js/jshashtable.js"></script>

	<!--[if lt IE 9]>
			<script type="text/javascript" src="js/jquery.placeholder.js"></script>
			<script type="text/javascript" src="js/script_ie.js"></script>
		<![endif]-->


</body>

</html>