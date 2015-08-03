'use strict'

angular.module 'fulfillmentWebappApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'ui.bootstrap',
  'pascalprecht.translate'
]
.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $urlRouterProvider
  .otherwise '/'

  $locationProvider.html5Mode true


.config ($translateProvider) ->
	$translateProvider.useUrlLoader '/language'
	$translateProvider.determinePreferredLanguage()

.value 'ACCESS_TOKEN', 'APP_USR-1138849081739375-073112-6cb42acef736d646da63708642a2f788__C_H__-72129964'