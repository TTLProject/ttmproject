<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="utily.Connections"%>
<%@page import="userbean.Registration"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>EMPLOYEE EDIT PROFILE</title>
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
#button1 {border-radius: 50px; 
background-color: black;
border: none;
    color: white;
    padding: 0px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    
    
    cursor: pointer;
}
#z{
font-variant: small-caps;
font-style:Italic;

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
font-size:25px;
}

  </style>
  
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <p class="small" style="color:red;">Ticket and Test Management</p>
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
		<div class="container">
    <div class="dropdown">
                <%try {
                	Connection con=Connections.getUrl();
        PreparedStatement ps = con.prepareStatement("select * from registration where username=?");
        ps.setString(1,u.getUsername());
        ResultSet rs = ps.executeQuery();
       
        while ( rs.next()) { %>
                <button id="button1"  type="button" data-toggle="dropdown"><img width='50' height='50' src=displayphoto?id=<%=rs.getString("username")%> alt="avatar" style="width: 50px">
                  </button><font id="z" color=red size=5px><%=u.getName() %></font>
                  <ul class="dropdown-menu">
            <center><li><a href="login.jsp"><button class="btn btn-info">Log Out</button></a></li></center>
            
        </ul>
        
        <% }

        con.close();
    }
    catch(Exception ex) {
ex.printStackTrace();
    } %> 
        </div></div>                 
		</li> </ul>
    </div>
  </nav>
  <div class="content-wrapper">
   <div class="container-fluid" >
   
   <%try {
	   Connection con=Connections.getUrl();
		PreparedStatement pstmt=con.prepareStatement("select * from registration where username=?");
		pstmt.setString(1, u.getUsername());
		
		ResultSet rs=pstmt.executeQuery();
		
		boolean b=rs.next();
		if(b){ %>
   
      <!-- Breadcrumbs-->
      <center><div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><b>Edit Profile</b></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div></center>
      <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <center><div class="panel-heading">
                            Edit Basic Information
                        </div></center>
                        <div class="panel-body" >
                            <div class="row" >
                                <div class="col-lg-12" >
                                    <form id="form1" enctype="multipart/form-data" action="addphoto" method="post">
                                        <div class="form-group">
                                            <b><label>Name</label></b>
                                            <input class="form-control" type="text" name="name" pattern="[A-Za-z]{4,16}" value="<%=rs.getString(1) %>" placeholder="Your Name">
                                        </div>
                                        <div class="form-group">
                                            <b><label>Emp Id</label></b>
                                            <input class="form-control" type="text" name="empid" pattern="[A-Za-z]{3}[0-9]{6}" value="<%=rs.getString(2) %>" placeholder="Employee Id">
                                        </div>
                                        <div class="form-group">
                                            <b><label>Designation *</label></b>
                                            <select class="form-control" type="text" name="designation" required>
                                                <option value="<%=rs.getString(3) %>"><%=rs.getString(3) %></option>
												<option value="software trainee">Software Trainee</option>
                                                <option value="software developer">Software Developer</option>
                                                <option value="quality analyst">Quality Analyst</option>
                                                <option value="executive software developer">Executive Software Developer</option>
                                                <option value="executive quality analyst">Executive Quality Analyst</option>
												<option value="hr-department">HR-Department</option>
												
                                            </select></div>
										<div class="form-group">
                                            <b><label>Email</label></b>
                                            <input class="form-control" type="Email" name="email" pattern="[a-z0-9._%+-]+@[gmail,yahoo,outlook]+\.[a-z]{2,3}$" value="<%=rs.getString(4) %>"  placeholder="Email">
                                        </div>
										<div class="form-group">
                                            <b><label>Mobile No</label></b>
                                            <input class="form-control" type="text" name="mobile" pattern="[6-9]{1}[0-9]{9}" value="<%=rs.getString(5) %>" placeholder="Mobile No">
                                        </div>
										<div class="form-group">
                                             <b><label>Domain *</label></b>
                                            <select class="form-control" type="test" name="domain" required>
                                                <option value="<%=rs.getString(6) %>"><%=rs.getString(6) %></option>
												<option value="testing">Testing</option>
                                                <option value="java">Java</option>
                                                <option value=".net">.NET</option>
                                                <option value="hr">HR</option>
                                                
                                            </select></div>
										
										<div class="form-group">
                                            <b><label>Webmail</label></b>
                                            <input class="form-control" type="Email" name="webmail" pattern="[a-z0-9._%+-]+@[A-Za-z]{3,5}+\.[a-z]{2,3}$" value="<%=rs.getString(7) %>" placeholder="Webmail">
                                        </div>
                                        <div class="form-group">
                                            <label>Gender *</label><br>
                                            <input type="radio" name="gender" value="male" required> Male
  											<input type="radio" name="gender" value="female" required> Female
                                        </div>
										<div class="form-group">
                                            <b><label>Username</label></b>
                                            <input class="form-control" type="text" name="username" pattern=".{6,}" value="<%=rs.getString(8) %>" placeholder="Username" readonly>
                                        </div>
										<div class="form-group">
                                            <b><label>Password</label></b>
                                            <input class="form-control" type="text" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" value="<%=rs.getString(9) %>" placeholder="Password">
                                        </div>
										
                                        <div class="form-group">
                                            <b><label>Upload Image</label></b>
                                            <br><input type="file" name="photo" />
                                        </div>
                                        
                                        <button type="submit" class="btn btn-info">Submit</button>
                                        
                                    </form><br>
                                </div>
                                
                            </div>
                           
                        </div>
                      
                    </div>
                  
                </div>
               
            </div>
         <%}else {
				u.setStatus("failure");
			//	u.setType("not admin");
				System.out.println("not success");
			}
		}catch(Exception e) {
			e.printStackTrace();
		} %>   
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
