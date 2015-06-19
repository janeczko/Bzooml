define ->

    class Router

        @resolveController: (module, controller) ->
            load: ['$q', ($q) ->
                defered = $q.defer()

                require ["modules/#{module}/controllers/#{controller}Controller"], ->
                    defered.resolve()

                defered.promise
            ]


        @registerControllerConfig = (module) ->
            ['$controllerProvider', ($controllerProvider) ->
                module.registerController = $controllerProvider.register
            ]