<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%=100+120
		%><br>
		<%=30<20 %>
		
		<br>
		<%!
		int tax(int price , int gst){
			gst =(price*gst)/100;
			price= gst+price;
			return price;
		}
		
		%>
		<%= tax(1000,18) %>
		
		<%!
		String name="Aditya";
		int age = 21;
		
		%><br>
		<%=name%>
		<br>
	<%=age %>
</body>
</html>