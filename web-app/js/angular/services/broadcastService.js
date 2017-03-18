

app42Angular.factory('broadcastService', function($rootScope,$http) {

    var service = {

        getContentFromBackend: function() {
            var promise = $http({
                method: 'GET',
                url: 'broadcast/getContent'
            }).success(function(data, status, headers, config) {
                return data;
            });
            return promise;
        },

        getAnalytics: function() {
            var promise = $http({
                method: 'GET',
                url: 'broadcast/getAnalyticContent'
            }).success(function(data, status, headers, config) {
                return data;
            });
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
            });
            return promise;
        },

        view: function(id) {
            var promise = $http({
                method: 'GET',
                url: 'broadcast/view',
                dataType: 'json',
                data: { id: id }
            }).success(function(data, status, headers, config) {
                return data;
            });
            return promise;
        },

        delete: function(id) {
            var promise = $http({
                method: 'DELETE',
                url: 'broadcast/delete',
                dataType: 'json',
                data: { id:id}
            }).success(function(data, status, headers, config) {
                return data;
            });
            return promise;
        },

        copy: function(id) {
            var promise = $http({
                method: 'POST',
                url: 'broadcast/copy',
                dataType: 'json',
                data: { id:id}
            }).success(function(data, status, headers, config) {
                return data;
            });
            return promise;
        },

        analyticsModal: function(id) {
            var promise = $http({
                method: 'GET',
                url: 'broadcast/broadcastData',
                dataType: 'json',
                data: { id:id}
            }).success(function(data, status, headers, config) {
                return data;
            });
            return promise;
        },

        search: function(searchType,searchText){
            var promise = $http({
                method: 'POST',
                url: 'broadcast/search',
                dataType: 'json',
                data: { searchType:searchType,searchText:searchText}
            }).success(function(data, status, headers, config) {
                return data;
            });
            return promise;
        },

        report: function(id){
            var promise = $http({
                method: 'POST',
                url: 'broadcast/report',
                dataType: 'json',
                data: { id:id}
            }).success(function(data, status, headers, config) {
                return data;
            });
            return promise;
        }
    }
    return service
});