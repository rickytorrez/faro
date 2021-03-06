<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
   		<title>Admin - Login</title>
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

		<!-- login reg begins -->
    	<section class="site-cover" style="background-image: url(/img/faro_bg.jpg);" id="section-home">
      		<div class="container">
        		<div class="row align-items-center justify-content-center text-center site-vh-100">
          			<div class="col-md-5">
            			<h2 class="site-heading site-animate mb-3">Register</h2>
            				<c:forEach items="${errors}" var="err">
	    						<p>${err.defaultMessage}</p>
	    					</c:forEach>
            				<form:form action="/restaurant/newAdmin" method="post" modelAttribute="admin">
					 			<p>
					 				<form:label path="name">
					 					<form:input type="text" path="name" class="form-control" placeholder="Name"></form:input>
					 					<form:errors path="name"></form:errors>
					 				</form:label>
					 			</p>
					 			<p>
					 				<form:label path="email">
					 					<form:input type="text" path="email" class="form-control" placeholder="E-mail"></form:input>
					 					<form:errors path="email"></form:errors>
					 				</form:label>
					 			</p>
					 			<p>
					 				<form:label path="password">
					 					<form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
					 					<form:errors path="password"></form:errors>
					 				</form:label>
					 			</p>
					 			<input type="submit" class="btn btn-warning" value="Register"/>
 							</form:form>
          			</div>
          			<div class="col-md-2"></div>
          			<div class="col-md-5">
          				<h2 class="site-heading site-animate mb-3">Login</h2>
          				<form action="/restaurant/loginAdmin" method="post">
				 			<p>
				 				<label>
				 					<input type="text" name="email" class="form-control" placeholder="E-mail"/>
				 				</label>		
				 			</p>
				 			<p>
				 				<label>
				 					<input type="password" name="password" class="form-control" placeholder="Password"/>
				 				</label>		
				 			</p>
 							<input type="submit" class="btn btn-warning" value="Login"/>
 						</form>
				 		<c:if test="${error != null}">
				 				<p>${ error }</p>
				 		</c:if>
          			</div>
        		</div>
      		</div>
    	</section>
    	<!-- loginreg ends -->
    	
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