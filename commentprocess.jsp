 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<% 

String cname=request.getParameter("name");
out.println(cname);

String cemail=request.getParameter("email");
out.println(cemail);

String cnumber=request.getParameter("number");
out.println(cnumber);

String comment=request.getParameter("comm");
out.println(comment);

 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from  comment where  user_comment='"+comment+"'";
out.println(query);
rs1=statement.executeQuery(query);

if(rs1.next())
    {
   // response.sendRedirect("addplace.jsp?st=Already registered");
   response.sendRedirect("searchplace.jsp?st1=Already registered");
     out.println("Place is Already Registered");
    }
else
    {
    String query1 = "insert into comment(t_place_id,user_name,user_email,user_number,user_comment)values('"+session.getAttribute( "pid" )+"','"+cname+"','"+cemail+"','"+cnumber+"','"+comment+"')";
//out.println(query1);
    statement.executeUpdate(query1);
response.sendRedirect("searchplace.jsp?st2=success");

}



%>