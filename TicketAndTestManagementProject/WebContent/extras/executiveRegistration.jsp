<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Registration</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
          <script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var k=document.getElementById("username").value;
var urls="checkusername.jsp?ver="+k;

if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4)
    {
        document.getElementById("err").innerHTML=xmlhttp.responseText;
     }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
</script>
  <style>
  div.card-header{
  text-align: center;
  }
  div.container-fluid{
  padding-left: 400px;
  padding-top: 20px;
  }
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
    <div class="card card-register mx-auto mt-5">
      <div class="card-header" ><center><h2><font color="blue">Registration</font></h2></center>
      <h6>All Fields are Mandatory *</h6></div>
      <div class="card-body">
        <form action="RegistrationServlet" method="post" role="form" id="myform" class="myform" >
                                        <div class="form-group">
                                            <label>Name *</label>
                                            <input class="form-control" type="text" name="name" pattern="[A-Za-z]{8,16}" placeholder="Your Name" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Emp Id *</label>
                                            <input class="form-control" type="text" name="empid" pattern="[0-9]{4}" placeholder="Employee Id" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Designation *</label>
                                            <select class="form-control" type="text" name="designation" required>
                                                <option value="">Select Designation</option>
												<option value="Software Trainee">Software Trainee</option>
                                                <option value="Software Developer">Software Developer</option>
                                                <option value="Quality Analyst">Quality Analyst</option>
                                                <option value="Executive Software Developer">Executive Software Developer</option>
                                                <option value="Executive Quality Analyst">Executive Quality Analyst</option>
												<option value="HR-Department">HR-Department</option>
												
                                            </select></div>
										<div class="form-group">
                                            <label>Email *</label>
                                            <input class="form-control" id="yz" type="text" name="email"  placeholder="Email" required>
                                        </div>
										<div class="form-group">
                                            <label>Mobile No *</label>
                                            <input class="form-control" type="text" name="mobile" pattern="[7-9]{1}[0-9]{9}" placeholder="Mobile No" required>
                                        </div>
										<div class="form-group">
                                             <label>Domain *</label>
                                            <select class="form-control" type="test" name="domain" required>
                                                <option value="">Select Domain</option>
												<option value="testing">Testing</option>
                                                <option value="java">Java</option>
                                                <option value=".net">.NET</option>
                                                <option value="hr">HR</option>
                                                
                                            </select></div>
										
										<div class="form-group">
                                            <label>Webmail *</label>
                                            <input class="form-control" id="xy" type="Email" name="webmail"  placeholder="Webmail" required>
                                        </div>
										<div class="form-group">
                                            <label>Username *</label>
                                            <input class="form-control" type="text" name="username" id="username" pattern=".{6,}" placeholder="Username" onkeyup="loadXMLDoc()" required>
                                        <span id="err"> </span>
                                        </div>
										<div class="form-group">
                                            <label>Password *</label>
                                            <input class="form-control" type="text" name="password" placeholder="Password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                                        </div>
										<div class="form-group">
                                            <label>Confirm Password *</label>
                                            <input class="form-control" type="text" name="password2" placeholder="Confirm Password" id="password2" required>
                                        </div>
                                        <input type="hidden" name="type" value="executive">
                                        
										<!-- <input type="button" class="btn btn-primary btn-block" value="Submit" onClick="Validate()" ></input> -->
                                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                                    </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="Home.jsp">Home Page</a>
          <!-- <a class="d-block small" href="forgotpassword.jsp">Forgot Password?</a> -->
        </div>
      </div>
    </div>
  </div>
  
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("password2").value;
        if (password == confirmPassword) {
        	document.getElementById("myform").submit();
            
        }else{
        alert('password do not match:');
        }
    }
</script>
<!-- <script>
$('button').on('click', function(){
    str = $('#xy').val();
    str = str.split('@').slice(1);
    
    var allowedDomains = [ 'google.com', 'yahoo.com', 'outlook.com'];
    
    if ($.inArray(str[0], allowedDomains) !== -1) {
        return true;
    }else{
        alert('select valid domain in mail');
        
    }
});
</script> -->
<script>
$('button').on('click', function(){
    str = $('#yz').val();
    str = str.split('@').slice(1);
    
    var allowedDomains = [ 'google.com', 'yahoo.com', 'outlook.com'];
    
    if ($.inArray(str[0], allowedDomains) !== -1) {
        return true;
    }else{
        alert('select valid domain in mail');
        return false;
    }
});
</script>
</body>

</html>
