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
		
		
		
		<form:form action="/reservation/new" method="POST" modelAttribute="reservation">
			<form:label path="day">Date:
				<form:input type="date" path="day"></form:input>
			</form:label>
			
			<form:label path="time">Time:
				<form:select path="time">
					<form:option value="8:00 p.m.">8:00 p.m.</form:option>
					<form:option value="8:00 p.m.">8:15 p.m.</form:option>
				</form:select>
			</form:label>
			
			<input type="submit" value="Create Reservation"/>
		</form:form>
	</body>
</html>