define ->

    angular.module 'coreModule'
        .registerController 'core.testController', ['$scope', ($scope) ->
            $scope.testData = ['bzm', 'uiii', 'kvak', 'prd', 'chuj']
        ]