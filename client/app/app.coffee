'use strict'

angular.module 'fulfillmentWebappApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'ui.bootstrap',
  'pascalprecht.translate',
  'angucomplete-alt',
  'angularUtils.directives.dirPagination'
]
.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $urlRouterProvider
  .otherwise '/'

  $locationProvider.html5Mode true


.config ($translateProvider) ->
	$translateProvider.useUrlLoader '/language'
	$translateProvider.determinePreferredLanguage()

.value 'ACCESS_TOKEN', 'APP_USR-1138849081739375-080411-3cf2546248c10c4bd30f3fd753f6ad2f__D_C__-72129964'