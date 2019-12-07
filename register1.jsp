 
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
</head>
<body onload="generateCaptcha()">

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

		 <h3 class="typo1">Create Your Account</h3>
		 
                                   <div class="clearfix"> </div>

            
        
			<hr class="colorgraph">

       <form id="reg-form" name="reg" action="registerprocess.jsp" method="post">
			<div class="row">
				  <div class="col-xs-12 col-sm-12 col-md-12">
					<div class="form-group">
                        <input type="text" name="name" id="name" class="form-control input-lg" placeholder="First Name" tabindex="1" required/>
					</div>
				</div>
				 
			</div>
                        
                        <div class="form-group">
				<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="2" required/>
			</div>
                        
                              <div class="col-xs-14 col-sm-14 col-md-14">
                        <div class="form-group">
				<input type="text" name="number" id="number" class="form-control input-lg" onkeypress="return isNumber(event)" maxlength="10" placeholder="Your Number" tabindex="3" required/>
			</div>
                    </div>
			
			
                  
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="4" required/>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="repass" id="repass"  class="form-control input-lg" placeholder="Confirm Password" tabindex="5" required/>
					
                                        </div>
				</div>
			</div>

                   <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <input type="text" id="inputText"class="form-control input-lg" onkeypress="return isNumber(event)" maxlength="4" placeholder="Enter captcha" tabindex="6" required/>
                    </div>
                      </div>
                     <div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                                            <b> <input type="text" id="captcha" class="form-control input-lg"></b>
                                        </div>
                                    </div>
              
            </div>
            <script>
var captcha;
 
function generateCaptcha() {
    var a = Math.floor((Math.random() * 10));
    var b = Math.floor((Math.random() * 10));
    var c = Math.floor((Math.random() * 10));
    var d = Math.floor((Math.random() * 10));
 
    captcha=a.toString()+b.toString()+c.toString()+d.toString();
    
    document.getElementById("captcha").value = captcha;
}
 
   $(function Captcha() {
        $("#btnSubmit").click(function () {
            var captcha = $("#captcha").val();
            var inputText = $("#inputText").val();
            if (captcha != inputText) {
                alert("captcha do not match.");
                return false;
            }
            return true;
        });
    });

</script> 
                            
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit"  value="Register"  id="btnSubmit"  class="btn btn-primary btn-block btn-lg" tabindex="7"> </div>
				<div class="col-xs-12 col-md-6"><a href="login.jsp" class="btn btn-success btn-block btn-lg">Sign to your account</a></div>
			</div>
<% if(request.getParameter("st")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st")%>";
       alert("Account Created Successful...");     
    </script> 
    
<% } %>
		</form>
</div></div></div></div></div>
                
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#password").val();
            var repass = $("#repass").val();
            if (password != repass) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script> 

</div>
</div>
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
</body>     
</html>