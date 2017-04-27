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
                    <h2>Home</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a>Dashboard</a>
                        </li><!-- 
                        <li class="active">
                            <strong>List</strong>
                        </li>
 -->                    </ol>
                </div>
                <div class="col-lg-2">

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

 
</body>

</html>
