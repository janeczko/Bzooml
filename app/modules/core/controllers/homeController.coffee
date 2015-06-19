define ->

    angular.module 'coreModule'
        .controller 'core.homeController', ['$scope', ($scope) ->
            $scope.title = 'This is HOMEPAGE'
        ]