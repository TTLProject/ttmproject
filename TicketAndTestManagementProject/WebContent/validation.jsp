<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="registration.jsp" id="myform">
<table border="0" cellpadding="3" cellspacing="0">
    <tr>
        <td>
            Password:
        </td>
        <td>
            <input type="password" id="txtPassword" />
        </td>
    </tr>
    <tr>
        <td>
            Confirm Password:
        </td>
        <td>
            <input type="password" id="txtConfirmPassword" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="button" id="btnSubmit" value="Submit" onclick="Validate()" />
        </td>
    </tr>
</table>
</form>
<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password == confirmPassword) {
        	document.getElementById("myform").submit();
            
        }else{
        alert('password not match:');
        }
    }
</script>
</body>
</html>