define ->

    angular.module 'coreModule'
        .registerDirective 'superMan', ->
            {
                restrict: 'E'
                template: 'Hello from Directive SuperMan'
            }