<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<% 
		for(int i=0; i<=10 ; i++){
			out.print(i+"<hr>");
		}
		%>
		<%
		if(10<=20){
			out.print("10 is smaller");
		}else{
			out.print("10 is biggest");
		}
		%>
		
</body>
</html>