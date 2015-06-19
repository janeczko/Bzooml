require.config

    paths:
        "jquery": "../bower_components/jquery/dist/jquery.min"
        "angular": "../bower_components/angularjs/angular.min"
        "angular-route": "../bower_components/angular-route/angular-route.min"

        "coreModule": "modules/core/coreModule"
        "themeModule": "modules/theme/themeModule"

    shim:
        "angular":
            deps: ["jquery"]

        "angular-route":
            deps: ["angular"]

        "coreModule":
            deps: ["angular-route", "themeModule"]

        "themeModule":
            deps: ["angular-route"]



require ["coreModule"], ->
