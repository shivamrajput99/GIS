<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Geographical Information System</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<style type="text/css">
    
body,td,th {
	font-size: 14px;
	color: #30a5ff;
}
body {
	background-image: url();
	background-color: #cccccc;
}
a {
	font-size: 14px;
}

     
</style>



<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

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
	</div>	<!--/.main-->
        
<center>
                    
                    <div class="row">
			<div class="col-lg-12">
                        <legend><h1>Description</h1></legend>
                        </div>
                </div></center>
                
        <table border="1" class="table">
                <tbody>
                    <tr><td>SNo</td><td>Discription</td><td>Name</td><td>City id</td><td>State id</td><td>Category</td></tr>     
                 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String sql="select * from place " +
        "inner join states on place.state_id=states.id "+
        "inner join cities on place.city_id=cities.id "+
        "inner join category on place.category_id=category.category_id ";
        
rs1=statement.executeQuery(sql);
//out.println(sql);

while(rs1.next())
    {
        
           
%>                 
<tr><td><% out.println(rs1.getInt("t_place_id"));%></td>
        <td>
  <a href="adddescription.jsp?placeid=<% out.println(rs1.getString("t_place_id"));%>&&pname=<% out.println(rs1.getString("t_place_name"));%>&&city=<% out.println(rs1.getString("cname"));%>&&state=<% out.println(rs1.getString("name"));%>&&file=<% //out.println(rs1.getString("file_path"));%>"><input type="button" value="Description"></a>
        </td>
  
<td><% out.println(rs1.getString("t_place_name"));%></td>

<td><% out.println(rs1.getString("cname"));%></td>
<td><% out.println(rs1.getString("name"));%></td>
<td><% out.println(rs1.getString("category_name"));%></td>

    
    

</tr>
                
                <% } %>
               </tbody> 
            </table>

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
		});

		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
