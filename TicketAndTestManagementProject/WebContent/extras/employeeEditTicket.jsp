<!DOCTYPE html>
<%@page import="userbean.Registration"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>EMPLOYEE EDIT TICKET</title>
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
  padding: 15px
 
  }
  .panel-default {
  border-color: #ddd;
  margin-left: 150px;
  margin-right: 150px;
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
              <a href="empEditTicket.jsp">Edit Ticket</a>
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
                    <h1 class="page-header"><b>Edit Ticket</b></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div></center>
      <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Edit Ticket Information
                        </div>
                        <div class="panel-body" >
                            <div class="row" >
                                <div class="col-lg-12" >
                                    <form role="form">
                                        <div class="form-group">
                                            <b><label>Ticket Id</label></b>
                                            <input class="form-control" type="text" name="ticketid" placeholder="Generates Automatically">
                                        </div>
                                        <div class="form-group">
                                            <b><label>Ticket Description</label></b>
                                            <input class="form-control" type="text" name="description" pattern="[A-Za-z]" placeholder="Ticket Description">
                                        </div>
                                        <div class="form-group">
                                            <b><label>Project Name</label></b>
                                            <input class="form-control" type="text" name="project" pattern="[A-Za-z]" placeholder="Project Name">
                                        </div>
										<div class="form-group">
                                           <b> <label>Module Name</label></b>
                                            <input class="form-control" type="text" name="module" pattern="[A-Za-z]" placeholder="Module Nmae">
                                        </div>
										<div class="form-group">
                                            <b><label>Requirement</label></b>
                                            <input class="form-control" type="text" name="requirement" pattern="[A-Za-z]" placeholder="Requirement Nmae">
                                        </div>
										<div class="form-group">
                                            <b><label>Date of Issue</label></b>
                                            <input class="form-control" type="date" name="doi" placeholder="Date of Issue">
                                        </div>
										<div class="form-group">
                                            <b><label>Date of Complete</label></b>
                                            <input class="form-control" type="date" name="doc" placeholder="Date of Complete">
                                        </div>
										<div class="form-group">
                                            <b><label>Status</label></b>
                                            <select class="form-control">
                                                <option>Assign</option>
												<option>Design</option>
                                                <option>Development</option>
                                                <option>Review</option>
                                                <option>Unit Testing</option>
                                                <option>Functionality Testing</option>
												<option>Deploy</option>
												<option>Completed</option>
                                            </select>
                                        </div>
										
										<div class="form-group">
                                            <b><label>Test Assigned to</label></b>
                                            <input class="form-control" type="text" name="assignedto" pattern="[A-Za-z]" placeholder="Test Assigned to">
                                        </div>
                                        <br><button type="submit" class="btn btn-info">Edit Ticket</button>
                                        
                                    </form><br>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                
                                <!-- /.col-lg-6 (nested) -->
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
