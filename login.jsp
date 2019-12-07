  
<!DOCTYPE HTML>
<html>
<head>
<title>Geographical Information System</title>
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

		 <h3 class="typo1">Sign in Your Account</h3>
                
		 
                                   <div class="clearfix"> </div>

			<hr class="colorgraph">
                            <form id="reg-form" name="reg" action="loginprocess.jsp" method="post">
			
                        
                        <div class="form-group">
				<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="1" required/>
			</div>
             
		<div class="form-group">	
		<div class="password">
	<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="2" required/>
         
	</div>
	</div>			
				
            
                   
                  <div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="submit"  value="Sign in your account"  id="btnSubmit"  class="btn btn-primary btn-block btn-lg" tabindex="3"> </div>
					</div>
<% if(request.getParameter("fail")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("fail")%>";
       alert("Username Either password is fail.....Please try again...");     
    </script> 
    
<% } %>
 


    
                
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						 <a href="forgotpassword.jsp" class="btn btn-primary btn-block btn-lg" tabindex="3">Show Password</a>
					
                                        </div>
				</div>
				</div>
                        
			
 </form>
                
 

</div>
</div></div></div>
</div>

<script type="text/javascript">
  
$(function () {
    $('.button-checkbox').each(function () {

        // Settings
        var $widget = $(this),
            $button = $widget.find('button'),
            $checkbox = $widget.find('input:checkbox'),
            color = $button.data('color'),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        // Event Handlers
        $button.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });

        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $button.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $button.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$button.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $button
                    .removeClass('btn-default')
                    .addClass('btn-' + color + ' active');
            }
            else {
                $button
                    .removeClass('btn-' + color + ' active')
                    .addClass('btn-default');
            }
        }

        // Initialization
        function init() {

            updateDisplay();

            // Inject the icon if applicable
            if ($button.find('.state-icon').length == 0) {
                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i>');
            }
        }
        init();
    });
});
</script>
<script type="text/javascript">
$(function(){
var textfield = $("input[name=user]");
            $('button[type="submit"]').click(function(e) {
                e.preventDefault();
                //little validation just to check username
                if (textfield.val() != "") {
                    //$("body").scrollTo("#output");
                    $("#output").addClass("alert alert-success animated fadeInUp").html("Welcome back " + "<span style='text-transform:uppercase'>" + textfield.val() + "</span>");
                    $("#output").removeClass(' alert-danger');
                    $("input").css({
                    "height":"0",
                    "padding":"0",
                    "margin":"0",
                    "opacity":"0"
                    });
                    //change button text 
                    $('button[type="submit"]').html("continue")
                    .removeClass("btn-info")
                    .addClass("btn-default").click(function(){
                    $("input").css({
                    "height":"auto",
                    "padding":"10px",
                    "opacity":"1"
                    }).val("");
                    });
                    
                    //show avatar
                    $(".avatar").css({
                        "background-image": "url('http://api.randomuser.me/0.3.2/portraits/women/35.jpg')"
                    });
                } else {
                    //remove success mesage replaced with error message
                    $("#output").removeClass(' alert alert-success');
                    $("#output").addClass("alert alert-danger animated fadeInUp").html("sorry enter a username ");
                }
                //console.log(textfield.val());

            });
});

$("#password").on("keyup",function(){
    if($(this).val())
        $(".glyphicon-eye-open").show();
    else
        $(".glyphicon-eye-open").hide();
    });
$(".glyphicon-eye-open").mousedown(function(){
                $("#password").attr('type','text');
            }).mouseup(function(){
            	$("#password").attr('type','password');
            }).mouseout(function(){
            	$("#password").attr('type','password');
            });
</script>

           </div>   
 
   
   
   
</body>
</html>
 

