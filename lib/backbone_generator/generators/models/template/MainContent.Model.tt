/**
 * TODO: add description of class
 * @author: 
 * @class: 
 * */

/* global define */
var App = App || {};

(function() {
    'use strict';

    define([
        'jquery',
        'underscore',
        'backbone',
        ], function($, _, Backbone) {
            
            App.MainContentModel = Backbone.Model.extend({

            //TODO: Add any default model object here
            defaults: {
                foo: "I am a data memeber"
            },

            //TODO: Add any initialization code here
            initialize: function() {
                console.log("Initializing main content model");
            },

            //TODO: Getters and Setters for the model object
            getfoo: function() {
                return this.get('foo');
            },

            setfoo: function(value) {
                this.set('foo', value);
            },

            });

            return App.MainContentModel;
        });
}());
