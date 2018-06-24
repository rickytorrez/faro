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
		
		<h3>Reservations</h3>
		
		<table border=1px>
			<tr>
				<th>Guess</th>
				<th>Day</th>
				<th>Time</th>
				<th>Party Size</th>
				<th>E-mail</th>
				<th>Phone</th>
			</tr>
			<c:forEach items="${reservations}" var="reservation">
				<tr>
					<td>${reservation.firstName} ${reservation.lastName}</td>
					<td>${reservation.day}</td>
					<td>${reservation.time}</td>
					<td>${reservation.sizeOfParty}</td>
					<td>${reservation.email}</td>
					<td>${reservation.phone}</td>
				</tr>
			</c:forEach>
		</table>
		
		<h3>Messages</h3>
		
		<table border=1px>
			<tr>
				<th>Name</th>
				<th>E-mail</th>
				<th>Message</th>
			</tr>
			<c:forEach items="${messages}" var="message">
				<tr>
					<td>${message.name}</td>
					<td>${message.email}</td>
					<td>${message.content}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>