<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Activation</title>
</head>
<body>

	<%@ include file="../../layout/header.jsp"%>
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-8">

				<div class="portlet-title">
					<div class="page-header">
						<h3>Registration Complete</h3>
					</div>
				</div>
				<div class="portlet-body">
					<h3>Check your email.</h3>
					<p>We've sent an email message to ${EMAIL} with instructions
						for activating your account.</p>

					<hr />
					<div class="form-group">
						 <a href="../auth/activate"
							class='btn btn-primary'> Activate Account </a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>