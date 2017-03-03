

// Main controller section: All the common code can be written here so that every other controller have access to the code

app42Angular.controller("MainController", function($rootScope,$scope,$log,$location,$http,$timeout,$interval) {
	
 
    
 
    // Maximize | Restore  Grids
    $scope.initializeGridMaximize = function(){
        $('.widget-control-full-screen').on("click", function() {
            $elem = $(this)
            $elem.closest('.widget').toggleClass('widget-full-screen');
            return false;
        }); 
    }
    // Minimize Grids
    $scope.initializeGridMinimize = function(){
        $('.widget-control-minimize').on("click", function() {
            $elem = $(this)
            if($elem.closest('.widget').hasClass('widget-title-minimized')){
                $elem.closest('.widget').removeClass('widget-minimized').removeClass('widget-title-minimized').find('.widget-content').slideDown('fast');
            }else{
                $elem.closest('.widget').addClass('widget-minimized').find('.widget-content').slideUp('fast', function(){
                    $elem.closest('.widget').addClass('widget-title-minimized')
                });
            }
            return false;
        });
    }
   
    // Executes every 25 seconds for hiding messages
    $interval( function(){
        $("div.alert").hide("slow") // This logic could be improved
    }, 15000);
    
    // toggle grid loader
    $scope.toggleGridLoader = function(widgetID){
        $("#"+widgetID).toggleClass('widget-loading');
    }
  
 
    
 
});

