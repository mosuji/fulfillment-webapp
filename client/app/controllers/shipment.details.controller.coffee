'use strict'

angular.module 'fulfillmentWebappApp'

.controller 'ShipmentDetailsCtrl', ($scope, $http, ACCESS_TOKEN) ->

	$scope.inbound =
		'warehouse_id': 0
		'shipping_method': 'DHL'
		'tracking_number': '41234214524543234'
		'status': 'received_with_differences'
		'eta': new Date().toISOString()
		'lines': [
			'product':
				'listing_id': 'MLA563318158'
			'shipped_quantity': 10
			'received_quantity': 10
		,
			'product':
				'listing_id': 'MLA564374179'
			'shipped_quantity': 9
			'received_quantity': 10
		,
			'product':
				'listing_id': 'MLA562751560'
			'shipped_quantity': 15
			'received_quantity': 15
		 ]

	multiGetOptions =
		url: 'https://api.mercadolibre.com/items'
		method: 'GET'
		params:
			ids: $scope.inbound.lines.map((line) -> line.product.listing_id).join ','

	$http(multiGetOptions).success (items) ->
		$scope.inbound.lines.forEach (line) ->
			listing = _.find items, (item) -> item.id is line.product.listing_id
			line.listing = listing
			line.listing.status = "Recibida correctamente" if line.shipped_quantity == line.received_quantity
			line.listing.status = "Recibida con diferencias" if line.shipped_quantity != line.received_quantity

