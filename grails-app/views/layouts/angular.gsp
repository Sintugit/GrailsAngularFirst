<!DOCTYPE html>
<html lang="en"  xmlns:ng="https://angularjs.org" id="ng-app" ng-app="app42Angular" data-ng-controller="MainController" >
  <head>
    <title><g:layoutTitle default="App42" /></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" media="all" type="text/css" href="https://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel='stylesheet' href='${resource(dir:'css',file:'custom_style.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css',file:'custom_styleV2.css')}'>
  
    <link rel='stylesheet' href='${resource(dir:'css',file:'app.css')}'>


  
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/css/bootstrap3/bootstrap-switch.css'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,700|Roboto+Condensed:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    <link href="assets/apple-touch-icon.png" rel="apple-touch-icon">

 <g:layoutHead />

</head>
<body class="glossed">

<g:layoutBody />

<script src='${resource(dir:'js/angular',file:'jquery-1.10.2.min.js')}'></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-sanitize.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-animate.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-route.min.js"></script>

<!--angular js scripts-->
<script src="${resource(dir:'js/angular',file:'CONSTANTS.js')}"></script>
<script src="${resource(dir:'js/angular',file:'util.js')}"></script>
<!--Route Manager-->
<script src="${resource(dir:'js/angular/routes',file:'routeManager.js')}"></script>
<!--Configurations-->
<script src="${resource(dir:'js/angular',file:'config.js')}"></script>
<!--Interceptors-->
<script src="${resource(dir:'js/angular/interceptors',file:'main.js')}"></script>
<!--Directives-->
<script src="${resource(dir:'js/angular/directives',file:'custom.js')}"></script>
<!--Filters-->
<script src="${resource(dir:'js/angular/filters',file:'custom.js')}"></script>
<!--Services-->
<script src="${resource(dir:'js/angular/services',file:'sampleService.js')}"></script>
<script src="${resource(dir:'js/angular/services',file:'broadcastService.js')}"></script>
<!--Controllers-->

<script src="${resource(dir:'js/angular/controllers',file:'main.js')}"></script>
<script src="${resource(dir:'js/angular/controllers',file:'firstController.js')}"></script>
<script src="${resource(dir:'js/angular/controllers',file:'secondController.js')}"></script>
<script src="${resource(dir:'js/angular/controllers',file:'broadcastController.js')}"></script>
<script src='${resource(dir:'js/angular/resources',file:'application.js')}'></script>

</body>
</html>