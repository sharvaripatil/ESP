<%@page import="org.omg.PortableInterceptor.ForwardRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome <%=session.getAttribute("name")%></title>  
</head>

<body>
  <form   action="ProductInfo.jsp">
<h3 align="center">WELCOME TO ESP</h3> 
    <h4 align="left" style="color:blue">Hello,<%=session.getAttribute("name")%></h4> 
    <h4 style="color:blue"> Manage Your Product here </h4> 
    <hr width="100%">
    <p align="right">
   <a href="espGrid.jsp">
   <button>+Add a new product</button>
   </a>
   </p>
    <a href="Catalog.jsp">For Catalog and Compliance..</a><br>
    <a href="espGrid.jsp">For Product Related Info.... </a>      
      
      
      <h4 style="color:blue"> Click on Product ID to edit the product </h4> 
       <% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/form", "root", "root");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from form.product where ID != ''") ; 
        %>
        
    <br>
      
        <table>
      <tr>  
                    <td><b>Product ID </b></td>  
                    <td><b>Product Name </b></td> 
                    <td><b>Product Image</b></td> 
                    <td><b>Product Description </b></td> 
                     
                     
                </tr>
            <% while(resultset.next()){ %>
            
            </form>
              <form   action="Editprod.jsp">
            <tr>  
           <td><input type="submit" value=<%= resultset.getString("ID") %>> <a href="Editprod.jsp" ></a></td>
         
                    <td><input type="text" name="Name" value=<%= resultset.getString("Name")%>></td>  
                </tr>
                </form>
                
            
            <% } %>
           </table>
           
           
            
      <br>
      <br>
      <br>
   
    </body>
    </html>