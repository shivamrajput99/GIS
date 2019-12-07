<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

String user=request.getParameter("user");

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome to client</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<style type="text/css">
body,td,th {
	color: #990066;
	font-size: 16px;
	
}
body {
	background-color: #cccccc;
	font-weight: normal;
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
			  <a class="navbar-brand" href="#"><span><b>Tourist Information System</b></span></a>
				<ul class="user-menu">
					
			<a href="logout.jsp"> Log Out </a>

						
					
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">

		<ul class="nav menu">
			<li class="active"><a href="index.html"> Home </a></li>
		 <li><a href="searchplace.jsp">Search Place</a></li>
                   <li><a href="hotel.jsp">Best Hotel</a></li>
                                   <li><a href="hospital.jsp">Best Hospital</a></li>
                                   <li><a href="gallery.jsp">Gallery</a></li>
                                   <li><a href="contact.jsp">Contact</a></li>
                                   <li><a href="about.jsp">About</a></li>
                                   
                          


            
        </ul>
            			

			

	

	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">User panel</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Dashboard</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			
	  </div>
			
					<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">
                            							<input id="btn-input" type="text" class="form-control input-md" placeholder="<%                
String query = "Select * from account where  account_type='user'";
rs=statement.executeQuery(query);
      int count=0; 
while(rs.next())
    {
    count++;
    }
      out.println(count);
%>							
" /></div>
                                                        <div class="text-muted">All Users</div>
						</div>
					</div>
				</div>
			</div>
</div><!--/.row-->
		
<% if(request.getParameter("st2")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st2")%>";
       alert("Welcome Guest....");     
    </script> 
    
<% } %>	
		
		
								
			
					
					<!--<div >
						<div class="input-group">
                        

							<input id="btn-input" type="text" class="form-control input-md" placeholder="Type your message here..." />
							<span class="input-group-btn">
								<button class="btn btn-success btn-md" id="btn-chat">Send</button>
                                
							</span>
						</div>
					</div>
			
			
								
			</div><!--/.col-->
		</div><!--/.row-->
	</div>	<!--/.main-->

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
