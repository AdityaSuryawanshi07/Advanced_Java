<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<!-- css Only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

    <!--  Create a form -->
    
    <form method="post" action="cookies.jsp" class="container">
    <div class="row justify-content-md-center">
    <h1 class="text-center h1">
    <p>Enter cookie name And cookie value</p>
    </h1>
    <div class="col-md-auto col-4 mt-2">
    <div class="input-group mb-3">
    <div class="input-group-text">
    <label>Cookie Name</label>
    </div>
    <input type="text" class="form-control"  name="name">
    </div>
    <div class="input-group mb-3">
    <div class="input-group-text">
    <label>Cookie value</label>
    </div>
    <input type="text" class="form-control" name="value">
    </div>
    <button type="submit" class="btn btn-warning">Add Cookie</button>
    </div>
    </div>
    </form>
    
 </td>
 </tr>
 <tr>
<td>&nbsp;</td>
</tr>
</table>

   <!-- 2.Add Cookies -->
   <%
   // Checks for the value of name that is null or not
   String name = request.getParameter("name");
   if(name != null && name.length()>0){
	   String value = request.getParameter("value");
	   Cookie retrieveCookies = new Cookie(name,value);
	   
	   // Add cookies to responce object of jsp
	   response.addCookie(retrieveCookies);
	   // redirects control to same page for new request
	   response.sendRedirect("cookies.jsp");
   }
   %>
   
   <!-- 3. Show cookies into table -->

 <h1>
 <table class="table table-bordered border-primary container">
 <thead>
 <tr class="table-success">
 <td>Cookie name</td>
 <td>Cookie value</td>
 </tr>
 </thead>
 
 <%
 // getCookies ()method returns array of cookie
 //we iterate over it and extract the name and value
 // into separate variables cookieName and cookieValue
 
 		Cookie[] cookies = request.getCookies();
		for (int i = 0; i<cookies.length ; i++){
			Cookie cookie = cookies[i];
			
			String cookieName = cookie.getName();
			String cookieValue = cookie.getValue();
			
			//Diplay each value on jsp by iterating one byb one
			%>
		<tr>
		<td><%=cookieName%></td>	
		<td><%=cookieValue%></td>	
		</tr>
		<%
			}
		%>
			
 </table>
 </h1>   
</body>
</html>