/**
 * This file loads the neccesary js file
 * on the initial page load
 * @author: Tawheed Abdul-Raheem
 * @class: Requirejs config file
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
            jquery: 'lib/jquery/jquery',
            underscore: 'lib/underscore/underscore',
            backbone: 'lib/backbone/backbone',
            mustache: 'lib/mustache/mustache',
            text: 'lib/requirejs-text/text'
        },
        urlArgs : "v=2" 

    });

    require([
            'backbone',
            'mustache',
            'views/MainView',
            'router/Router'
    ], function (Backbone, Mustache, SANBLazeMainView, SANBLazeRoutes) {
        /*jshint nonew:false*/
        
        // Initialize routing and start Backbone.history()
        new SANBLazeRoutes();
        Backbone.history.start();

        // Initialize the main application view
        new SANBLazeMainView();
    });
}());
