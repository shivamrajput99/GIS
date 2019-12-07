 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%
String name=request.getParameter("name");
 

String email=request.getParameter("email");
 

String number=request.getParameter("number");
 

String password=request.getParameter("password");
 
String repass=request.getParameter("repass");
 

        

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();




String query1 = "Select * from account where  account_email='"+email+"' and  	account_number 	='"+number+"'";
out.println(query1);
rs=statement.executeQuery(query1);

if(rs.next())
    {
    response.sendRedirect("register1.jsp?st=Already registered");
     out.println("Email or Mobile Already used.");
    }
else
    {
    String query = "insert into account(account_name,account_email,account_number,account_password,account_type) values('"+name+"','"+email+"','"+number+"','"+password+"','user')";
statement.executeUpdate(query);
response.sendRedirect("register1.jsp?st=success");
     out.println("fresh");

}
statement.close();
connection.close();

//pageContext.getOut().println("Record inserted");



%>
