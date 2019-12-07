
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
    <style>
      .input-com {
  height: 90px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}

.abc {
  margin-right: -15px;
  margin-left: 190px;
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
	
                           <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
&nbsp;&nbsp;&nbsp;&nbsp;
       <div class="short-codes wow bounceInLeft" data-wow-delay="0.3s">

		 <h3 class="typo1">Give Comment</h3>
		 
                                   <div class="clearfix"> </div>
                                   
        
   <%
               
               if(request.getParameter("placeid")!=null)
                {
            String st=request.getParameter("placeid");
           
             session.setAttribute("pid",st);
            %>
            

<INPUT TYPE="hidden"  VALUE="<%=st%>" NAME="pid" />


 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form id="comm-form" name="reg" action="commentprocess.jsp" method="post">
			<div class="row">
				  <div class="col-xs-12 col-sm-12 col-md-12">
					<div class="form-group">
                        <input type="text" name="name" id="name" class="form-control input-lg" placeholder="First Name"  onkeypress="return isAlfa(event)" required/>
					</div>
				</div>
				 
			</div>
                        
                        <div class="form-group">
				<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address"  required/>
			</div>
                        
                              <div class="col-xs-14 col-sm-14 col-md-14">
                        <div class="form-group">
				<input type="text" name="number" id="number" class="form-control input-lg" onkeypress="return isNumber(event)" placeholder="Your Number"  required/>
			</div>
                    </div>
                    <div class="row">
				  <div class="col-xs-14 col-sm-14 col-md-14">
					<div class="form-group">
                        <input type="text" name="comm" id="comm" class="form-control input-com" placeholder="Give Comment" required/>
					</div>
				</div>
				 
			</div>

<div class="abc">
				<div class="col-xs-12 col-md-6"><input type="submit"  value="Submit"  id="btnSubmit"  class="btn btn-primary btn-block btn-lg"> </div>
			</div>
                        
              </form>  
                 
                   <%}%> 
                           </div>
                   </div></div>
                   </div>
