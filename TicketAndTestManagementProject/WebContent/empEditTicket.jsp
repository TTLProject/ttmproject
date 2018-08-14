<!DOCTYPE html>
<%@page import="utily.Connections"%>
<%@page import="userbean.Registration"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
font-size:30px;
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

<body class="fixed-nav sticky-footer bg-light" id="page-top">
<%Registration u=(Registration)session.getAttribute("login"); %>
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
          <a class="nav-link" href="charts.html">
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
              <a href="cards.html">View Tickets</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Test Management</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
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
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="#">
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
        
        
        
        <li class="nav-item">
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
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
   <div class="container-fluid" >
      <!-- Breadcrumbs-->
      <center><div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Edit Tickets</h1>
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
                                <table border=2 class="table">
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
											<th>TO DO'S</th>
                                        </tr>
                                    </thead>
                            
	
                                    <tbody>
                                    <%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ttm", "ttm");
PreparedStatement pst=con.prepareStatement("select * from tcket");
ResultSet rs=pst.executeQuery();
   while(rs.next()){
%>

                        
                                        <tr bgcolor="">
                                            <td><%=rs.getString(1)%></td>
                                            <td><%=rs.getString(2)%></td>
                                            <td><%=rs.getString(3)%></td>
                                            <td><%=rs.getString(4)%></td>
											<td><%=rs.getString(5)%></td>
											<td><%=rs.getString(6)%></td>
											<td><%=rs.getString(7)%></td>
											<td><%=rs.getString(8)%></td>
											<td><%=rs.getString(9)%></td>
											<td><%=rs.getString(10)%></td>
											<td>
											
											<a href="employeeEditTicket.jsp?ticket=<%=rs.getString(1)%>"><button  class="btn btn-info">Edit</button></a></td>
                                        </tr>
                                     
                                        
										
                                    </tbody>
                                    <%
                        } %>
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
