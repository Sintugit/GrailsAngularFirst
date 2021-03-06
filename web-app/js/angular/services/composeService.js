

app42Angular.factory('composeService', function($rootScope,$http) {

    var service = {

        getContentFromBackend: function() {
            var promise = $http({
                method: 'GET',
                url: 'broadcast/getContent'
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        }
    }
    return service
});