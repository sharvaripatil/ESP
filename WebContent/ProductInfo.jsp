<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ESP UPDATE</title>
</head>
<body>
<%!
public class Exe
{
	    
	        Connection conn = null;  
	        PreparedStatement insertExe = null;  
	        ResultSet rs = null; 
	        String url = "jdbc:mysql://localhost:3306/";  
	        String dbName = "form";  
	        String driver = "com.mysql.jdbc.Driver";  
	        String userName = "root";  
	        String password = "root";  
	        
	        public Exe()
	        {
	        
	        try {  
	   conn = DriverManager.getConnection(url + dbName, userName, password);  
	   
	   insertExe = conn.prepareStatement("INSERT INTO product(ID,Name,Decr)" + "VALUES (?,?,?)");
	        }
	        catch(SQLException e)
	        {
	        	e.printStackTrace();
	        }
	        }
	        
	   public int setExe(String IDa,String Namea,String Decra)
	   {
		  int result=0;
		  
		  try {
		  insertExe.setString(1, IDa);
		  insertExe.setString(2, Namea);
		  insertExe.setString(3, Decra);
		 
          result=insertExe.executeUpdate();
		  }
	        catch(SQLException e)
	        {
	        	e.printStackTrace();
	        }
		  return result;
	   }
}
%>
<%
int result=0;
 String ID=new String();
 String Name=new String();
 String Decr=new String();

 
 if(request.getParameter("IDa") !=null)
 {
	 ID=request.getParameter("IDa");
 }
 if(request.getParameter("Namea") !=null)
 {
	 Name=request.getParameter("Namea");
 }
 if(request.getParameter("Decra") !=null)
 {
	 Decr=request.getParameter("Decra");
 }
 

 Exe ex=new Exe();
 result=ex.setExe(ID, Name, Decr);
 
 
%>
  <FORM ACTION="ProductInfo.jsp" METHOD="POST">
<h3>Enter the Product Here...</h3>
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
                  <td><input type="submit" value="Apply"/></td>  
                  <td><input type="Reset" value="Cancel"/></td>  
                </tr> 
         
     </table>
     </FORM>
           
</body>
</html>