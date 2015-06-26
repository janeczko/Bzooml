require.config

    paths:
        "jquery": "../bower_components/jquery/dist/jquery.min"
        "angular": "../bower_components/angularjs/angular.min"
        "angular-route": "../bower_components/angular-route/angular-route.min"
        "uikit": "../resources/js/uikit.min"
        "global": "../resources/js/global"

        "coreModule": "modules/core/coreModule"
        "themeModule": "modules/theme/themeModule"

    shim:
        "global":
            deps: ["jquery"]

        "uikit":
            deps: ["global"]

        "angular":
            deps: ["uikit"]

        "angular-route":
            deps: ["angular"]

        "coreModule":
            deps: ["themeModule"]

        "themeModule":
            deps: ["angular-route"]


    config:
        "uikit":
            "base": "../resources/js"



require ["coreModule"], ->
