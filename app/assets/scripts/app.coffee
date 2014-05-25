'use strict'

angular.module('gitPrettyStats', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'chieffancypants.loadingBar'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainController'
        resolve:
          repositories: (Repository) ->
            Repository.all()
      .otherwise
        redirectTo: '/'
  .config (cfpLoadingBarProvider) ->
    cfpLoadingBarProvider.includeSpinner = false;
