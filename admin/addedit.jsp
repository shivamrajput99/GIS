<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String Placename=request.getParameter("pname");
String Placeids=request.getParameter("placeids");

String Contactno=request.getParameter("contact");

String Category=request.getParameter("category");
String SelectCity=request.getParameter("city");
String SelectState=request.getParameter("state");

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "update place set  t_place_name='"+Placename+"',contact_no='"+Contactno+"',category_id='"+Category+"',city_id='"+SelectCity+"',state_id='"+SelectState+"' where t_place_id='"+Placeids+"' ";
PreparedStatement pst = null;
pst = connection.prepareStatement(query);
 pst.executeUpdate();



response.sendRedirect("viewplace.jsp?st=Edit success");







%>
