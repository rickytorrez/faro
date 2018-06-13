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
		
		<form>
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
			<input type="date" name="date" /><br>
			<label>Time</label>
			<input type="text" name="time" /><br>
			<label>Message</label>
			<input type="text" name="message" /><br>
			<input type="submit" value="Reserve now!" />
		</form>
		


	</body>
</html>