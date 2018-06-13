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
<title>Insert title here</title>
</head>
<body>
			<!-- CREATE A NEW GUEST MODAL AND MAKE A CONNECTION TO THE BOOKING CREATED BY THE ADMIN -->
			<!-- TO BE IMPLEMENTED IN THE FUTURE WITH A FRONT END   -->
			<p>Pop modal out to create a new guest</p>
		  	<form:form action="/reservation/guest" method="POST" modelAttribute="guest">
				<form:select path="reservation">
					<c:forEach items="${reservations}" var="x">
						<form:option value="${x.id}">${x.day}, ${x.time}</form:option>
					</c:forEach>
				</form:select><br>
 			<form:label path="name">Name:
				<form:input path="name"></form:input>
				<form:errors path="name"/>
			</form:label><br>
			<form:label path="email">E-mail:
				<form:input path="email"></form:input>
				<form:errors path="email"/>
			</form:label><br>
			<form:label path="phone">Phone:
				<form:input type="number" path="phone"></form:input>
				<form:errors path="phone"/>
			</form:label><br>
			<form:label path="sizeOfParty">Size of your party:
				<form:input type="number" path="sizeOfParty"></form:input>
				<form:errors path="sizeOfParty"/>
			</form:label><br>
			<input type="submit" value="Reserve" />
		</form:form>

</body>
</html>