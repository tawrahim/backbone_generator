/**
 * This file is responsible for dispatching 
 * all the routes
 * @author: Tawheed Abdul-Raheem
 * @class: SANBLaze.Router
 *
 * */

var SANBLaze = SANBLaze || {};

/* global define */
(function() {
    'use strict';

    define([
        'jquery',
        'underscore',
        'backbone',
        ], function($, _, Backbone) {
            
            SANBLaze.Router = Backbone.Router.extend({

                routes: {
                    initialize: function() {
                        /* ajax prefilter is used as base point of the URL request'
                         * @see http://api.jquery.com/jQuery.ajaxPrefilter/
                         * */
                        $.ajaxPrefilter( function( options, originalOptions, jqXHR ) {
                          options.url = 'http://192.168.110.107/' + options.url;
                        });
                    },
                }
            });

            return SANBLaze.Router;
        });
}());
