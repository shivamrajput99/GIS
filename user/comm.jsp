 
<!DOCTYPE HTML>
<html>
<head>
<title>Tourist Information System</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />	
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tour Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css'>
<!-- //end-smoth-scrolling -->
<script src="js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider2").responsiveSlides({
        auto: true,
        pager: true,
        speed: 300,
        namespace: "callbacks",
      });
    });
  </script>
<!-- requried-jsfiles-for owl -->
		<link href="css/owl.carousel.css" rel="stylesheet">
		<script src="js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 3,
						lazyLoad : true,
						autoPlay : false,
						pagination : true,
					});
				});
			</script>
		<!-- //requried-jsfiles-for owl -->
<!-- animated-css -->
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<!-- animated-css -->
<style>
    .breadcrumb {
    padding: 8px 640px;
    margin-bottom: 20px;
    list-style: none;
    background-color: #f5f5f5;
    border-radius: 4px;
}
</style>
</head>
<body>

<!--header start here-->
 <div class="header">
   <div class="container">
     <div class="header-main">
	   <div class="logo wow bounceInLeft" data-wow-delay="0.3s">
               <a href="#">  <h1 style="color:lightgreen;"><b>Tourist Information System</b></h1> </a>
               <a href="#">  <h1 style="color:lightgreen;">------------------------------------------</h1> </a>

	   </div>
	   <div class="top-navg">
			   <span class="menu"> <img src="images/icon.png" alt=""/></span>		
			  <nav class="cl-effect-13">				
				<ul class="res">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <li><a class="active" href="index.jsp">Home</a></li>
                                        <li><a href="searchplace.jsp">Search Place</a></li>
                                        <li><a href="hotel.jsp">Best Hotel</a></li>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                                   <li><a href="hospital.jsp">Best Hospital</a></li>
					<li><a href="gallery.jsp">Gallery</a></li>
					<li><a href="contact.jsp">Contact</a></li>
                                        <li><a href="about.jsp">About</a></li>
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
<div class="row">
			<ol class="breadcrumb">
				<li></li>
                                <li><b>User panel</b></li>
			</ol>
		</div><!--/.row-->
<div class="shortcodes">
	<div class="container">
	
                           <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
&nbsp;&nbsp;&nbsp;&nbsp;
       <div class="short-codes wow bounceInLeft" data-wow-delay="0.3s">

		 <h3 class="typo1">Give Comments</h3>
		 
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
                
                <div class="fb-comments" data-href="http://localhost:16705/gps/index.jsp" data-numposts="5"></div>

            </center>
</div></div></div></div>
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