define ->

    angular.module 'themeModule'
        .registerController 'theme.homeController', ['$scope', ($scope) ->
            $scope.title = 'This is THEME HomePage'
        ]