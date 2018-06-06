<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Admin Dashboard</title>
	</head>
	<body>
		<a href="/restaurant/logout">Log Out</a>
		<h1>Welcome ${admin.name}</h1>
		
		<form action="/restaurant/newReservation" method="POST" >
		
			<input type="date" name="day" />
			
			<select name="time">
				<option value="8:00 p.m.">8:00 p.m.</option>
				<option value="8:15 p.m.">8:15 p.m.</option>			
			</select>
			<input type="submit" value="Create!"/>
		</form>
		
		
	</body>
</html>