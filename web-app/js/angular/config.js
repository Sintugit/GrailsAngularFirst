

// AngularJs Configurations

// Loader configurations
app42Angular.run(['$rootScope', function($root) {
    $root.$on('$routeChangeStart', function(e, curr, prev) { 
        $root.loadingView = true;
    });
    $root.$on('$routeChangeSuccess', function(e, curr, prev) { 
        // Hide loading message
        $root.loadingView = false;
    });
    $root.$on('$routeChangeError', function(e, curr, prev, rejection) {
        // you could look at rejection and do something depending on the status code. 
        if(rejection.status == 500){
           
        }
    });
}]);