/**
 * TODO: add description of class
 * @author: 
 * @class: 
 * */

/* global require */
(function() {
    'use strict';

    require.config({
        shim: {
            underscore: {
                exports: '_'
            },
            backbone: {
                deps: ['underscore', 'jquery'],
                exports: 'Backbone'
            }
        },
        paths: {
            jquery: 'lib/jquery/jquery-2.0.3.min',
            underscore: 'lib/underscore/underscore',
            backbone: 'lib/backbone/backbone',
            text: 'lib/requirejs-text/text'
        },
        urlArgs : "v=2"

    });

    require([
            'backbone',
            'views/MainView',
            'router/Router'
    ], function (Backbone,  AppMainView, AppRoutes) {
        /*jshint nonew:false*/
        
        // Initialize routing and start Backbone.history()
        new AppRoutes();
        Backbone.history.start();

        // Initialize the main application view
        new AppMainView();
    });
}());
