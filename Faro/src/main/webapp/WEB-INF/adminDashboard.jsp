<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
   		<title>Admin Dashboard</title>
     	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	<!-- raleway font -->
    	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700|Raleway" rel="stylesheet">
    	<!-- bootstrap -->
    	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    	<!-- open-iconic-bootstrap -->
    	<link rel="stylesheet" type="text/css" href="/css/open-iconic-bootstrap.min.css">
    	<!-- animate css -->
    	<link rel="stylesheet" type="text/css" href="/css/animate.css">
    	<!-- owl caroul -->
    	<link rel="stylesheet" type="text/css" href="/css/owl.carousel.min.css">
    	<!-- owl theme -->
   		<link rel="stylesheet" type="text/css" href="/css/owl.theme.default.min.css">
    	<!-- magnific -->
    	<link rel="stylesheet" type="text/css" href="/css/magnific-popup.css">
    	<!-- datepicker -->
    	<link rel="stylesheet" type="text/css" href="/css/bootstrap-datepicker.css">
    	<!-- timepicker -->
    	<link rel="stylesheet" type="text/css" href="/css/jquery.timepicker.css">
    	<!-- icomoon -->
    	<link rel="stylesheet" type="text/css" href="/css/icomoon.css">
    	<!-- style -->
    	<link rel="stylesheet" type="text/css" href="/css/style.css">
    	<!-- favicon -->
    	<link rel="shortcut icon" type="image/png" href="/img/faro_favico.png"/>
    </head>
    
    <body data-spy="scroll" data-target="#site-navbar" data-offset="200">
    
    	<!-- nav begins-->
    	<nav class="navbar navbar-expand-lg navbar-light site_navbar bg-light site-navbar-dark" id="site-navbar">
      		<div class="container">
        		<a class="navbar-brand" href="/">FARO</a>
        		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#site-nav" aria-controls="site-nav" aria-expanded="false" aria-label="Toggle navigation">
          			<span class="oi oi-menu"></span> Menu
        		</button>

	        	<div class="collapse navbar-collapse" id="site-nav">
	          		<ul class="navbar-nav ml-auto">
	            		<li class="nav-item"><a href="/restaurant/logout" class="nav-link">Log out</a></li>
	          		</ul>
	        	</div>
      		</div>
    	</nav>
    	<!-- nav ends -->
    	
    	<!-- admin page begins -->
<%--       		<div class="container">
        		<div class="row">
          			<div class="col-md-12">
						<h1>Welcome ${admin.name}</h1>
          			</div>
        		</div>
      		</div> --%>
    	<!-- admin page ends -->
    	
    	<!-- reservation begins -->
    	<section class="site-section">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-12 site-animate mb-5">
						<h3>Reservations</h3>
						<table class="table table-hover">
							<thead>
								<tr>
									<th class="text-black">Guess</th>
									<th class="text-black">Day</th>
									<th class="text-black">Time</th>
									<th class="text-black">Party Size</th>
									<th class="text-black">Phone</th>
								</tr>
							</thead>
							<c:forEach items="${reservations}" var="reservation">
							<tbody>
								<tr scope="row" class="table-warning">
									<td class="text-black">${reservation.firstName} ${reservation.lastName}</td>
									<td class="text-black">${reservation.day}</td>
									<td class="text-black">${reservation.time}</td>
									<td class="text-black">${reservation.sizeOfParty}</td>
									<td class="text-black">${reservation.phone}</td>
								</tr>
							</tbody>
							</c:forEach>
						</table>
          			</div>
        		</div>
      		</div>
    	</section>
    	<!-- reservation ends -->
    	
    	<!-- message begins -->
    	<section class="site-section">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-12 site-animate mb-5">
						<h3>Messages</h3>
						<table class="table table-hover">
							<tr>
								<th class="text-black">Name</th>
								<th class="text-black">E-mail</th>
								<th class="text-black">Message</th>
							</tr>
							<c:forEach items="${messages}" var="message">
								<tr  class="table-primary">
									<td td scope="row" class="text-black">${message.name}</td>
									<td class="text-black">${message.email}</td>
									<td class="text-black">${message.content}</td>
								</tr>
							</c:forEach>
						</table>
          			</div>
        		</div>
      		</div>
    	</section>
    	<!-- message ends -->
    	
		<!-- scripts -->
		<!-- jquery -->
		<script type="text/javascript" src="/js/jquery.min.js"></script>
		<!-- popper -->
		<script type="text/javascript" src="/js/popper.min.js"></script>
		<!-- bootstrap -->
		<script type="text/javascript" src="/js/bootstrap.min.js"></script>
		<!-- easing -->
		<script type="text/javascript" src="/js/jquery.easing.1.3.js"></script>
		<!-- waypoint -->
		<script type="text/javascript" src="/js/jquery.waypoints.min.js"></script>
		<!-- carousel -->
		<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
		<!-- pop up -->
		<script type="text/javascript" src="/js/jquery.magnific-popup.min.js"></script>
		<!-- datepicker -->
		<script type="text/javascript" src="/js/bootstrap-datepicker.js"></script>
		<!-- timepicker -->
		<script type="text/javascript" src="/js/jquery.timepicker.min.js"></script>
		<!-- animate number -->
		<script type="text/javascript" src="/js/jquery.animateNumber.min.js"></script>
		<!-- google api -->
    	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJ-UwG2QhQze8fgx2B4KPAplCRT670Leo&sensor=false"></script>
    	<!-- google map controller -->
    	<script type="text/javascript" src="/js/google-map.js"></script>
    	<!-- main jquery -->
    	<script type="text/javascript" src="/js/main.js"></script>
		<!-- scripts end -->
		
	</body>
</html>