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
		<br><br><br>
		<table border=1px>
			<tr>
				<th>Id</th>
				<th>Day</th>
				<th>Time</th>
			</tr>
			<c:forEach items="${reservations}" var="reservation">
				<tr>
					<td>${reservation.id}</td>
					<td>${reservation.day}</td>
					<td>${reservation.time}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>