<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>

<html>

<head>
<sj:head />

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Title -->
<title>Full width Page | Candidate HTML Template</title>

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
<link href="css/style2.css" rel="stylesheet" type="text/css">



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
		


		<section id="content">

			<!-- Page Heading -->
			<section class="section page-heading animate-onscroll">

				<h1>Full width Page</h1>
				<p class="breadcrumb">
					<a href="main-v1.html">Home</a> / Full width Page
				</p>

			</section>
			<!-- Page Heading -->



			<!-- Section -->
			<div class="section full-width-bg gray-bg">
				<div class="containerVisa">
					<div class="headingVisa">
						<div class="col">Review contact information</div>
						<div class="colVisa">Booking detail information</div>
					</div>
					<div class="table-rowVisa">
						<div class="colVisa"
							style="text-align: left; margin: 10px 5px 15px 20px; padding: 20px 0 0 20px;">
							<label>Customer name: </label>
							<s:property value="strFullName" />
							</br> <label>Address: </label>
							<s:property value="strAddress" />
							</br> <label>Email: </label>
							<s:property value="strEmail" />
							</br> <label>Number: </label>
							<s:property value="strContactNumber" />
							</br>
						</div>
						<div class="colVisa"
							style="text-align: left; margin: 10px 5px 15px 20px; padding: 20px 0 0 20px;">
							<label> Number: </label>
							<s:property value="applicantNumbers" />
							</br> <label>Visa types: </label>
							<s:property value="visaTypes" />
							</br> <label>Visa Purpose: </label>
							<s:property value="visaPurpose" />
							</br> <label>Service: </label>
							<s:property value="radiogroup" />
							</br>
						</div>
					</div>

				</div>


				<h4></h4>




				<!-- Accordions -->
				<ul class="accordions toggles">

					<!-- Accordion -->
					<li class="accordion">

						<div class="accordion-header">
							<div class="accordion-icon"></div>
							List applicants information
						</div>

						<div class="accordion-content">

							<div class="headingVisa">
								<div class="colVisa">#</div>
								<div class="colVisa">Full name</div>
								<div class="colVisa">Gender</div>
								<div class="colVisa">Day of Birth</div>
								<div class="colVisa">Nationality</div>
								<div class="colVisa">Passport number</div>
								<div class="colVisa">Passport Expiration Date</div>
							</div>

							<s:iterator var="counter" begin="0" end="count-1"
								value="applicants" status="itStatus">
								<div class="table-rowVisa">
									<div class="colVisa">
										<strong>&nbsp; <s:property value="#itStatus.count" />
											&nbsp;

										</strong>
									</div>
									<div class="colVisa">
										<s:property value="fullName" />
									</div>
									<div class="colVisa">
										<s:property value="gender" />
									</div>
									<div class="colVisa">
										<s:property value="dayofBirth" />

									</div>
									<div class="colVisa">
										<s:property value="nationality" />

									</div>
									<div class="colVisa">
										<s:property value="passportNumber" />

									</div>
									<div class="colVisa">
										<s:property value="passportExpDate" />


									</div>

								</div>
							</s:iterator>
						</div>
						<h2>Total:</h2> <s:property value="amount"/>
						<div class="payment-options animate-onscroll">
							<ul>

								<li>
									<div class="payment-header">
										<input type="radio" name="payment-option" checked
											id="paypal-radio"> <label for="paypal-radio">PayPal
											<img src="img/shop/paypal.png" alt="">
										</label>
									</div>
									<div class="payment-content">
										<p>Make your payment directly into our bank account.
											Please use your Order ID as the payment reference. Your order
											wont be shipped until the funds have cleared in our account.</p>
									</div>
								</li>
							</ul>
							<br>
						</div> <a href="#" class="button big donate animate-onscroll">Place
							Order</a>
							<form action='payment.action' METHOD='POST'>
<input type='image' name='submit' src='https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif' border='0' align='top' alt='Check out with PayPal'/>
</form>
			</div>


			<!-- /Section -->

		</section>




		<!-- Footer -->
		<footer id="footer">

			<!-- Main Footer -->
			<div id="main-footer">

				<div class="row">

					<div class="col-lg-3 col-md-3 col-sm-6 animate-onscroll">

						<h4>Text Widget</h4>

						<p>
							Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac
							turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl,
							porta vel.<br> <br> Vivamus eget nibh. Etiam cursus leo
							vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante
							ipsum.
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
			<!-- /Main Footer -->




			<!-- Lower Footer -->
			<div id="lower-footer">

				<div class="row">

					<div class="col-lg-4 col-md-4 col-sm-4 animate-onscroll">

						<p class="copyright">© 2014 Candidate. All Rights Reserved.</p>

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
			<!-- /Lower Footer -->


		</footer>
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
	<script type="text/javascript" src="js/script.js"></script>


	<!--[if lt IE 9]>
			<script type="text/javascript" src="js/jquery.placeholder.js"></script>
			<script type="text/javascript" src="js/script_ie.js"></script>
		<![endif]-->


</body>

</html>