

// AngularJs Module and Configurations
var app42Angular = angular.module('app42Angular', ['ngRoute','ngAnimate']);

// Routes configurations
app42Angular.config(['$routeProvider','$httpProvider',
    function($routeProvider,$httpProvider) {
        $routeProvider
        
        .when('/first-page', {
            templateUrl: 'angularTemplates/firstPage',
            controller: 'firstController'
        })
        .when('/second-page', {
            templateUrl: 'angularTemplates/secondPage',
            controller: 'secondController'
        })

        .when('/broadcast', {
            templateUrl: 'angularTemplates/broadcast',
            controller: 'broadcastController'
        })

        .otherwise({
            redirectTo: '/first-page'
        });
    }])
    