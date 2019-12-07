<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
ResultSet rs = null;
%>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>



<html>
    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Geographical Information System</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
    <script>
        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }
    </script>
    <script>
        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }
    </script>
    <script>
        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
     <script>
        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
<style type="text/css">
    
td,th {
	font-size: 18px;
	color: #30a5ff;
}
body {
	background-image: url();
	background-color: #cccccc;
}
a {
	font-size: 14px;
}
center
{
margin: 1px 1px 1px 200px;
}
    
</style>


<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<script src="jquery.js"></script>
<script>
$(document).ready( function(){
	
	$("#state").change( function(){
		var id = $(this).val();
		$.ajax({ 
 				 url: "getdata.jsp?state_id="+id,
  				 success: function(data) {
				 $('#city').html(data);
  				 }
			  });
	});
	
	 
});
</script>
    </head>
    <body>
        
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			  <a class="navbar-brand" href="#"><span><b>Geographical Information System</b></span></a>
				<ul class="user-menu">
			<table border="0" align="right">		
                        <tr>
                        <td> <a href="logout.jsp"> Log Out </a></td>
                    </tr>
                     </table>
						
					
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">

	<ul class="nav menu">
			<li class="active"><a href="index.jsp"> Home </a></li>
                        <li><a href="showcomment.jsp">View Comment</a></li>
 		 <li><a href="addplace.jsp">Add Place</a></li>
                 <li><a href="viewplace.jsp">View Place</a></li>
                 <li><a href="uploadphoto.jsp">Upload Photos</a></li>
                   <li><a href="adddes.jsp">Place Description</a></li>
                  <li><a href="addnum.jsp">Place Number</a></li>
                  <li><a href="addadd.jsp">Place Address</a></li>
                     <li><a href="displaycat.jsp">Categories</a></li>
                 </ul>  
                 </div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Welcome to Admin panel</li>
			</ol>
		</div><!--/-->
            </div>
            
                     

  <center>
                    
                    <div class="row">
			<div class="col-lg-12">
                        <legend><h1>Add Number</h1></legend>
                        </div>
                </div></center>
                <center>
                    <div class="center">
        <table border="1"> 
          <%
               
               if(request.getParameter("placeid")!=null)
                {
            String st=request.getParameter("placeid");
           
             String st2=request.getParameter("pname");
             
             String st3=request.getParameter("city");
             
             String st4=request.getParameter("state");
             
             String st5=request.getParameter("pd");
           //?placeid=37&&pname=rcb&&city=Abrama&&state=Gujarat&&file=  
             session.setAttribute("pid",st);
             session.setAttribute("pname",st2);
               session.setAttribute("city",st3);
                  session.setAttribute("state",st4);
            %>
            
            
<INPUT TYPE="hidden"  VALUE="<%=st%>" NAME="pid" />
<input type="hidden" value="<%=st2%>" name=="pname"/>
              
        <form name="vivek" action="addnumberprocess.jsp" method="post">
            <tr border="1" class="table"><td>SNo</td><td><%=st%></td></tr>
            <tr border="1" class="table"><td>Name</td><td><%=st2%></td></tr>
            <tr border="1" class="table"><td>city</td><td><%=st3%></td></tr>
            <tr border="1" class="table"><td>state</td><td><%=st4%></td></tr>
            <tr border="1" class="table"><td>Place Number</td><td></td></tr>
            
            <% 
            String query1 = "Select * from   placenumber  where  t_place_id='"+st+"'";
            rs=statement.executeQuery(query1);

while(rs.next())
    {
   // out.println("hii");

            
            
            %>
            
            <tr border="1" class="table"><td><a href="deletenumber.jsp?numid=<%out.println(rs.getString("t_place_number_id"));%>"> <img src="images/del.jpg" alt="ed" width="50px" height="30px"></a> </td><td>  <%out.println(rs.getString("t_place_number"));%>   </td></tr>
            <%}%>
     
<br> <tr><td>Add Number</td><td> <input type="text"  name="pd" id="pd" required/></td></tr>
 <tr><td></td><td><input type="submit" value="submit" id="submit" name="submit"/></td></tr>
           <tr><td>
   </td></tr>
                 </form>
                  <%}%>      
                </table> 
            </div>
           </center>
    </body>
</html>