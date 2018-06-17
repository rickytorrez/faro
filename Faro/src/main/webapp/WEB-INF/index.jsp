<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <title>Faro - Mediterranean Cuisine</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    
	    <!-- Google Fonts -->
	    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700|Raleway" rel="stylesheet">
	    <!-- Bootstrap -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <!-- Iconic Bootstrap -->
	    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
	    <!-- CSS Animate -->
	    <link rel="stylesheet" href="css/animate.css">
	    <!-- Carousel -->
	    <link rel="stylesheet" href="css/owl.carousel.min.css">
	    <!-- Theme -->
	    <link rel="stylesheet" href="css/owl.theme.default.min.css">
	    <!-- Pop Up -->
	    <link rel="stylesheet" href="css/magnific-popup.css">
		<!-- Date Picker -->
	    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
	    <!-- Time Picker -->
	    <link rel="stylesheet" href="css/jquery.timepicker.css">
		<!-- Icomoon -->	
	    <link rel="stylesheet" href="css/icomoon.css">
	    <!-- CSS Custom Style -->
	    <link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<h3>Welcome to Faro</h3>
		<a href="/restaurant/login"><button>Admin</button></a>	

		<hr>
		<form action="/restaurant/newReservation" method="POST" >
		
			<label>First Name</label>
			<input type="text" name="firstName" /><br>
			<label>Last Name</label>
			<input type="text" name="lastName" /><br>
			<label>Email</label>
			<input type="text" name="email" /><br>
			<label>How Many People</label>
			<input type="number" name="sizeOfParty" /><br>
			<label>Phone</label>
			<input type="number" name="phone" /><br>
			<label>Date</label>		
			<input type="date" name="day" /><br>
			<label>Time</label>
			<select name="time">
				<option value="8:00 p.m.">8:00 p.m.</option>
				<option value="8:15 p.m.">8:15 p.m.</option>
				<option value="8:30 p.m.">8:30 p.m.</option>	
				<option value="8:45 p.m.">8:45 p.m.</option>	
				<option value="9:00 p.m.">9:00 p.m.</option>	
				<option value="9:15 p.m.">9:15 p.m.</option>	
				<option value="9:30 p.m.">9:30 p.m.</option>	
				<option value="9:45 p.m.">9:45 p.m.</option>	
				<option value="10:00 p.m.">10:00 p.m.</option>	
			</select><br>
			<label>Message</label>
			<input type="text" name="message" /><br>
			<input type="submit" value="Create!"/>
		</form>
	</body>
</html>