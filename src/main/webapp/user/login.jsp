<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Login</title>

</head>
<body>

	<%@ include file="../../layout/header.jsp"%>
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-8">

				<div class="portlet-title">
					<div class="page-header">
						<h3>Login</h3>
					</div>
				</div>
				<div class="portlet-body">

					<c:if test="${not empty ERROR_MESSAGE}">
						<font color="red"><c:out value="${ERROR_MESSAGE}" /></font>
						<br />
					</c:if>
					<form action="../auth/login" method="POST">
						<div class="form-group">
							<label for="userName">EmailId :</label> <input type="email"
								class="form-control" name="emailId" placeholder="Enter emailId"
								autofocus="autofocus" required="required" id="emailId" value="${EMAIL}"
								 />
						</div>

						<div class="form-group">
							<label for="password">Password :</label> <input type="password"
								class="form-control" name="password"
								placeholder="Enter Password" required="required" id="password"
								 />
						</div>
						<div class="form-group">
							<button type="submit" name="add" class="btn btn-success"
								id="addLoginBtn">SIGN IN</button>

							<br/> 
							<br/> <a
								href="../auth/activate" class="btn btn-danger btn-sm" >Activate
								Account</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>

</html>