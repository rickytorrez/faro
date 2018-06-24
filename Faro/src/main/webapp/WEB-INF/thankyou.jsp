<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
   		<title>Faro - Mediterranean Cuisine</title>
     	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	<!-- raleway font -->
    	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700|Raleway" rel="stylesheet">
    	<!-- bootstrap -->
    	<link href="<c:url value="/resources/faro/css/bootstrap.min.css" />" rel="stylesheet" >
    	<!-- open-iconic-bootstrap -->
    	<link href="<c:url value="/resources/faro/css/open-iconic-bootstrap.min.css" />" rel="stylesheet" >
    	<!-- animate css -->
    	<link href="<c:url value="/resources/faro/css/animate.css" />" rel="stylesheet" >
    	<!-- owl caroul -->
    	<link href="<c:url value="/resources/faro/css/owl.carousel.min.css" />" rel="stylesheet" >
    	<!-- owl theme -->
    	<link href="<c:url value="/resources/faro/css/owl.theme.default.min.css" />" rel="stylesheet" >
    	<!-- magnific -->
    	<link href="<c:url value="/resources/faro/css/magnific-popup.css" />" rel="stylesheet" >
    	<!-- datepicker -->
    	<link href="<c:url value="/resources/faro/css/bootstrap-datepicker.css" />" rel="stylesheet" >
    	<!-- timepicker -->
    	<link href="<c:url value="/resources/faro/css/jquery.timepicker.css" />" rel="stylesheet" >
    	<!-- icomoon -->
    	<link href="<c:url value="/resources/faro/css/icomoon.css" />" rel="stylesheet" >
    	<!-- style -->
    	<link href="<c:url value="/resources/faro/css/style.css" />" rel="stylesheet" >
    	<!-- favicon -->
    	<link rel="shortcut icon" type="image/png" href="resources/faro/img/faro_favico.png"/>
    </head>
    
    <body data-spy="scroll" data-target="#site-navbar" data-offset="200">
    
    	<!-- nav begins-->
    	<nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar">
      		<div class="container">
        		<a class="navbar-brand" href="/">FARO</a>
        		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#site-nav" aria-controls="site-nav" aria-expanded="false" aria-label="Toggle navigation">
          			<span class="oi oi-menu"></span> Menu
        		</button>

	        	<div class="collapse navbar-collapse" id="site-nav">
	          		<ul class="navbar-nav ml-auto">
	            		<li class="nav-item active"><a href="/" class="nav-link">Home</a></li>
	          		</ul>
	        	</div>
      		</div>
    	</nav>
    	<!-- nav ends -->

    	<!-- landing image begins -->
    	<section class="site-cover" style="background-image: url(/resources/faro/img/faro_bg.jpg);" id="section-home">
      		<div class="container">
        		<div class="row align-items-center justify-content-center text-center site-vh-100">
          			<div class="col-md-12">
            			<h1 class="site-heading site-animate mb-3">Thanks for reaching out!</h1>
            			<h2 class="h5 site-subheading mb-5 site-animate">One of our managers will be in touch soon to answer any of your questions</h2>    
          			</div>
        		</div>
      		</div>
    	</section>
    	<!-- landing image ends -->
    	
		<!-- scripts -->
		<!-- jquery -->
		<script src="<c:url value="/resources/faro/js/jquery.min.js" />"></script>
		<!-- popper -->
		<script src="<c:url value="/resources/faro/js/popper.min.js" />"></script>
		<!-- bootstrap -->
		<script src="<c:url value="/resources/faro/js/bootstrap.min.js" />"></script>
		<!-- easing -->
		<script src="<c:url value="/resources/faro/js/jquery.easing.1.3.js" />"></script>
		<!-- waypoint -->
		<script src="<c:url value="/resources/faro/js/jquery.waypoints.min.js" />"></script>
		<!-- carousel -->
		<script src="<c:url value="/resources/faro/js/owl.carousel.min.js" />"></script>
		<!-- pop up -->
		<script src="<c:url value="/resources/faro/js/jquery.magnific-popup.min.js" />"></script>
		<!-- datepicker -->
		<script src="<c:url value="/resources/faro/js/bootstrap-datepicker.js" />"></script>
		<!-- timepicker -->
		<script src="<c:url value="/resources/faro/js/jquery.timepicker.min.js" />"></script>
		<!-- animate number -->
		<script src="<c:url value="/resources/faro/js/jquery.animateNumber.min.js" />"></script>
		<!-- google api -->
    	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJ-UwG2QhQze8fgx2B4KPAplCRT670Leo&sensor=false"></script>
    	<!-- google map controller -->
    	<script src="<c:url value="/resources/faro/js/google-map.js" />"></script>
    	<!-- main jquery -->
    	<script src="<c:url value="/resources/faro/js/main.js" />"></script>
		<!-- scripts end -->
	</body>
</html>