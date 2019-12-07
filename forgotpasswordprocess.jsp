<%-- 
    Document   : forgotpasswordprocess
    Created on : Oct 26, 2016, 2:16:02 PM
    Author     : user
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

String email=request.getParameter("email");


Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();


String query = "Select * from account where  account_email='"+email+"'";

 
rs=statement.executeQuery(query);
//out.println(query);

if(rs.next())
    {
     String type=rs.getString("account_password");    
     out.println("login success:"+type);
    response.sendRedirect("forgotpassword.jsp?pass="+type+"");
    }
else
    {
    
      response.sendRedirect("forgotpassword.jsp?notpass=??");
    }

statement.close();
connection.close();




%>
