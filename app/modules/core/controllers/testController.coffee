define ->

    angular.module 'coreModule'
        .controller 'core.testController', ['$scope', ($scope) ->
            $scope.testData = ['bzm', 'uiii', 'kvak', 'prd']
        ]