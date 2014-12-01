<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<head>
<meta charset="utf-8">
<title>SimpleAdmin - Dashboard</title>

<!-- Stylesheets -->
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet'>
<link rel="stylesheet" href="admin/css/style.css">

<!-- Optimize for mobile devices -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- jQuery & JS files -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="js/script.js"></script>
</head>
<body>

	<!-- TOP BAR -->
	<div id="top-bar">

		<div class="page-full-width cf">

			<ul id="nav" class="fl">

				<li class="v-sep"><a href="#"
					class="round button dark ic-left-arrow image-left">Go to
						website</a></li>
				<li class="v-sep"><a href="#"
					class="round button dark menu-user image-left">Logged in as <strong>admin</strong></a>
					<ul>
						<li><a href="#">My Profile</a></li>
						<li><a href="#">User Settings</a></li>
						<li><a href="#">Change Password</a></li>
						<li><a href="#">Log out</a></li>
					</ul></li>

				<li><a href="#"
					class="round button dark menu-email-special image-left">3 new
						messages</a></li>
				<li><a href="#"
					class="round button dark menu-logoff image-left">Log out</a></li>

			</ul>
			<!-- end nav -->


			<form action="#" method="POST" id="search-form" class="fr">
				<fieldset>
					<input type="text" id="search-keyword"
						class="round button dark ic-search image-right"
						placeholder="Search..." /> <input type="hidden" value="SUBMIT" />
				</fieldset>
			</form>

		</div>
		<!-- end full-width -->

	</div>
	<!-- end top-bar -->



	<!-- HEADER -->
	<div id="header-with-tabs">

		<div class="page-full-width cf">

			<ul id="tabs" class="fl">
				<li><a href="dashboard.html" class="active-tab dashboard-tab">Dashboard</a></li>
				<li><a href="page-full-width.html">Full width page</a></li>
				<li><a href="page-other.html">Other page elements</a></li>
			</ul>
			<!-- end tabs -->

			<!-- Change this image to your own company's logo -->
			<!-- The logo will automatically be resized to 30px height. -->
			<a href="#" id="company-branding-small" class="fr"><img
				src="images/company-logo.png" alt="Blue Hosting" /></a>

		</div>
		<!-- end full-width -->

	</div>
	<!-- end header -->



	<!-- MAIN CONTENT -->
	<div id="content">

		<div class="page-full-width cf">

			<div class="side-menu fl">

				<h3>Side Menu</h3>
				<ul>
					<li><a href="admin_getListOrder.action">List Order</a></li>
					<li><a href="#">Another link</a></li>
					<li><a href="#">A third link</a></li>
					<li><a href="#">Fourth link</a></li>
				</ul>

			</div>
			<!-- end side-menu -->

			<div class="side-content fr">

				<div class="content-module">

					<div class="content-module-heading cf">

						<h3 class="fl">List Order</h3>
						<span class="fr expand-collapse-text">Click to collapse</span> <span
							class="fr expand-collapse-text initial-expand">Click to
							expand</span>

					</div>
					<!-- end content-module-heading -->


					<div class="content-module-main">

						

					</div>
					<!-- end content-module-main -->

				</div>
				<!-- end content-module -->
<h2> Contact information</h2>
<label>Customer name: </label>
							<s:property value="customer.fullName" />
							</br> <label>Address: </label>
							<s:property value="customer.address" />
							</br> <label>Email: </label>
							<s:property value="customer.email" />
							</br> <label>Number: </label>
							<s:property value="customer.phoneNumber" />
							<h2> List applicants</h2>
<div class="headingVisa">

								<div class="colVisa">#</div>
								<div class="colVisa">Full name</div>
								<div class="colVisa">Gender</div>
								<div class="colVisa">Day of Birth</div>
								<div class="colVisa">Nationality</div>
								<div class="colVisa">Passport number</div>
								<div class="colVisa">Passport Expiration Date</div>
							</div>

							<s:iterator var="counter" begin="0" end="lstApplicants.size-1"
								value="lstApplicants" status="itStatus">
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


				<!-- end content -->



				<!-- FOOTER -->
				<div id="footer"></div>
				<!-- end footer -->
</body>
</html>