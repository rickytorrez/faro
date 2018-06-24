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