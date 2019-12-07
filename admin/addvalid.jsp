<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;  
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
        
%>
<html>
    <head>
        
    </head>
    <body>
        <center>
        <table>
            <form id="loginform" action="actionadd.jsp" method="post">

             <tr>
    <td> Select State </td>
    <td><select id="state" name="state" required >
        <option value="">-select-</option>
        
    
<%
Statement statement = null;   
ResultSet rs = null;
statement = connection.createStatement();
String query = "Select * from states where country_id=101";
rs=statement.executeQuery(query);
//out.println(query);

while(rs.next())
    {
        
            %>
            <option value="<% out.println(rs.getInt("id"));   %>"><% out.println(rs.getString("name"));   %></option>
            <%
            }
rs.close();
statement.close();
%>
</select>       
</td>
  </tr>
  <tr>
  <td>
      <button type="submit" onclick="validate()"  class="btn btn-success"  >submit</button>
  <script type="text/javascript">
    function validate()
{
   if(document.getElementById("state").value == "")
   {
      alert("Please select value"); // prompt user
      document.getElementById("state").focus(); //set focus back to control
      return false;
   }
}
</script>
  
  </td>
  </tr>
   
 
  
</form>
</table>
        </center>
    </body>
</html>