define ->

    angular.module 'themeModule'
        .controller 'theme.themeController', ['$scope', ($scope) ->
            $scope.themeText = 'This is Theme page from ThemeModule'
        ]