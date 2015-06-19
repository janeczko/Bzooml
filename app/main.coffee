require.config

    paths:
        "angular": "../bower_components/angularjs/angular.min"
        "app": "app"
        "coreModule": "coreModule"

    shim:
        "app":
            deps: ["angular", "coreModule"]

        "coreModule":
            deps: ["angular"]



require ["app"], ->
    angular.bootstrap document, ["app"]