<%@page import="com.Data.Storage"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<%@page import="com.mysql.jdbc.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
//------------------------------------------------------------//
<style type="text/css">
.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	right: 0;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>




<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" sizes="16x16"
	href="images/Small_Logo2.png">
<title>Admission List</title>

<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet"> -->
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css" rel="stylesheet"> -->
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css.map" rel="stylesheet"> -->


<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link
	href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"
	rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/colors/default.css" id="theme" rel="stylesheet">
<link rel="stylesheet"
	href="plugins/bower_components/datatables/media/css/dataTables.bootstrap.css">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


<script type="text/javascript">

// 	var cname;
<%-- 	cname="<%= session.getAttribute("cnname") %>"; --%>
	
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
	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div id="page-wrapper" style="min-height: 565px;">

			<div class="container-fluid">
				<div class="row m-t-15">

					<div class="col-lg-12 col-md-4 col-sm-4 col-xs-12">
						<div class="panel panel-gray">
							<div class="panel-heading">
								Registration Form
								<div class="panel-action">
									<a href="#" data-perform="panel-collapse"><i
										class="ti-minus"></i></a> <a href="#" data-perform="panel-dismiss"><i
										class="ti-close"></i></a>
								</div>
							</div>
							<div class="panel-wrapper collapse in" aria-expanded="true">
								<div class="panel-body row">
									<div class="col-sm-3">
										<form action="autocomplete" method="post">

											<input type="text" name="regID" id="regID"
												style="display: none;"><br>
											<div class="input-group m-b-10">
												<input class="form-control" data-plugin-maxlength
													maxlength="50" name=fn id="fn"
													style="font-family: inherit; font-size: inherit; margin-left: 5em;"
													placeholder="First Name" value="" title="First Name"
													data-toggle="tooltip" required />
											</div>
											<div class="input-group m-b-10">
												<input class="form-control" data-plugin-maxlength
													maxlength="50" name="ln" id="ln"
													style="font-family: inherit; font-size: inherit; margin-left: 5em;"
													placeholder="Last Name" value="" title="Last Name"
													data-toggle="tooltip" required />
											</div>
											<div class="input-group m-b-10">
												<input type="password" class="form-control"
													data-plugin-maxlength maxlength="50" name="pass" id="pass"
													style="font-family: inherit; font-size: inherit; margin-left: 5em;"
													placeholder="Password" value="" title="Password"
													data-toggle="tooltip" required />
											</div>
											<div class="input-group m-b-10">
												<input type="tel" class="form-control" name="pno"
													maxlength="10" id="pno" placeholder="Mobile No"
													style="margin-left: 5em;" required />
											</div>
											<div class="input-group m-b-10">
												<select class="form-control" name="city" id="city" required
													title="city name" style="margin-left: 5em;">
													<option value="0">---Select Your City---</option>
													<option value="Ahmedabad">Ahmedabad</option>
													<option value="Baroda">Baroda</option>
													<option value="Surat">Surat</option>
													<option value="Rajkot">Rajkot</option>
												</select>
											</div>
											<div class="input-group m-b-10">
												<input type="radio" name="gender" id="male" value="male"
													style="margin-left: 5em;" /> Male <input type="radio"
													name="gender" id="female" value="female"
													style="margin-left: 5em;" /> Female
											</div>
											<div class="input-group m-b-10">
												<p style="margin-left: 5em;">Age</p>
												<input type="range" name="age" onchange="getAge()" id="age"
													min="1" max="100" value="80" style="margin-left: 5em;" />
												<label id="lblRange"></label>
											</div>
											<div class="input-group m-b-10">
												<textarea class="form-control" id="des" name="des" rows="6"
													cols="20" style="margin-left: 5em;"></textarea>
											</div>

											<div class="input-group m-b-10">
												<button type="button" onclick="registerInsertCrud()"
													id="insertbtn"
													class="btn btn-primary waves-effect waves-light m-r-10"
													style="margin-left: 5em;">Save</button>
												<button type="button" onclick="updateQuery()" id="updatebtn"
													style="display: none;"
													class="btn btn-primary waves-effect waves-light m-r-10"
													style="margin-left:5em;">Update</button>
												<button type="button" onclick="clearRegisterAll()"
													class="btn btn-inverse waves-effect waves-light">New</button>
											</div>
										</form>

									</div>

									<div style="float: left;" class="panel-body printableArea">

										<div class="col-md-12" style="margin-left: 30px">
											<table id="myTable"
												class="table table-striped table-bordered table-responsive"
												cellspacing="1" width="100%" style="cursor: pointer;">
												<thead>
													<tr>
														<th style="display: none;">ID</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Password</th>
														<th>Phone No</th>
														<th>City</th>
														<th>Gender</th>
														<th>Age</th>
														<th>Description</th>
														<th style="width: 50px">Action Update</th>
													</tr>
												</thead>
												<tbody>

													<%
														try {

															Storage sta = new Storage();
															String sql = "SELECT * FROM registration where deleteData = 'No' ";
															sta.ps = sta.con.prepareStatement(sql);
															ResultSet rs = sta.ps.executeQuery();

															while (rs.next()) {

																int id = rs.getInt("regID");
																// 								out.println(id + "<br>");
																session.setAttribute("ID", id);
																String fn = rs.getString("fname");
																// 								out.println(fn + "<br>");
																String ln = rs.getString("lname");
																// 								out.println(ln + "<br>");
																String pass = rs.getString("password");
																// 								out.println(pass + "<br>");
																String pno = rs.getString("phoneno");
																// 								out.println(pno + "<br>");
																String city = rs.getString("city");
																// 								out.println(city + "<br>");
																String gender = rs.getString("gender");
																// 								out.println(gender + "<br>");
																String age = rs.getString("age");
																// 								out.println(age + "<br>");
																String des = rs.getString("description");
																// 								out.println(des + "<br>");

																// 																out.println("<tr><td class='regID' style='display:none;'>"+ id +
																// 																"</td><td class='fn'>"+ fn + 
																// 																"</td><td class='ln'>" + ln + 
																// 																"</td><td class='pass'>" + pass + 
																// 																"</td><td class='pno'>"+ pno +
																// 																"</td><td class='city'>" + city +
																//                                                              "</td><td class='gender'>" + gender+
																//                                                              "</td><td class='age'>" + age + 
																//                                                              "</td><td class='des'>" + des + 
																//                                                              "</td><td><button type='button' class='btn btn-success' onclick='update_1();'>Edit</button></td>"
																//                         										+"</td><td><button type='button' class='btn btn-danger' onclick='deleteform1();'>Delete</button></td>"
																//                         										+"</td></tr>");

																out.println("<tr><td class='regID' style='display:none;'>" + id + "</td><td class='fn'>" + fn
																		+ "</td><td class='ln'>" + ln + "</td><td class='pass'>" + pass + "</td><td class='pno'>"
																		+ pno + "</td><td class='city'>" + city + "</td><td class='gender'>" + gender
																		+ "</td><td class='age'>" + age + "</td><td class='des'>" + des
																		+ "</td><td><div class='dropdown' style='float:left;'>"
																		+ "<button type='button' class='btn-success dropdown-toggle' data-toggle='dropdown' style='font-size: 13px;'>"
																		+ "<i class='fas fa-bars'>" + "</i>" + "</button>"
																		+ "<div class='dropdown-content' style='left:0;'>"
																		+ "<a href='#' onclick='update_1();'>Edit</a>"
																		+ "<a href='#' onclick='deleteform1();'>Delete</a>" + "</div></div>" + "</tr></tr>");

																// out.println("<div class='dropdown' style='float:left;'><button class='dropbtn'>Left</button>+<div class='dropdown-content' style='left:0;'><a href='#'>Link 1</a></div></div>");

																// + "<ul class='dropdown-menu' role='menu' style=' margin: -51% 52px -22px 100%; display: none; '>"
																// + "<li>" + "<button type='button' onclick='update_1();'>Update</button>" + "</li>"
																// + "<li>" + "<button type='button' onclick='deleteform1()'>Delete</button>" + "</li>"
																// + "</ul>"

																// 																  <div class="dropdown">
																// 																    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
																// 																    <span class="caret"></span></button>
																// 																    <ul class="dropdown-menu">
																// 																      <li><a href="#">HTML</a></li>
																// 																      <li><a href="#">CSS</a></li>
																// 																      <li><a href="#">JavaScript</a></li>
																// 																    </ul>
																// 																  </div>

															}

														} catch (Exception e) {
															e.printStackTrace();
															out.println(e.toString());
														}
													%>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<hr color="green">
							</div>
						</div>
					</div>
				</div>
			</div>


			<footer class="footer text-center"> 2018 &copy; Copyright
				2018. All rights reserved.</footer>

		</div>

		<!--JAVA SCRIPTS-->
		
<!-- 		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"></script> -->
		
		<script src="bootstrap/dist/js/sweetalert-2.0.js"></script>
		<script src="code_js/register.js"></script>
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

