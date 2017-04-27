<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Activate Account</title>

</head>
<body>

	<%@ include file="../../layout/header.jsp"%>
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-8">

				<div class="portlet-title">
					<div class="page-header">
						<h3>Activate Account</h3>
					</div>
				</div>
				<div class="portlet-body">

					<c:if test="${not empty ERROR_MESSAGE}">
						<font color="red"><c:out value="${ERROR_MESSAGE}" /></font>
						<br />
					</c:if>

					<form action="../auth/activate" method="POST">
						<div class="form-group">
							<label for="userName">EmailId :</label> <input type="email"
								class="form-control" name="emailId" placeholder="Enter emailId"
								autofocus="autofocus" required="required" id="emailId" value="" />
						</div>

						<div class="form-group">
							<label for="password">Code :</label> <input type="text"
								class="form-control" name="activation_code"
								placeholder="Enter the Activation Code" required="required"
								id="code" value="" />
						</div>
						<div class="form-group">
							<button type="submit" name="add" class="btn btn-success">Activate
							</button>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>

</html>