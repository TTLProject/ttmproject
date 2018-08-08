<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Executive Login</title>
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
      <center><div class="card-header">Executive Login</div></center>
      <div class="card-body">
        <form action="ExecutiveLoginServlet" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input class="form-control" id="exampleInputEmail1" type="text" name="username" aria-describedby="emailHelp" placeholder="Enter Username">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" type="password" name="password" placeholder="Password">
          </div>
          <input type="hidden" name="type" value="executive">
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div>
          <a ><button type="submit" class="btn btn-primary btn-block">Login</button></a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="Home.jsp">Home Page</a>
          <a class="d-block small" href="executiveforgotpassword.jsp">Forgot Password?</a>
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
