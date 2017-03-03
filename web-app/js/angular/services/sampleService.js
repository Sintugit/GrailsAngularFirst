

//  Services

app42Angular.factory('sampleService', function($rootScope,$http) {
   
    var service = {
        
        getContentFromBackend: function() {
            var promise = $http({
                method: 'GET', 
                url: 'main/getContent'
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        }
    }
    return service
});