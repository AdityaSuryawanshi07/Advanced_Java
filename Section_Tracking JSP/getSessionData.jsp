<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>

    <title>Getting Session Data</title>

</head>

<body>

    <%



        // Get the session attribute

        String username = (String) session.getAttribute("username");

    %>

    <h1>Hello, <%= username %>!</h1>

    <p>This data is retrieved from the session.</p>

    <p><a href="clearSession.jsp">Click here</a> to clear session data.</p>

</body>
</html>