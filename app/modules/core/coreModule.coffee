define ['modules/core/runners/logRunner'], (logRunner) ->

    coreModule = angular.module 'coreModule', ['ngRoute', 'themeModule']


    coreModule.config ['$routeProvider', ($routeProvider) ->
        $routeProvider
            .when '/',
                controller: 'core.homeController'
                templateUrl: 'app/modules/core/views/home.html'

            .when '/home',
                controller: 'core.homeController'
                templateUrl: 'app/modules/core/views/home.html'

            .when '/test',
                controller: 'core.testController'
                templateUrl: 'app/modules/core/views/test.html'
    ]


    coreModule.run logRunner


    require ['modules/core/controllerReferences'], (references) ->
        require references, ->
            angular.bootstrap document, ['coreModule']