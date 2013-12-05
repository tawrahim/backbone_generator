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
        'views/Header.View',
        'views/LeftNavigation.View',
        'views/MainContent.View',
        'views/Footer.View',
        ], function($, _, Backbone) {
            
            App.MainView = Backbone.View.extend({

                //TODO: Put all event listener code here
                events: {
                },

                //TODO: Put all initialization code here
                initialize: function() {
                    this.footerView = new App.FooterView();
                    this.headerView = new App.HeaderView();
                    this.mainContentView = new App.MainContentView();
                    this.leftNavigationView = new App.LeftNavigationView();
                },

                //TODO: Put all render logic here
                render: function() {
                },

            });

            return App.MainView;
        });
}());
