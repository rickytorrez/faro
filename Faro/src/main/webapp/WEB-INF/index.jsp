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
		
		
		<form:form action="/booking/new" method="POST" modelAttribute="booking">
		 	<form:label path="name">First Name
				<form:input path="firstName"></form:input>
				<form:errors path="firstName"/>
			</form:label><br>
			<form:label path="name">Last Name
				<form:input path="lastName"></form:input>
				<form:errors path="lastName"/>
			</form:label><br>
			<form:label path="name">E-mail
				<form:input path="email"></form:input>
				<form:errors path="email"/>
			</form:label><br>
			<form:label path="name">How Many People
				<form:input type="number" path="email"></form:input>
				<form:errors path="email"/>
			</form:label><br>
			<form:label path="name">Phone
				<form:input type="number" path="phone"></form:input>
				<form:errors path="phone"/>
			</form:label><br>
			<form:label path="name">Date
				<form:input type="date" path="date"></form:input>
				<form:errors path="date"/>
			</form:label><br>
			<form:label path="name">Time
				<form:input type="text" path="time"></form:input>
				<form:errors path="time"/>
			</form:label><br>
			<form:label path="name">Message
				<form:input type="text" path="message"></form:input>
				<form:errors path="message"/>
			</form:label><br>
			<input type="submit" value="Reserve" />
		</form:form>
		
		<hr>


	</body>
</html>