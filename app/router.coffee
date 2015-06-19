define ->

    class Router

        @resolve: (dependencies) ->
            load: ['$q', '$rootScope', ($q, $rootScope) ->
                defered = $q.defer()

                require dependencies, ->
                    defered.resolve()

                defered.promise
            ]


        @registerControllerConfig = (module) ->
            ['$controllerProvider', '$compileProvider', ($controllerProvider, $compileProvider) ->
                module.registerController = $controllerProvider.register
                module.registerDirective = $compileProvider.directive
            ]