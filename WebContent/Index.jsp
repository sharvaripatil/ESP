<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ESP UPDATE</title>
</head>
<body>
 <form action="loginServlet" method="post">  
        <fieldset style="width: 300px">  
            <legend> Login </legend>  
            <table>  
                <tr>  
                    <td>User ID</td>  
                    <td><input type="text" name="username" /></td>  
                </tr>  
                <tr>  
                    <td>Password</td>  
                    <td><input type="password" name="userpass"/></td>  
                </tr>  
                <tr>  
                    <td><input type="submit" value="Login"/></td>  
                </tr>  
            </table>  
        </fieldset>  
    </form>
</body>
</html>