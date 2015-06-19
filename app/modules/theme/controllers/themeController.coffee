define ->

    angular.module 'themeModule'
        .registerController 'theme.themeController', ['$scope', ($scope) ->
            $scope.themeText = 'This is Theme page from ThemeModule'
        ]