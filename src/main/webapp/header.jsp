<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/png" sizes="16x16" href="images/Small_Logo2.png">
<title>JSP Include</title>

<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
<link href="plugins/bower_components/Magnific-Popup-master/dist/magnific-popup.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/colors/default.css" id="theme" rel="stylesheet">
</head>

<body class="fix-header">
<div id="wrapper">
<nav class="navbar navbar-default navbar-static-top m-b-0">
<div class="navbar-header" style="height: 60px;background: #93c83d">
    <!--<div class="navbar-header">-->
        <div class="top-left-part">
            <a class="logo" href="new_inquiry.jsp">
            <b>
            <img src="images/Small_Logo4.png" alt="home" class="dark-logo" />
            <img src="images/Small_Logo4.png" alt="home" class="light-logo" />
            </b>
            <span class="hidden-xs">
            <img src="images/admin-text.png" alt="home" class="dark-logo" />
            <img src="images/admin-text.png" alt="home" class="light-logo" />
            </span> 
            </a>
        </div>
        <ul class="nav navbar-top-links navbar-left">
            
            <li>
            <a href="javascript:void(0)" class="open-close waves-effect waves-light" style="padding-bottom: 0px;padding-top: 0px;">
            <i class="ti-menu"> </i>
            <div class="notify"></div>
            </a>
            </li>
            
            
            <!--<li><a href="javascript:void(0)" class="open-close waves-effect waves-light"><i class="ti-menu"></i></a></li>-->
            <li class="dropdown">
                <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#" style="padding-bottom: 0px;padding-top: 0px;"> 
                    <i class="mdi mdi-gmail"></i>
                <div class="notify"> <span class="heartbit">Mails</span><span class="point"></span> </div>
                </a>
            <ul class="dropdown-menu mailbox animated bounceInDown">
                <li>
                    <div class="drop-title">You have 4 new messages</div>
                </li>
                <li>
                <div class="message-center">
                    <a href="#">
                        <div class="user-img"> <img src="plugins/images/users/pawandeep.jpg" alt="user" class="img-circle"> 
                        <span class="profile-status online pull-right"></span> 
                        </div>

                        <div class="mail-contnet">
                        <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:30 AM</span> 
                        </div>                            
                    </a>
                    <a href="#">
                        <div class="user-img"> 
                            <img src="plugins/images/users/sonu.jpg" alt="user" class="img-circle">
                            <span class="profile-status busy pull-right"></span> 
                        </div>
                        <div class="mail-contnet">
                            <h5>Sonu Nigam</h5> 
                            <span class="mail-desc">I've sung a song! See you at</span> 
                            <span class="time">9:10 AM</span> 
                        </div>
                    </a>
                </div>
                </li>
                <li>
                    <a class="text-center" href="javascript:void(0);"> 
                    <strong>See all notifications</strong> 
                    <i class="fa fa-angle-right"></i> 
                    </a>
                </li>
            </ul>
            </li>

<!--            <li>
            <a class="dropdown waves-effect waves-light" href="vslMaster.jsp" 
               style="padding-bottom: 0px;padding-top: 0px;">
            <i class="icon-calender"> </i>
            <span class="hidden-xs">Calender</span> 
            <div class="notify"></div>
            </a>
            </li>-->
            
<!--            <li>
            <a class="dropdown-toggle waves-effect waves-light popup-gmaps" data-toggle="dropdown" 
               href="https://maps.google.com/maps?q=India" style="padding-bottom: 0px;padding-top: 0px;">
            <i class="icon-map"> </i>
            <span class="hidden-xs">Map</span> 
            <div class="notify"></div>
            </a>
            </li>-->
            
<!--            <li class="mega-dropdown"> 
                <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#">
                    <span class="hidden-xs">Calender</span> 
                    <i class="icon-calender">                            
                    </i>
                </a>
            </li>

            <li class="mega-dropdown"> 
                <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#">
                    <span class="hidden-xs">Map</span> 
                    <i class="icon-map">                            
                    </i>
                </a>
            </li>                                    -->
        </ul>

        <ul class="nav navbar-top-links navbar-right pull-right">
        <li class="dropdown">

            <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false" style="margin-right: 10px;padding-top: 0px;padding-bottom: 0px;">
                <!--<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false" style="margin-right: 10px;">-->
                <img src="plugins/images/users/varun.jpg" alt="user-img" width="36" class="img-circle">
                <b class="hidden-xs">Steave</b><span class="caret"></span>
                </a>
            <ul class="dropdown-menu dropdown-user animated flipInY">
                <li>
                <div class="dw-user-box">
                <div class="u-img"><img src="plugins/images/users/varun.jpg" alt="user" /></div>
                <div class="u-text">
                <h4>Steave Jobs</h4>
                <p class="text-muted">varun@gmail.com</p><a href="profile.html" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                </div>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#"><i class="ti-user"></i> My Profile</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#"><i class="ti-email"></i> Inbox</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#"><i class="ti-settings"></i> Account Setting</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#"><i class="fa fa-power-off"></i> Logout</a></li>
            </ul>
        </li>
        </ul>            
    </div>
    </nav>    
</div>
    
<script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<!--<script src="js/waves.js"></script>-->
<script src="js/custom.min.js"></script>
<script src="js/jasny-bootstrap.js"></script>
<script src="plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>

<script src="js/vcl-popup-map.js"></script>
</body>
</html>
