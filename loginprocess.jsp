<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

String email=request.getParameter("email");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();


String query = "Select * from account where  account_email='"+email+"' and account_password='"+password+"'";

 
rs=statement.executeQuery(query);
//out.println(query);

if(rs.next())
    {
     String type=rs.getString("account_type");  
    
     
     if(type.equals("admin"))
         {
        out.println(type);
response.sendRedirect("admin/index.jsp?st1=success");  
     }
 
    }
else
    {
     
     response.sendRedirect("login.jsp?fail=Login fail");  
}



statement.close();
connection.close();
 

//response.sendRedirect("register1.jsp?st=success");









%>