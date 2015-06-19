define ->

    coreModule = angular.module "coreModule", []

    coreModule.controller "mainController", ($scope) ->
        $scope.title = "Coffee Angular Require JS"