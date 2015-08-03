'use strict'

angular.module 'fulfillmentWebappApp'

.controller 'PublicationsCtrl', ($scope, $http, $location, ACCESS_TOKEN) ->
	$scope.items = []
	$scope.paging = []

	query = $location.search().query
	options =
		url: 'https://api.mercadolibre.com/users/72129964/items/search'
		method: 'GET'
		params:
			status: 'active,paused'
			listing_type_id: 'gold_special'
			labels: 'with_mercadolibre_envios'
			access_token: ACCESS_TOKEN
	options.params.query = query if query

	$http(options).success (response) ->
		$scope.paging = response.paging

		multiGetOptions =
			url: 'https://api.mercadolibre.com/items'
			method: 'GET'
			params:
				ids: response.results.join ','

		$http(multiGetOptions).success (items) ->
			$scope.items = items
