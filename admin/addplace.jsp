<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;

Statement statement2 = null;
 


ResultSet rs2 = null;

  
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);

statement2 = connection.createStatement();        
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Geographical Information System</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
    <script>
  function isAlfa(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
        return false;
    }
    return true;
}
    </script>
    <script>
  function isAlfa(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
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
		</div><!--/.row-->

        
                  <center>
		<div class="row">
			<div class="col-lg-12">
                            <legend><h1>Add Place</h1></legend>
                                
			</div>
	              </div>  </center>
         <center>       
        <table>
		
                 <%
                   if(request.getParameter("placeids")==null)
		             {
                            // out.println("null");
                             %>
                            <form id="loginform" action="addplaceprocess.jsp" method="post">
              
        
    <tr>
    <td>Select State</td>
    <td><select id="state" name="state" required>
        <option value="" >-select-</option>
        
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
  </tr><tr><td>&nbsp;</td></tr>
  
   <tr>
    <td>Select City</td>
    <td>
        
        <select id="city" name="city" required>
            <option value="">-select-</option>
         </select>
    </td>
   </tr>
 <tr><td>&nbsp;</td></tr>
 
 
    <tr>
    <td>Category</td>
    <td><select id="category" name="category" required>
        <option value="">-select-</option>
        
<%
Statement statement1 =null;
ResultSet rs1 =null;
statement1 = connection.createStatement();
String query1 = "select * from category";
rs1=statement1.executeQuery(query1);
out.println(query1);

while(rs1.next())
    {
        
           %>
            <option value="<% out.println(rs1.getInt("category_id"));   %>"><% out.println(rs1.getString("category_name"));   %></option>
            <%
            }
rs1.close();
statement1.close();
%>  

</select>       
</td>
  </tr><tr><td>&nbsp;</td></tr>
  <tr>
     
     <td>Place name</td>
    <td><input type="text" id=pname"  name="pname"  onkeypress="return isAlfa(event)" required></td>
</tr><tr><td>&nbsp;</td></tr>
 
  
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
<% if(request.getParameter("st1")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st1")%>";
       alert("Place is Already Registered");     
    </script> 
    
<% } %>
<% if(request.getParameter("st2")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st2")%>";
       alert("Place added is success...");     
    </script> 
    
<% } %> 
</form>
</table>
</center>
                             
                             
                          <%
 
                             }
else
                            {
                                 String s2=request.getParameter("placeids"); 
                                // out.println(s2);
                                 
                   String sql="Select * from place where t_place_id='"+s2+"'";
                      rs2=statement2.executeQuery(sql);
                             
                      //out.print(rs2);
	if(rs2.next())
    {

%>

<center>
<table>      
          <form id="loginform" action="addedit.jsp" method="post">
      
          
    
    <tr>
    <td> Select State </td>
    <td><select id="state" name="state"  required>
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
  </tr><tr><td>&nbsp;</td></tr>
  
   <tr>
       
    <td>Select City</td>
    <td>
        
        <select id="city" name="city" required>
            <option value="">-select-</option>
         </select>
        

    </td>
   </tr>
 <tr><td>&nbsp;</td></tr>.
 
 <input type="hidden" name="placeids" value="<% out.println(s2); %>"/>
    <tr>
        
    <td>Category</td>
    <td><select id="category" name="category" value="<% out.println(rs2.getString("category_id")); %>" required>
        <option value="">-select-</option>
        
    
<%
Statement statement1 =null;
ResultSet rs1 =null;
statement1 = connection.createStatement();
String query1 = "Select * from category";
rs1=statement1.executeQuery(query1);
//out.println(query);

while(rs1.next())
    {
        
            %>
            <option value="<% out.println(rs1.getInt("category_id"));   %>"><% out.println(rs1.getString("category_name"));   %></option>
            <%
            }
rs1.close();
statement1.close();
%>
</select> 

</td>
  </tr><tr><td>&nbsp;</td></tr>
  
  <input type="hidden" name="placeids" value="<% out.println(s2); %>"/>
   <tr>
        <td>Place name</td>
    <td><input type="text" id="pname" name="pname" value="<% out.println(rs2.getString("t_place_name")); %>" onkeypress="return isAlfa(event)" required   ></td>

</tr><tr><td>&nbsp;</td></tr>

  
  <input type="hidden" name="placeids" value="<% out.println(s2); %>"/>
      
     
<tr>
<td>
        <button type="submit" onclick="validate()"  class="btn btn-success"  >Update</button>
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
<% if(request.getParameter("st")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st")%>";
       alert("Place Edit is success...");     
    </script> 
    
<% } %>

<%
} 
                      }
%>


       </form>
                 </table>                 
                  </center>
                 
                 
                 
		<div class="row">
			
	  </div>
		
            </div>
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
