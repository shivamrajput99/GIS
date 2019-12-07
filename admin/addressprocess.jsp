 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<% 
String Placeaddress=request.getParameter("pd");
out.println(Placeaddress);


Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from  placeaddress where  t_address_name='"+Placeaddress+"'";
out.println(query);
rs1=statement.executeQuery(query);

if(rs1.next())
    {
   // response.sendRedirect("addplace.jsp?st=Already registered");
    response.sendRedirect("addadd.jsp?st1=Already registered");
     out.println("Place is Already Registered");
    }
else
    {
    String query1 = "insert into  placeaddress(t_address_name,t_place_id)values('"+Placeaddress+"','"+session.getAttribute( "pid" )+"')";
statement.executeUpdate(query1);
response.sendRedirect("addadd.jsp?st2=success");

}



%>