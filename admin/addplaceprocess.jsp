 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%

String SelectState=request.getParameter("state");
out.println(SelectState);

String SelectCity=request.getParameter("city");
out.println(SelectCity);

String Category=request.getParameter("category");
out.println(Category);


String Placename=request.getParameter("pname");
out.println(Placename);


 
String Contactno=request.getParameter("contact");
out.println(Contactno);



Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from place where  t_place_name='"+Placename+"'";
out.println(query);
rs1=statement.executeQuery(query);


if(rs1.next())
    {
   // response.sendRedirect("addplace.jsp?st=Already registered");
    response.sendRedirect("addplace.jsp?st1=Already registered");
     out.println("Place is Already Registered");
    }
else
    {
    String query1 = "insert into place(state_id,city_id,category_id,t_place_name,contact_no)values('"+SelectState+"','"+SelectCity+"','"+Category+"','"+Placename+"','"+Contactno+"')";
statement.executeUpdate(query1);
response.sendRedirect("addplace.jsp?st2=success");

}



statement.close();
connection.close();


%>
