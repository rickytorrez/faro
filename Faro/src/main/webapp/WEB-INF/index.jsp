<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>FARO - RESTAURANT</title>
	</head>
	<body>
		<h3>Welcome to Faro</h3>
		<a href="/restaurant/login"><button>Admin</button></a>	
		<a href="/reservation/list"><button>Make a reservation!</button></a>

		<hr>
		
		<form action="booking/new" method="POST">
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
			<input type="text" name="time" /><br>
			<label>Message</label>
			<input type="text" name="message" /><br>
			<input type="submit" value="Reserve now!" />
		</form>
		
		<hr>
		<form action="/restaurant/newReservation" method="POST" >
		
			<input type="date" name="day" />
			
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
			</select>
			<input type="submit" value="Create!"/>
		</form>
		


	</body>
</html>