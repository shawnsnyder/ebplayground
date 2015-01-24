require.config
    deps: [
        'main'
    ]
    paths:
        jquery: '../components/jquery/dist/jquery.min'
        underscore: '../components/underscore/underscore'
        backbone: '../components/backbone/backbone'
    shim:
        underscore:
            exports: '_'
        backbone:
            deps: [
                'jquery'
                'underscore'
            ]
            exports: 'Backbone'
