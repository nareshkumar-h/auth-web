<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin</title>

<link href="../bower/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="../bower/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<link href="../theme/css/datatables.min.css" rel="stylesheet">

<!-- <link href="../bower/plugins/animate.css/animate.min.css" rel="stylesheet"> -->
<link href="../theme/css/animate.css" rel="stylesheet">
<link href="../theme/css/style.css" rel="stylesheet">

</head>

<body>

	<jsp:include page="navbar_layout.jsp"></jsp:include>
	<div id="wrapper">

		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom">

				<jsp:include page="header_layout.jsp"></jsp:include>

			</div>

			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-3">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-success pull-right">Monthly</span>
								<h5>Income</h5>
							</div>
							<div class="ibox-content">
								<h1 class="no-margins">Rs.
									${DASHBOARD_DATA.totalOrderAmount}</h1>
								<!-- <div class="stat-percent font-bold text-success">
									98% <i class="fa fa-bolt"></i>
								</div> -->
								<small>Total income</small>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-info pull-right">Annual</span>
								<h5>Orders</h5>
							</div>
							<div class="ibox-content">
								<h1 class="no-margins">${DASHBOARD_DATA.noOfOrders}</h1>
								<!-- <div class="stat-percent font-bold text-info">
									20% <i class="fa fa-level-up"></i>
								</div> -->
								<small>New orders</small>
							</div>
						</div>
					</div>

					<div class="col-lg-3">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-info pull-right">Registered User</span>
								<h5>Users</h5>
							</div>
							<div class="ibox-content">
								<h1 class="no-margins">${DASHBOARD_DATA.noOfUsers}</h1>
								<small>New users</small>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="pull-right">
			<!--   10GB of <strong>250GB</strong> Free. -->
		</div>
		<div>
			<strong>Developed By</strong> Revature - Training Team &copy; 2017
		</div>
	</div>


	<!-- Mainly scripts -->
	<script src="../bower/plugins/jquery/jquery.min.js"></script>
	<script src="../bower/plugins/bootstrap/bootstrap.min.js"></script>
	<script src="../bower/plugins/metismenu/metisMenu.min.js"></script>
	<script
		src="../bower/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>

	<script src="../theme/js/plugins/dataTables/datatables.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="../theme/js/inspinia.js"></script>
	<!-- <script src="../theme/js/plugins/pace/pace.min.js"></script>  -->


</body>

</html>
