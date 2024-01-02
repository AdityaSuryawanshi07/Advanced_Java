<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>

    <title>Setting Session Data</title>

</head>

<body>

    <%

      
        // Set the session attribute

        String username = request.getParameter("username");

        session.setAttribute("username", username);

    %>

    <h1>Hello, <%= username %>!</h1>

    <p>Session data has been set.</p>

    <p><a href="getSessionData.jsp">Click here</a> to view session data.</p>

</body>
</html>