define ->

    angular.module 'themeModule'
        .controller 'theme.homeController', ['$scope', ($scope) ->
            $scope.title = 'This is THEME HomePage'
        ]