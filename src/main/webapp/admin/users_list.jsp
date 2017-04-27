<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin</title>

    <link href="../bower/plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="../bower/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">

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
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Users</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a>Users</a>
                        </li>
                        <li class="active">
                            <strong>List</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>List of Users</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover dataTables-example" >
                    
                    <thead>
								<tr>
									<th width="5%">Sno</th>
									<th>Name</th>
									<th>Email</th>
									<th>Status</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${USERS_LIST}" var="user" varStatus="loop">
									<tr>
										<td>${loop.index+1}</td>
										<td>${user.name}</td>
										<td>${user.email }</td>
										<td>${user.active ?"Active":"Inactive"}</td>
									</tr>
								</c:forEach>
								
                    </tbody>
                    </table>
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

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="../bower/plugins/jquery/jquery.min.js"></script>
    <script src="../bower/plugins/bootstrap/bootstrap.min.js"></script>
     <script src="../bower/plugins/metismenu/metisMenu.min.js"></script>
    <script src="../bower/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script> 

    <script src="../theme/js/plugins/dataTables/datatables.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="../theme/js/inspinia.js"></script>
    <!-- <script src="../theme/js/plugins/pace/pace.min.js"></script>  -->

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function(){
          $('.dataTables-example').DataTable();
        });

    </script>

</body>

</html>
