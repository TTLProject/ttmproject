<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Forgot Password</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <style>
  body{
   
    background: url('img/desktop2-002.jpg') no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
  </style>
</head>

<body class="bg-light">
<%
String login_msg=(String)request.getAttribute("error");  
if(login_msg!=null)
out.println("<center><font color=red size=4px>"+login_msg+"</font></center>");
%>
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Send Password</div>
      <div class="card-body">
        <div class="text-center mt-4 mb-5">
          <h4>Forgot your password?</h4>
          <p>Enter your email address and we will send you instructions on how to reset your password.</p>
        </div>
        <form action="ForgotPassword" method="post">
        <div class="form-group">
            <input class="form-control" id="exampleInputEmail1" type="text" name="username" aria-describedby="emailHelp" placeholder="Enter Username">
          </div>
          <div class="form-group">
            <input class="form-control" id="exampleInputEmail1" type="email" name="email" aria-describedby="emailHelp" placeholder="Enter email address">
          </div>
          <input type="hidden" name="type" value="employee">
          <a ><button type="submit" class="btn btn-primary btn-block">Send Password</button></a>
        </form>
        <div class="text-center">
          
          <!-- <a class="d-block small" href="login.html">Login Page</a> -->
		  <a class="d-block small" href="Home.jsp">Home Page</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
