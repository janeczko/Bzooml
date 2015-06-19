require.config

    paths:
        "jquery": "../bower_components/jquery/dist/jquery.min"
        "angular": "../bower_components/angularjs/angular.min"
        "angular-route": "../bower_components/angular-route/angular-route.min"
        "ui.bootstrap": "../resources/js/ui-bootstrap-custom-tpls-0.13.0.min"

        "coreModule": "modules/core/coreModule"
        "themeModule": "modules/theme/themeModule"

    shim:
        "angular":
            deps: ["jquery"]

        "angular-route":
            deps: ["angular"]

        "ui.bootstrap":
            deps: ["angular-route"]

        "coreModule":
            deps: ["themeModule", "ui.bootstrap"]

        "themeModule":
            deps: ["ui.bootstrap"]



require ["coreModule"], ->
