<!DOCTYPE html>
<%@page import="userbean.Registration"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>EMPLOYEE EDIT</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <style>
img {
  border-radius: 50%;
}
.btn-default{
background-color: light;
}
</style>
  <style>
  .page-header{
  margin-top: 20px;
  }
  .panel{
   border: 1px solid #d9d9d9;
   margin-bottom: 20px;
  }
  .panel-body{
  
 padding: 10px
  }
  .panel-default {
  border-color: #ddd;
  margin-left: 10px;
  margin-right: 10px;
}
.panel-default > .panel-heading {
	padding-bottom: 20px;
  color: #333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
p.small{
font-variant: small-caps;
}
.dot {
    height: 10px;
    width: 15px;
    background-color: yellow;
    border-radius: 50%;
    display: inline-block;
}
.dot1 {
    height: 10px;
    width: 15px;
    background-color: red;
    border-radius: 50%;
    display: inline-block;
}
.dot2 {
    height: 10px;
    width: 15px;
    background-color: green;
    border-radius: 50%;
    display: inline-block;
}
  </style>
  
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <h2 ><p class="small" style="color:red;">Ticket and Test Management</p></h2>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="employeeHome.jsp">
            <i class="fa fa-home"></i>
            <span class="nav-link-text">Home</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="employeeEditProfile.jsp">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Edit Profile</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Tickets</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="employeeAddTicket.jsp">Add Ticket</a>
            </li>
            <li>
              <a href="employeeEditTicket.jsp">Edit Ticket</a>
            </li>
			<li>
              <a href="employeeViewTickets.jsp">View Tickets</a>
            </li>
          </ul>
        </li>
        <%Registration u=(Registration)session.getAttribute("login"); %>
<%if((u.getType().equals("quality analyst"))||(u.getType().equals("executive quality analyst"))) {%>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages" style="display:none">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Test Management</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages" >
            <li>
                                    <a href="#">Prepare Test Report</a>
                                </li>
                                <li>
                                    <a href="#">Prepare Test Data</a>
                                </li>
                                
                                <li>
                                    <a href="#">Prepare Bug Report</a>
                                </li>
                                <li>
                                    <a href="#"> View Ticket Report</a>
                                </li>
                                <li>
                                    <a href="#">Modify Ticket Report</a>
                                </li>
          </ul>
        </li>
        <%}else{ %>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages" >
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Test Management</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages" >
            <li>
                                    <a href="#">Prepare Test Report</a>
                                </li>
                                <li>
                                    <a href="#">Prepare Test Data</a>
                                </li>
                                
                                <li>
                                    <a href="#">Prepare Bug Report</a>
                                </li>
                                <li>
                                    <a href="#"> View Ticket Report</a>
                                </li>
                                <li>
                                    <a href="#">Modify Ticket Report</a>
                                </li>
          </ul>
        </li>
        <%} %>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="notifications.jsp">
            <i class="fa fa-fw fa-link"></i>
            <span class="nav-link-text">Notifications</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
             <li class="">
		
                <img src="images/img.jpg" alt="avatar" style="width: 50px"><!-- <font color=red size=5px>John Doe</font> -->
                                    
		</li> 
		<li>
		<div class="container">
    <div class="dropdown">
        <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">        
			<font color=red size=4px>John Doe</font>
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <center><li><a href="#">Log Out</a></li></center>
            
        </ul>
    </div>
</div>
		</li>
		
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
   <div class="container-fluid" >
      <!-- Breadcrumbs-->
      <center><div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><b>Edit Tickets</b></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div></center>
      <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div style="text-align:left">
  
  <h5> All Tickets</h5>
  
</div>
                        </div>
                        <div class="panel-body" >
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>T.Id</th>
                                            <th>T.Description</th>
                                            <th>P.Name</th>
                                            <th>M.Name</th>
											<th>R.Name</th>
											<th>Assigned To</th>
											<th>Assigned By</th>
											<th>Date of Issue</th>
											<th>Date of Complete</th>
											<th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr bgcolor="">
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td><button type="submit" class="btn btn-info"><a href="employeeEditTicket.jsp">Edit</a></button></td>
                                        </tr>
                                        <tr bgcolor="">
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td><button type="submit" class="btn btn-info"><a href="employeeEditTicket.jsp">Edit</a></button></td>
                                        </tr>
                                        <tr bgcolor="">
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td><button type="submit" class="btn btn-info"><a href="employeeEditTicket.jsp">Edit</a></button></td>
                                        </tr>
                                        
										
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
  </div>
</body>

</html>
