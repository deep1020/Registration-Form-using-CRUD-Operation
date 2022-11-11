<!DOCTYPE html>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" sizes="16x16" href="images/Small_Logo2.png">
<title>Admission List</title>

<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/colors/default.css" id="theme" rel="stylesheet">
<link rel="stylesheet" href="plugins/bower_components/datatables/media/css/dataTables.bootstrap.css">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        
    $('#myTable').DataTable();
    var table = $('#myTable').DataTable();
    table.order( [ 1, 'asc' ] ).draw();
    });
    
    function validateNumber(event) {
        var key = window.event ? event.keyCode : event.which;

        if (key >= 48 && key <= 57)
            return true;
        else
            return false;
    };

    function validateText(event) {
        var key = window.event ? event.keyCode : event.which;

        if (key >= 65 && key <= 90 || key >= 97 && key <= 122)
            return true;
        else
            return false;
    };
</script>
</head>

<body class="fix-header hide-sidebar">
<!--     <div id="wrapper"> -->
<%--         <jsp:include page="header.jsp"></jsp:include> --%>
<%--         <jsp:include page="sidebar.jsp"></jsp:include> --%>
<!--         <div id="page-wrapper" style="min-height: 565px;"> -->

<!--             <div class="container-fluid"> -->
<!--                 <div class="row m-t-15"> -->

<!--                     <div class="col-lg-12 col-md-4 col-sm-4 col-xs-12"> -->
<!--                         <div class="panel panel-gray"> -->
<!--                             <div class="panel-heading"> -->
<!--                                 Pending Inquiry  -->
<!--                                 <div class="panel-action"><a href="#" data-perform="panel-collapse"><i class="ti-minus"></i></a> <a href="#" data-perform="panel-dismiss"><i class="ti-close"></i></a></div> -->
<!--                             </div> -->
<!--                             <div class="panel-wrapper collapse in" aria-expanded="true"> -->
<!--                                 <div class="panel-body printableArea"> -->
<!--                                     datatable -->
<!--                                     <div class="col-md-12"> -->
<!--                                         <table id="myTable" class="table table-striped table-bordered table-responsive" cellspacing="0" width="100%" style="cursor: pointer;"> -->
<!--                                             <thead> -->
<!--                                                 <tr> -->
<!--                                                     <th>Inquiry No</th> -->
<!--                                                     <th>First Name</th> -->
<!--                                                     <th>City</th> -->
<!--                                                     <th>Courses</th> -->
<!--                                                     <th>Mobile No</th> -->
<!--                                                     <th>Attend By</th> -->
<!--                                                     <th style="width: 15px">Edit</th> -->
<!--                                                     <th style="width: 15px">ID</th> -->
<!--                                                 </tr> -->
<!--                                             </thead> -->
<!--                                             <tbody> -->

<!--                                         </tbody> -->
<!--                                     </table> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->

<footer class="footer text-center"> 2018 &copy; Copyright 2018. All rights reserved.</footer>

</div>
<!--JAVA SCRIPTS-->
<script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/waves.js"></script>
<script src="js/custom.min.js"></script>
<script src="js/jasny-bootstrap.js"></script>
<script src="plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
<script src="js/select2.js"></script>
<script src="plugins/bower_components/datatables/datatables.min.js"></script>

</body>
</html>

