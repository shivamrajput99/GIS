var myApp=angular.module("myApp",[]);
 
myApp.controller('myController',['$scope',function($scope){
    $scope.gamil=  {
        username:" ",
        email:" "     
        };
        $scope.onGoogleLogin=funtion(){
            var params={
                'clienid':'961271973200-c5va9qgvtmatn504cfc5l0d6ddalq6fb.apps.googleusercontent.com',
                'cookiespolicy':'single_host_origin',
                'callback':function(result){
                    if(result['status']['signed_in']){
                        var request=gapi.client.plus.people.get(
                        {
                    'userid':'me'
                        }
                    );
                        request.execute(function(resp){
                        $scope.$apply(function(){
                        $scope.gamil.email=resp.displayName;
                        $scope.gamil.email=resp.email[0].value;
                        });
                        });
                    }
                    
                },
                'approvalprompt':'force',
                'scope':'https://www.googleapis.com/auth/plus.login  https://www.googleapis.com/auth/plus.profile.emails.read '
                
            };
            gapi.auth.signIn(params);
        }
    
    }]);

