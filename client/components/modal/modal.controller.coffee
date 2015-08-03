'use strict'

angular.module 'fulfillmentWebappApp'
.controller 'ModalCtrl', ($scope, $modalInstance) ->
	$scope.ok = ->
		$modalInstance.close()

	$scope.cancel = ->
		$modalInstance.dismiss 'cancel'
