define ->

    core = angular.module 'coreModule'

    core.registerController 'core.homeController', ['$scope', ($scope) ->
        $scope.title = 'This is HOMEPAGE. The main one.'

        $scope.customer = {
            name: 'Naomi'
            address: '1600 Amphitheatre'
        };
    ]