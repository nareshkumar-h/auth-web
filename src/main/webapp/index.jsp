<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<title>Welcome</title>

</head>
<body>

	<%@ include file="../../layout/header.jsp"%>
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-8">
				
				<%
				Object object = session.getAttribute("LOGGED_IN_USER");
				if ( object != null ){
					response.sendRedirect("/admin");
				}
				
				
				
				%>
				
				<h3> Welcome</h3>
				
			</div>
		</div>
	</div>
</body>
</html>