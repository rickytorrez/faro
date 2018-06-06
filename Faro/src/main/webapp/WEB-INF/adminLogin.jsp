<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Admin Log In</title>
	</head>
	<body>
		<!-- Admin Register -->
		<h1>Admin</h1>
	    		<c:forEach items="${errors}" var="err">
	    			<p>${err.defaultMessage}</p>
	    		</c:forEach>
 		
 		<form:form action="/restaurant/newAdmin" method="post" modelAttribute="admin">
 			<p>
 				<form:label path="name">Name
 					<form:input type="text" path="name"></form:input>
 					<form:errors path="name"></form:errors>
 				</form:label>
 			</p>
 			<p>
 				<form:label path="email">Email
 					<form:input type="text" path="email"></form:input>
 					<form:errors path="email"></form:errors>
 				</form:label>
 			</p>
 			<p>
 				<form:label path="password">Password
 					<form:input type="password" path="password"></form:input>
 					<form:errors path="password"></form:errors>
 				</form:label>
 			</p>
 			<input type="submit" value="Register"/>
 		</form:form>
 		
 		<!-- Admin Log In -->
 		<h1>Log In</h1>
 		<form action="/restaurant/loginAdmin" method="post">
 			<p>
 				<label>Email
 					<input type="text" name="email"/>
 				</label>		
 			</p>
 			<p>
 				<label>Password	
 					<input type="password" name="password"/>
 				</label>		
 			</p>
 			<input type="submit" value="Login"/>
 			
 		</form>
 		
 		<c:if test="${error != null}">
 				<p>${ error }</p>
 		</c:if>
	</body>
</html>