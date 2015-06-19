define ['modules/core/runners/logRunner', 'router'], (logRunner, Router) ->

    coreModule = angular.module 'coreModule', ['ngRoute', 'themeModule']


    coreModule.config Router.registerControllerConfig coreModule


    coreModule.config ['$routeProvider', ($routeProvider) ->
        $routeProvider
            .when '/',
                controller: 'core.homeController'
                templateUrl: 'app/modules/core/views/home.html'
                resolve: Router.resolveController 'core', 'home'

            .when '/home',
                controller: 'core.homeController'
                templateUrl: 'app/modules/core/views/home.html'
                resolve: Router.resolveController 'core', 'home'

            .when '/test',
                controller: 'core.testController'
                templateUrl: 'app/modules/core/views/test.html'
                resolve: Router.resolveController 'core', 'test'
    ]


    coreModule.run logRunner


    require ['modules/core/controllerReferences'], (references) ->
        require references, ->
            angular.bootstrap document, ['coreModule']