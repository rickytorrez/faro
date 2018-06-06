<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


		<form action="/restaurant/newReservation" method="POST" >
		
			<input type="date" name="day" />
			
			<select name="time">
				<option value="8:00 p.m.">8:00 p.m.</option>
				<option value="8:15 p.m.">8:15 p.m.</option>			
			</select>
			<input type="submit" value="Create!"/>
		</form>




		System.out.println("________________________________________________________________________________________");
		System.out.println("day is: ");
		System.out.println(day);
		System.out.println("________________________________________________________________________________________");
		System.out.println("time is: ");
		System.out.println(time);
		System.out.println("________________________________________________________________________________________");

</body>
</html>