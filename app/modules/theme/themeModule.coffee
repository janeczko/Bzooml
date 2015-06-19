define ->

    themeModule = angular.module 'themeModule', ['ngRoute']


    themeModule.config ['$routeProvider', ($routeProvider) ->
        $routeProvider
            .when '/theme',
                controller: 'theme.themeController'
                templateUrl: 'app/modules/theme/views/theme.html'

            .when '/theme/home',
                controller: 'theme.homeController'
                templateUrl: 'app/modules/theme/views/home.html'
    ]


    themeModule.run ['$log', ($log) ->
        $log.info 'Initialized the ThemeModule'
    ]


    require ['modules/theme/controllerReferences'], (references) ->
        require references, ->