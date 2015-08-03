'use strict'

angular.module 'fulfillmentWebappApp'

.controller 'ShipmentsCtrl', ($scope, $http, $location) ->
	$scope.paging = []
	$scope.shipments = []
	$http.get('https://api.mercadolibre.com/sites/MLA/search?nickname=VENAMISHOP').success (response) ->
		$scope.paging = response.paging



	$scope.shipments = [
		{
			id: 1
			shipping_method: "DHL"
			tracking_number: "3459048259942093024290"
			status: "Recibida con diferencias"
			eta: "15/07/2015"
			date_and_time_received: "10/jun/2015 9:12hs"
			shipmentNumber : "12345678"
		},
		{
			id: 2
			shipping_method	: "DHL"
			tracking_number: "345904825942093024290"
			status: "Recibida correctamente"
			eta: "16/07/2015"
			date_and_time_received: "11/jun/2015 18:10hs"
			shipmentNumber : "12345679"
		},
		{
			id: 3
			shipping_method	: "DHL"
			tracking_number: "345904825942093029402"
			status: "En transito"
			eta: "19/07/2015"
			date_and_time_received: "12/jun/2015 08:15hs"
			shipmentNumber : "12345680"
		}
	]
