<!DOCTYPE html>
<html lang="en">
<head>

<link rel="icon" type="image/png" sizes="16x16" href="images/Small_Logo2.png">
<title>sidebar</title>

<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/colors/default.css" id="theme" rel="stylesheet">

<!-- Date picker plugins css -->
<link href="plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
</head>

<body class="fix-header">
    <div id="wrapper">       
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <!--<div class="sidebar-head">-->
                    <div class="sidebar-head" style="padding-bottom: 0px;">
                    <h3><span class="fa-fw open-close">
                            <i class="ti-close ti-menu" style="color: #000"></i>
                        </span><span class="collapsed-menu" style="color: #000">Close</span></h3></div>
                    <ul class="nav" id="side-menu" style="margin-top: 53px">
                 <li class="devider"></li>
                 
                    <li> 
                        <a href="#" class="waves-effect">
                            <i  class="icon-home fa-fw">                                
                            </i> <span class="hide-menu">Home Page</span>
                        </a>
                    </li>
                        
                    <li>
                        <a href="#" class="waves-effect">
                            <i class="ti-user fa-fw" data-icon="v"></i> 
                            <span class="hide-menu">Inquiry<span class="fa arrow"></span> 
                            <span class="label label-rouded label-info pull-right"></span> </span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li><a href="page_inquiry_registration.jsp"><i class="fa-fw"></i>
                                <span class="hide-menu">New Inquiry</span></a> </li>
                            <li><a href="InqList" target="_blank"><i class="fa-fw"></i>
                                <span class="hide-menu">List Inquiry</span></a> </li>
                            <li><a href="page_receipt.jsp" target="_blank"><i class="fa-fw"></i>
                                <span class="hide-menu">Page Receipt</span></a> </li>
                            <li><a href="#" target="_blank">
                                    <span class="hide-menu"><hr class="m-t-10 m-b-10"></span></a> </li>
                            <li><a href="#" target="_blank"><i class="fa-fw"></i>
                                <span class="hide-menu">Emirates</span></a> </li>
                        </ul>
                    </li>
                        <li class="devider"></li>
                    </ul>
                    <div class="center p-20">
                        <a href="#" target="_blank" class="btn btn-danger btn-block waves-effect waves-light">
                        <i class="mdi mdi-logout"></i>Log Out</a>
                    </div>
                
                    <div class="center p-10">
                        <center>
                            <div id="datepicker-inline"></div>
                        </center>
                    </div>
</div>
</div>
</div>
    
<script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<!--<script src="js/waves.js"></script>-->
<script src="js/custom.min.js"></script>
<script src="js/jasny-bootstrap.js"></script>
<script src="plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>

<!-- Date Picker Plugin JavaScript -->
<script src="plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script>
    jQuery('#datepicker-inline').datepicker({
        todayHighlight: true
    });
</script>
</body>
</html>