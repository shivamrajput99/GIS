'<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

String admin=request.getParameter("admin");


Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();


String query = "Select * from account where account_type='"+admin+"'";

rs=statement.executeQuery(query);
//out.println(query);

if(rs.next())
    {
     String type=rs.getString("account_type"+admin);         
     out.println("login success");
  
    }
else
    {
     out.println("login fail");
    }


statement.close();
connection.close();

//response.sendRedirect("register1.jsp?st=success");




%>