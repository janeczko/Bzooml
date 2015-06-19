define ['modules/core/runners/logRunner', 'router'], (logRunner, Router) ->

    coreModule = angular.module 'coreModule', ['ngRoute', 'themeModule']


    coreModule.config Router.registerControllerConfig coreModule


    coreModule.config ['$routeProvider', ($routeProvider) ->
        $routeProvider
            .when '/',
                controller: 'core.homeController'
                templateUrl: 'app/modules/core/views/home.html'
                resolve: Router.resolve ['modules/core/controllers/homeController', 'modules/core/directives/superMan']

            .when '/home',
                controller: 'core.homeController'
                templateUrl: 'app/modules/core/views/home.html'
                resolve: Router.resolve ['modules/core/controllers/homeController']

            .when '/test',
                controller: 'core.testController'
                templateUrl: 'app/modules/core/views/test.html'
                resolve: Router.resolve ['modules/core/controllers/testController']
    ]


    coreModule.run logRunner


    require ['modules/core/controllerReferences'], (references) ->
        require references, ->
            angular.bootstrap document, ['coreModule']