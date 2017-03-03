/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


app42Angular.controller("firstController", function($rootScope,$scope,sampleService,$log,$location,$http,$timeout,$interval) {
    
    // This can also be called from backend 
    $scope.data1 = [
    {
        id:1,
        name:"Jatin",
        lastName:"Chauhan",
        dob:new Date()
    },{
        id:2,
        name:"John",
        lastName:"Doe",
        dob:new Date()
    },{
        id:3,
        name:"Mark",
        lastName:"Twain",
        dob:new Date()
    }
    ]
    
    $scope.reload = function(){
         $scope.getData()
    }
    
    $scope.getData = function(){
        $scope.toggleGridLoader("myWidget")  // defined in main controller
        var promise = sampleService.getContentFromBackend()
        promise.then(
            function(payload) { 
                $scope.data  = payload.data;
                $scope.toggleGridLoader("myWidget")
            })
        
    }
    $scope.getData()
    
});