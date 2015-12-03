<%@page import="org.omg.PortableInterceptor.ForwardRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit product</title>
</head>
<body>
<h3>Edit your product here..</h3>
<% 
   Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/form", "root", "root");
   Statement statement = connection.createStatement();
   
 
           
 %>
 
    <table>  
                <tr>  
                    <td>Product Id</td>  
                    <td><input type="text" name="IDa" size="10"/></td>  
                </tr>  
                <tr>  
                    <td>Product Name</td>  
                    <td><input type="text" name="Namea" size="10" /></td>  
                </tr>  
                <tr>  
                    <td>Product Description</td>  
                    <td><input type="text" name="Decra" />
                    </td>  
                    </tr>
                
                  

                  <tr>  
                  <td><input type="submit" value="Update"/></td>  
                  <td><input type="Reset" value="Cancel"/></td>  
                </tr> 
         
     </table>  
                     
                     


</body>
</html>