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

    $scope.removeRow = function($index){
        $scope.data.splice($index, 1 );
    }

    $scope.changeStatus = function(x){
        if(x.status =='Running'){
            x.status = 'Suspended';
        }
        else{
            x.status = 'Running';
        }

    }

    $scope.copyRow = function(x){
        $scope.data.push({'id': x.id,'name': x.name,'status': x.status});
    }

    $scope.updateName = function(x){
        x.name = newName;
    }

    $scope.removeTag = function($index,tags){
        tags.splice($index,1);
    }

});