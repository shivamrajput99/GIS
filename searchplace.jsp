<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/gis?user=root&pasword='' ";
Connection connection = null;



  
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);

       
%>

 
<!DOCTYPE HTML>
<html>
<head>
<title>Geographical Information System</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tour Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css'>
<!-- //end-smoth-scrolling -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!-- animated-css -->
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<!-- animated-css -->
<style>

.featured-block {border-radius:5px; background: #fff; overflow: hidden; margin-bottom: 30px; margin-block-start: 10px; 
        -moz-box-shadow:   0px 0px 10px 1px #aaa;
  -webkit-box-shadow: 0px 0px 10px 1px #aaa;
  box-shadow: 0px 0px 10px 1px #aaa;}


.table {
  border-spacing: 0;
 }
.td,
th {
  padding: 50;
}
.breadcrumb {
    padding: 8px 640px;
    margin-bottom: 20px;
    list-style: none;
    background-color: #f5f5f5;
    border-radius: 4px;
}
.col-md-offset-4 {
    margin-left: 0;
}
</style>
 </head>
<body>
<!--header start here-->
 <div class="header">
   <div class="container">
     <div class="header-main">
	   <div class="logo wow bounceInLeft" data-wow-delay="0.3s">
              <a href="#">  <h1 style="color:lightgreen;"><b>Geographical Information System</b></h1> </a>
               <a href="#">  <h1 style="color:lightgreen;">------------------------------------------</h1> </a>
	   </div>
	   <div class="top-navg">
			   <span class="menu"> <img src="images/icon.png" alt=""/></span>		
			  <nav class="cl-effect-13">				
				<ul class="res">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <li><a class="active" href="index.jsp">Home</a></li>
                                        <li><a href="login.jsp">Login</a></li>
                                        <li><a href="searchplace.jsp">Search Place</a></li>
                                        <li><a href="hotel.jsp">Best Hotel</a></li>
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><a href="hospital.jsp">Best Hospital</a></li>
                                        <li><a href="gallery.jsp">Gallery</a></li>
  					<li><a href="contact.jsp">Contact</a></li>
                                        
				</ul>
			 </nav>
			<!-- script-for-menu -->
				 <script>
				   $( "span.menu" ).click(function() {
					 $( "ul.res" ).slideToggle( 300, function() {
					 // Animation complete.
					  });
					 });
				</script>					
	   </div>
	    <div class="clearfix"> </div>
      </div>
    </div>
  </div>
<!--header end here-->
<!--about start here-->
 
<div class="shortcodes">
	<div class="container">
&nbsp;&nbsp;&nbsp;&nbsp;
<div class="short-codes wow bounceInLeft" data-wow-delay="0.3s">
		 <h3 class="typo1">Search Place</h3>
		 
		</div>	
           
        
          <div class="clearfix"> </div>
	
 
<center>
                <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
           
                
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <form action="searchplace.jsp" method="post">
                <tr>
                    <td><b>Select State</b></td>
   &nbsp; <td><select id="state" name="state" >
        <option value="" >-select-</option>
        
    <%
Statement statement =null;
ResultSet rs =null;
statement = connection.createStatement();
statement = connection.createStatement();
String query = "Select * from states where country_id=101";
rs=statement.executeQuery(query);
out.println(query);

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
<td>&nbsp;&nbsp;<b>Select City</b></td>
    <td> 
    &nbsp;<select id="city" name="city">
            <option value="">-select-</option>
    </select></td>
    <td>&nbsp;&nbsp;<b>Category</b></td>
    <td>&nbsp;<select id="category" name="category">
        <option value="">-select-</option>
        
<%
Statement statement1 =null;
ResultSet rs1 =null;
statement1 = connection.createStatement();
String query1 = "select * from category";
rs1=statement1.executeQuery(query1);
out.println(query);

while(rs1.next())
    {
        
           %>
            <option value="<% out.println(rs1.getInt("category_id"));   %>"><% out.println(rs1.getString("category_name"));   %></option>
            <%
            }
out.print(rs1);
rs1.close();
statement1.close();
%>  

</select>       
</td>
     
        
   <td> &nbsp;&nbsp;
       <input type="submit" onclick="validate()"  class="btn btn-success"  value="Show"></input>
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
</tr>  &nbsp;     
           </form>
            </table>
            <% 
            if(request.getParameter("state")!=null)
                {
            String st=request.getParameter("state");
           
             String st2=request.getParameter("city");
            
             String st3=request.getParameter("category");
             
             String st6=request.getParameter("placedescription");
 
             String st7=request.getParameter("placeaddress");
  
             String st8=request.getParameter("placenumber");
                                  
            // String st4=request.getParameter("placeid");
            //out.println("parth");
           // out.println(st4);
             //String st5=request.getParameter("pname");
             
              
              
          
            %>
   </center>
 	</div>
	</div> 

               
               <%
 Statement statement2 = null;
 Statement statement3 = null;
 Statement statement4 = null;
 Statement statement5 = null;
 Statement statement6 = null;
 Statement statement7 = null;
 Statement statement8 = null;
  Statement statement9 = null;

ResultSet rs2 = null;
ResultSet rs3 = null;
ResultSet rs4 = null;
ResultSet rs6 = null;
ResultSet rs7 = null;
ResultSet rs8 = null;
ResultSet rs9 = null;

statement2= connection.createStatement();  
statement3= connection.createStatement();  
statement4= connection.createStatement();
statement6= connection.createStatement();
statement7= connection.createStatement();
statement8= connection.createStatement();
statement9= connection.createStatement();

               String sql="select * from place     where place.category_id='"+st3+"'  and place.state_id='"+st+"' and place.city_id='"+st2+"' ";
                 //out.println(sql);
               rs2=statement2.executeQuery(sql);
             while(rs2.next())
              {
               %>             
<tr>
<td></td>
<td></td>
</tr> 
            <div class="container">
                <div class="row-fluid">
                    <div class="span6">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <div class="featured-block">
                                
    
 <center>
                         <table>
                      
                     
                                    <%    String sql1="select * from cities where id='"+st2+"' ";
                 //out.println(sql);
               rs3=statement3.executeQuery(sql1);
             if(rs3.next()) {   %>
 <tr>                  
<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

 
 &nbsp;&nbsp;&nbsp;&nbsp;   <iframe
  width="1000"
  height="250"
  frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/place?key= AIzaSyBHZWb_6Cb5iCtTDKmS-5BWTU4APZmyp3Y 
    &q=<% out.println(rs2.getString("t_place_name"));%>,<%=rs3.getString("cname")%>" allowfullscreen>
</iframe> 
</td> &nbsp;&nbsp;&nbsp;&nbsp; 
</tr>
        
                                 
                                 
                                     <h1 align="center"><b><% out.println(rs2.getString("t_place_name"));%></b></h1>
                       
&nbsp;&nbsp;&nbsp;&nbsp;<tr>
 <%
String sql6="select * from placedescription where t_place_id='"+rs2.getString("t_place_id")+"' ";
rs6=statement6.executeQuery(sql6);
//out.println(sql3);
while(rs6.next())
    {   
    
%>

<tr><h3><% out.println(rs6.getString("t_place_description"));%></h3></tr>
 
<%}%>
</tr>

&nbsp;&nbsp;&nbsp;&nbsp;<tr>
 <%
String sql7="select * from placeaddress where t_place_id='"+rs2.getString("t_place_id")+"' ";
rs7=statement7.executeQuery(sql7);
//out.println(sql3);
while(rs7.next())
    {   
    
%>

<tr><h3><% out.println(rs7.getString("t_address_name"));%></h3></tr>
 
<%}%>
</tr>

&nbsp;&nbsp;&nbsp;&nbsp;<tr>
 <%
String sql8="select * from placenumber where t_place_id='"+rs2.getString("t_place_id")+"' ";
rs8=statement8.executeQuery(sql8);
//out.println(sql3);
while(rs8.next())
    {   
    
%>

<tr><h3><% out.println(rs8.getString("t_place_number"));%></h3></tr>
 
<%}%>
</tr>

&nbsp;&nbsp;&nbsp;&nbsp;<td>
<%
String sql3="select * from file1 where t_place_id='"+rs2.getString("t_place_id")+"' ";
rs4=statement4.executeQuery(sql3);
//out.println(sql3);
while(rs4.next())
    {   
    
%>
 

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><img width="160" height="160" src="upload//<%=rs4.getString("file_path")%>">

<%}%>
</tr>
 </td> 
 
<tr>
    <td>
        
                                    <p class=""><% //out.println(rs2.getString("category_id"));%></p>
                                    <h4> <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="comm.jsp?placeid=<% out.println(rs2.getString("t_place_id"));%>" class="readmore"><i class="fw-icon-plus icon"></i>Click for Comment</a></b></h4>
 
                                 </td>
                            </tr>
                   
                              </table>
                              &nbsp;&nbsp;
                              
                              
                              </center>               
                                </div>
                        </div>
                    </div>
                </div>
            </div>
                 <%
                
             }
               }
               
                  } 
               %>
                
                
                
                
                
                
                
                
                <div class="copy-rights">
                  
                </div>
            

        

         <!-- /container -->

       <script src="index_files/jquery-1.txt"></script> 
<script src="index_files/bootstrap.txt"></script>
<script src="index_files/masonry.txt"></script>
    <script src="index_files/imagesloaded.txt"></script>
    <script src="index_files/classie.txt"></script>
    <script src="index_files/AnimOnScroll.txt"></script>
    
    <script>
      new AnimOnScroll( document.getElementById( 'grid' ), {
        minDuration : 0.4,
        maxDuration : 0.7,
        viewportFactor : 0.2
      } );
    </script>
<script>
$('#myCarousel').carousel({
    interval: 1800
});
</script>


    

</body></html>



<script src="jquery.js"></script>
<script>
$(document).ready( function(){
	
	$("#state").change( function(){
		var id = $(this).val();
		$.ajax({ 
 				 url: "data.jsp?state_id="+id,
  				 success: function(data) {
				 $('#city').html(data);
  				 }
			  });
	});
	
	 
});
</script>