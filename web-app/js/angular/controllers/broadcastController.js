/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


app42Angular.controller("broadcastController", function($rootScope,$scope,broadcastService,$log,$location,$http,$timeout,$interval) {


    $scope.reload = function(){
        $scope.getData()
    }

    $scope.getData = function(){
        $scope.toggleGridLoader("myWidget")  // defined in main controller
        var promise = broadcastService.getContentFromBackend()
        promise.then(
            function(payload) {
                $scope.data  = payload.data;
                $scope.toggleGridLoader("myWidget")
            })

    }
    $scope.getData()

});