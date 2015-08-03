'use strict'

angular.module 'fulfillmentWebappApp'
.controller 'MainCtrl', ($scope, $http, $location, $modal) ->

	$scope.getSearch = ->
		$location.search 'query', $scope.search
		window.location.reload()

	$scope.openModal = ->
		$modal.open
			animation: true
			templateUrl: 'components/modal/modal.html'
			controller: 'ModalCtrl'
    
	$scope.idFilter = (long_id) ->
		long_id.substring 3,long_id.length
	