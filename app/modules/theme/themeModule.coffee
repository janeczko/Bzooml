define ['modules/theme/runners/logRunner', 'router'], (logRunner, Router) ->

    themeModule = angular.module 'themeModule', ['ngRoute']


    themeModule.config Router.registerControllerConfig themeModule


    themeModule.config ['$routeProvider', ($routeProvider) ->
        $routeProvider
            .when '/theme',
                controller: 'theme.themeController'
                templateUrl: 'app/modules/theme/views/theme.html'
                resolve: Router.resolve ['modules/theme/controllers/themeController']

            .when '/theme/home',
                controller: 'theme.homeController'
                templateUrl: 'app/modules/theme/views/home.html'
                resolve: Router.resolve ['modules/theme/controllers/homeController']
    ]


    themeModule.run logRunner


    require ['modules/theme/controllerReferences'], (references) ->
        require references, ->