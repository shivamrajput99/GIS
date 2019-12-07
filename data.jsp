<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%
if(request.getParameter("state_id")==null)
{
}
  else
  {
String state=request.getParameter("state_id");  
String buffer="<option value='0'>-select-</option>"; 
 
 
  
 try{
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "select * from cities where state_id='"+state+"' ";
rs=statement.executeQuery(query);
 
 
 
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getInt(1)+"'>"+rs.getString(2)+"</option>";  
   }  

 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }
}
 /////////////////city fatch getdata
 
 %>
 
 