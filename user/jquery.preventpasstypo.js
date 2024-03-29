/*
    jQuery Extension
    Name: PreventPassTypo
    Author: Dominic Vonk
    Date: 3 April 2013
    Version: 0.1.7
    
    Solution 1:
    
    <input type="password" id="password" name="password" />
    
    Usage:
    
    $("#password").preventPassTypo(); //Only When Writing
    
    Or
    
    $("#password").preventPassTypo(17); //Only When Pressed KeyChar 17 (CTRL)
    
    
    Solution 2:
    
    <input type="password" id="password" name="password" />
    <input type="checkbox" id="showpass" name="showpass" />
    
    Usage:
    
    $("#showpass").preventPassTypoOn("#password"); //Only when checkbox #showpass is checked
    
    
    Solution 3 (Combinate Solution 1 & 2)
    
    <input type="password" id="password" name="password" />
    <input type="checkbox" id="showpass" name="showpass" />
    
    Usage:
    
    $("#password").preventPassTypo(); //Only When Writing
     $("#showpass").preventPassTypoOn("#password"); //and when checkbox #showpass is checked
    
    Or
    
    $("#password").preventPassTypo(17); //Only When Pressed KeyChar 17 (CTRL)
    $("#showpass").preventPassTypoOn("#password"); //and when checkbox #showpass is checked
     
*/
$.fn.extend({
	preventPassTypo : function(onkey) {
		dsawq984hc908r2 = true;
		if(typeof onkey === "undefined") {
			$(this).keydown(function(){
				checkwhat = event.keyCode ? event.keyCode : event.which;
				var c = String.fromCharCode(event.keyCode);
				var isWordcharacter = (/\w/.test(c));
				var isBackspaceOrDelete = (event.keyCode == 8 || event.keyCode == 46);
				var isPaste =  ((event.ctrlKey || event.metaKey) &&  event.keyCode == 86);
				
				
				
				if (isWordcharacter || isBackspaceOrDelete || isPaste) {
					$(this).attr("type", "text");

				}
			}).keyup(function(){
				what = this; 
				if (typeof themastertimerofpreventtypo !== "undefined"){
					clearTimeout(themastertimerofpreventtypo);
				}
				themastertimerofpreventtypo = setTimeout(function(){ if(dsawq984hc908r2) { $(what).attr("type", "password"); } },1000);
			});
		}
		else {
			$(this).keydown(function(e){
				if (e.which == onkey) {
					$(this).attr("type", "text");
				}
			}).keyup(function(e){
				if (e.which == onkey) {
					what = this; 
					if(dsawq984hc908r2) { 
						$(what).attr("type", "password"); 
					}
				}
			});
		}
	},
	preventPassTypoOn : function(onpass, onkey) {
		var what = this;
		$(what).change(function(){
			if($(what).is("input:checked")) {
				$(onpass).attr("type", "text");
				dsawq984hc908r2 = false;
			}
			else {
				$(onpass).attr("type", "password");
				dsawq984hc908r2 = true;
			}
		});
	}
});