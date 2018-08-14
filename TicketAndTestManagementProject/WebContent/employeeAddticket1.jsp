<!DOCTYPE html>
<%@page import="userbean.Registration"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>EMPLOYEE ADD TICKET</title>
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
font-size:30px;
}
  </style>
  
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<%Registration u=(Registration)session.getAttribute("login");%>
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
                <button id="button1"  type="button" data-toggle="dropdown"><img src="images/img.jpg" alt="avatar" style="width: 50px">
                  </button><font id="z" color=red size=5px><%=u.getName() %></font>
                  <ul class="dropdown-menu">
            <center><li><a href="login.jsp"><button class="btn btn-info">Log Out</button></a></li></center>
            
        </ul> 
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
                    <h1 class="page-header">Add Ticket</h1>
                </div>
                <h3 ><p class="small" style="color:red;">Ticket added successfully</p></h3>
                <!-- /.col-lg-12 -->
            </div></center>
      <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Ticket Information
                        </div>
                        <div class="panel-body" >
                            <div class="row" >
                                <div class="col-lg-12" >
                                    <form action="employaddservlet" method="post">
                                    <%     Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ttm","ttm");
PreparedStatement pstmt = conn.prepareStatement("select * from tcket where ticketid=(select MAX(ticketid) from tcket)");
ResultSet rs = pstmt.executeQuery();
String s;
if(rs.next()){
s=rs.getString("ticketid");	
int n1=s.length();
//System.out.println(s.substring(3));
int r=Integer.parseInt(s.substring(4)) + 1;
 String s2="TCI-00"+r;
 //System.out.println(s2);
 //System.out.println(s2.length());
 int n2=s2.length();
 int n3=n1+1;

if(n1==n2){
	
	 %>
<div class="form-group">
                                            <b><label>Ticket-Id</label></b>
				<input class="form-control" type="text" name="ticketid" placeholder=""  required="" value=<%=s2%>>
				</div>

			
		<%
  } 

else if(n3==n2){
	int r1=Integer.parseInt(s.substring(4)) + 1;
	 String s3="TCI-0"+r1;
	// System.out.println(s3);
	 %>
<div class="form-group">
                                            <b><label>Ticket-Id</label></b>
				<input class="form-control" type="text" name="ticketid" placeholder=""  required="" value=<%=s3%>>
				</div>
	 <% 
}else{
	int r2=Integer.parseInt(s.substring(4)) + 1;
	 String s4="TCI-"+r2;
	 //System.out.println(s4);
	 %>
	 	<div class="form-group">
                                            <b><label>Ticket-Id</label></b>
				<input class="form-control" type="text" name="ticketid" placeholder=""  required="" value=<%=s4%>>
				</div>
	 <% 
	
}

}
else{
	 String id ="TCI-001";
	
	%>

<div class="form-group">
                                            <b><label>Ticket-Id</label></b>
	<input class="form-control" type="text" name="ticketid" placeholder=""  required="" value=<%=id%> readonly="readonly">
	</div>
<%} %>
                                            
                                        <div class="form-group">
                                            <b><label>Ticket Description</label></b>
                                            <input class="form-control" type="text" name="description" placeholder="Ticket Description">
                                        </div>
                                        <div class="form-group">
                                            <b><label>Project Name</label></b>
                                            <input class="form-control" type="text" name="project" placeholder="Project Name">
                                        </div>
										<div class="form-group">
                                           <b> <label>Module Name</label></b>
                                            <input class="form-control" type="text" name="module" placeholder="Module Nmae">
                                        </div>
										<div class="form-group">
                                            <b><label>Requirement</label></b>
                                            <input class="form-control" type="text" name="requirement" placeholder="Requirement Nmae">
                                        </div>
										<div class="form-group">
                                            <b><label>Assigned to </label></b>
                                            <select class="form-control" name="Assignedto">
                                                <option>ganesh</option>
                                                <option>anup</option>
                                                <option>kranthi</option>
                                                <option>karem</option>
                                                <option>sanjay</option>
                                            </select>
                                        </div>
										<div class="form-group">
                                            <b><label>Assigned by</label></b>
                                            <select class="form-control" name="Assignedby">
                                                <option>sanjay</option>
                                                <option>anup</option>
                                                <option>ganesh</option>
                                                <option>karem</option>
                                                <option>kranthi</option>
                                            </select>
                                        </div>
										<div class="form-group">
                                            <b><label>Date of Issue</label></b>
                                            <input class="form-control" type="date" name="Dateissue" placeholder="Date of Issue">
                                        </div>
                                        <br><button type="submit" class="btn btn-info">Add Ticket</button>
                                        
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
<script type="text/javascript">

    
    $(window).load(function(){
		$(document).ready(function() {
			
    });
			var template = $('#template'),
				id = 0;
			
			$("#add-line").click(function() {
				if(!template.is(':visible'))
				{
					template.show();
					return;
				}
				var row = template.clone();
				template.find("input:text").val("");
				row.attr('id', 'row_' + (id++));
				template.before(row);
                var i=1;

    $('.form_id').each(function(){
    	 $(this).text('Tc-00'+ i);
        i++;
			});
			
			$('.form-fields').on('click', '.remove', function(){
				var row = $(this).closest('tr');
				if(row.attr('id') == 'template')
				{
					row.hide();
				}
				else
				{
					row.remove();
                   
				}
			});
		});
		});
    
    
    </script>

</html>
