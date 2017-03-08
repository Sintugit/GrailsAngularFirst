

app42Angular.factory('broadcastService', function($rootScope,$http) {

    var service = {

        getContentFromBackend: function() {
            var promise = $http({
                method: 'GET',
                url: 'broadcast/getContent'
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },

        setStatus: function(x) {
            var promise = $http({
                method: 'POST',
                url: 'broadcast/setStatus',
                dataType: 'json',
                data: { id: x.id ,status: x.status}
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },

        delete: function(x) {
            var promise = $http({
                method: 'POST',
                url: 'broadcast/delete',
                dataType: 'json',
                data: { id: x.id }
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        }
    }
    return service
});