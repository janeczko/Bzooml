define ->

    angular.module 'coreModule'
        .controller 'mainController', ['$rootScope', '$scope', ($rootScope, $scope) ->

            $rootScope.alerts = [
                {type: 'danger', msg: 'error'}
                {type: 'success', msg: 'hovno super'}
            ]

            $rootScope.closeAlert = (index) ->
                $rootScope.alerts.splice index, 1
        ]