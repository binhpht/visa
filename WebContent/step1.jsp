<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Title -->
<title>Visa Vietnam On arrival Step 1</title>

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

	$(document)
			.ready(
					function() {

						$('html').show();

						var window_w = $(window).width();
						var window_h = $(window).height();
						var window_s = $(window).scrollTop();

						$("body")
								.queryLoader2(
										{
											backgroundColor : '#f2f4f9',
											barColor : '#63b2f5',
											barHeight : 4,
											percentage : false,
											deepSearch : true,
											minimumTime : 1000,
											onComplete : function() {

												$('.animate-onscroll')
														.filter(
																function(index) {

																	return this.offsetTop < (window_s + window_h);

																})
														.each(
																function(index,
																		value) {

																	var el = $(this);
																	var el_y = $(
																			this)
																			.offset().top;

																	if ((window_s) > el_y) {
																		$(el)
																				.addClass(
																						'animated fadeInDown')
																				.removeClass(
																						'animate-onscroll');
																		setTimeout(
																				function() {
																					$(
																							el)
																							.css(
																									'opacity',
																									'1')
																							.removeClass(
																									'animated fadeInDown');
																				},
																				2000);
																	}

																});

											}
										});

					});
</script>




</head>

<body class="sticky-header-on tablet-sticky-header boxed-layout">

	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<!-- Container -->
	<div class="container">


		<!-- Header -->
			<%@include file="includes/header.jsp" %>

		<!-- /Header -->


		<section id="content"> <!-- Page Heading --> <section
			class="section page-heading animate-onscroll">

		<h1>Page with right sidebar</h1>
		<p class="breadcrumb">
			<a href="main-v1.html">Home</a> / Page With Right Sidebar
		</p>

		</section> <!-- Page Heading --> <!-- Section --> <section
			class="section full-width-bg gray-bg">

		<div class="row">


			<div class="col-lg-9-booking col-md-9 col-sm-booking">

				<h3 class="animate-onscroll no-margin-top">Booking</h3>
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
					<s:select headerValue="1 month single"
						list="strVisaTypes" id="visaTypes" name="visaTypes"
						value="1 month single" />
					<label>Visa Purpose:</label>
					<s:select  value="visaPurpose"
						headerValue="Tourism" list="strVisaPurpose" id="visaPurpose"
						name="visaPurpose" value="Tourism" />

					</br>
					</br>


					<label>Processing time</br></label>
					</br>
					<span class="yellow"><s:radio name="radiogroup"
							list="strProcessTime" value="processingTimeDefault" /> </span>
					</br>
					</br>



<script type="text/javascript">
var listDiffcultCountry = [];

<s:iterator status="status" value='strDiffCountry'>
listDiffcultCountry.push('<s:property/>');
</s:iterator>
</script>


					<div class="alert-box info">

						<p>
							<strong>*** Urgent: </strong>Passengers will receive approval
							letter in 8 hours after sending requests.
						</p>
						<p>If you send request before 9am, you will receive approval
							letter around 5pm.</p>
						<p>If you send request before 2pm, you will receive approval
							letter around 11pm on the next day</p>
						<p>
							<strong>*** Emergency: </strong>Passengers will receive approval
							letter in 4 hours after sending requests.
						</p>
						<p>If you send request before 8am, you will receive approval
							letter around 12pm</p>
						<p>If you send request before 1:30pm, you will receive
							approval letter around 5:30pm</p>
						<p>Mentioned time is GMT+7</p>


					</div>

					<s:submit value="Next " name="submit" />
				</s:form>



			</div>



			<!-- Sidebar -->
			<div style="width: 40%;" class="col-lg-3 col-md-3 col-sm-4-booking">



				<div class="banner-wrapper">
					<div class="banner donate-banner animate-onscroll">

						<h5>
							Estimated<strong> Total Cost </strong>
						</h5>
						<table id="servicePreview">
							<th>Item</th>
							<th>Detail</th>
							<tr>
								<td>Number Applicants</td>
								<td><span id="numberApplicantsResults"></span></td>
							</tr>
							<tr>
								<td>Visa type</td>
								<td><span id="visaTypesResults"></span></td>
							</tr>
							<tr>
								<td>Visa purpose</td>
								<td><span id="visaPurposeResutls"></span></td>
							</tr>
							<tr>
								<td>Processing time</td>
								<td><span id="visaServiceResults"></span></td>
							</tr>
							<tr>
								<td>Total</td>
								<td><span id="visaTotal"></span></td>
							</tr>
						</table>


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
						<li class="twitter-share"><a href="https://twitter.com/share"
							class="twitter-share-button">Tweet</a></li>
					</ul>
				</div>


			</div>
			<!-- /Sidebar -->



		</div>

		</section> <!-- /Section --> </section>




		<!-- Footer -->
		<footer id="footer"> <!-- Main Footer -->
		<div id="main-footer">

			<div class="row">

				<div class="col-lg-3 col-md-3 col-sm-6 animate-onscroll">

					<h4>Text Widget</h4>

					<p>
						Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis.
						Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel.<br>
						<br> Vivamus eget nibh. Etiam cursus leo vel metus. Nulla
						facilisi. Aenean nec eros. Vestibulum ante ipsum.
					</p>

				</div>

				<div class="col-lg-3 col-md-3 col-sm-6 animate-onscroll">

					<h4>Campaign</h4>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 menu-container">

						<ul class="menu">
							<li><a href="#">About</a></li>
							<li><a href="#">Issues</a></li>
							<li><a href="#">Media</a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="#">Shop</a></li>
							<li><a href="#">Contact us</a></li>
						</ul>

					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 menu-container">

						<ul class="menu">
							<li><a href="#">Email updates</a></li>
							<li><a href="#">Find events</a></li>
							<li><a href="#">Make calls</a></li>
							<li><a href="#">Register to vote</a></li>
							<li><a href="#">Donate</a></li>
							<li><a href="#">Volunteer</a></li>
						</ul>

					</div>

				</div>

				<div
					class="col-lg-3 col-md-3 col-sm-6 twitter-widget-area animate-onscroll">

					<h4>Latest Tweets</h4>

					<div class="twitter-widget"></div>

					<a href="#" class="button twitter-button">Follow us on twitter</a>

				</div>

				<div class="col-lg-3 col-md-3 col-sm-6 animate-onscroll">

					<h4>Like us on facebook</h4>

					<iframe
						src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FFacebookDevelopers&amp;width=270&amp;height=240&amp;colorscheme=dark&amp;header=false&amp;show_faces=true&amp;stream=false&amp;show_border=false"
						style="border: none; overflow: hidden; width: 100%; height: 240px;"></iframe>

				</div>

			</div>

		</div>
		<!-- /Main Footer --> <!-- Lower Footer -->
		<div id="lower-footer">

			<div class="row">

				<div class="col-lg-4 col-md-4 col-sm-4 animate-onscroll">

					<p class="copyright">Â© 2014 Candidate. All Rights Reserved.</p>

				</div>

				<div class="col-lg-8 col-md-8 col-sm-8 animate-onscroll">

					<div class="social-media">
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
							<li>
								<div class="fb-share-button"
									data-href="https://developers.facebook.com/docs/plugins/"
									data-type="button_count"></div>
							</li>
							<li><a href="https://twitter.com/share"
								class="twitter-share-button">Tweet</a></li>
						</ul>
					</div>

				</div>

			</div>

		</div>
		<!-- /Lower Footer --> </footer>
		<!-- /Footer -->



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