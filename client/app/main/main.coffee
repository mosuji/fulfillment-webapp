'use strict'

angular.module 'fulfillmentWebappApp'
.config ($stateProvider) ->
	$stateProvider
	.state 'main',
		url: '/'
		templateUrl: 'app/main/main.html'
		controller: 'MainCtrl'

	.state 'main.publications',
		url: 'publications'
		templateUrl: 'app/views/partials/publications.html'
		controller: 'PublicationsCtrl'
			
	.state 'main.shipments',
		url: 'shipments'
		templateUrl: 'app/views/partials/shipments.html'
		controller: 'ShipmentsCtrl'

	.state 'main.shipments.details',
		url: '/:id'
		templateUrl: 'app/views/partials/details.html'
		controller: 'ShipmentDetailsCtrl'

