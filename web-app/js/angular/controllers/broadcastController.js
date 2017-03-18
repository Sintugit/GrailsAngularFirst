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

    $scope.reload = function(){
        $scope.getAnalyticsData()
    }

    $scope.getAnalyticsData = function(){
        $scope.toggleGridLoader("myWidget")  // defined in main controller
        var promise = broadcastService.getAnalytics()
        promise.then(
            function(payload) {
                $scope.analyticData  = payload.data;
                $scope.toggleGridLoader("myWidget")
            })

    }
    $scope.getAnalyticsData()

    $scope.removeRow = function($index, id){
        var promise = broadcastService.delete(id)
        promise.then(
            function(payload) {
                if(payload.data.status == 'success') {
                    $scope.data.splice($index, 1);
                }
            })

    }

    $scope.changeStatus = function(x){
        var promise = broadcastService.setStatus(x)
        promise.then(
            function(payload) {
                if(payload.data.status == 'success') {
                    if (x.status == 'Running') {
                        x.status = 'Suspended';
                    }
                    else {
                        x.status = 'Running';
                    }
                }
            })
    }

    $scope.copyRow = function(x){
        var promise = broadcastService.copy(x.id)
        promise.then(
            function(payload) {
                if(payload.data.status == 'success') {
                    $scope.data.push({'id': x.id,'name': x.name,'tags': x.tags,'status': x.status});
                }
            })
    }

    $scope.updateName = function(x){
        x.name = newName;
    }

    $scope.removeTag = function($index,tags){
        tags.splice($index,1);
    }

    $scope.analyticsModal = function(x){
        var promise = broadcastService.analyticsModal(x.id)
        promise.then(
            function(payload) {
                $scope.broadcastData = payload.data;
            })
        $scope.current = x;
    }

});