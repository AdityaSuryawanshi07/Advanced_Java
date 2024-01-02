<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>

    <title>Clearing Session Data</title>

</head>

<body>

    <%

       


        // Invalidate the session

        if (session != null) {

            session.invalidate();

        }

    %>

    <h1>Session data has been cleared.</h1>

    <p><a href="index.jsp">Click here</a> to start a new session.</p>

</body>
</html>