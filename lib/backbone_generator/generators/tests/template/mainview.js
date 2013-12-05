/**
 * This file is responsible for rendering
 * all the ports on the system
 * @author: Tawheed Abdul-Raheem
 * @class: SANBLaze.PortView
 *
 **/

/* global define */
var SANBLaze = SANBLaze || {};

(function() {
    'use strict';

    define([
        'jquery',
        'underscore',
        'backbone',
        'views/Port.View',
        ], function($, _, Backbone) {

            SANBLaze.AllPortsView = Backbone.View.extend({

            // Instead of generating a new element, bind to the
            // the existing element present in the HTML
            el: '.nav',

            // Initialization
            initialize: function() {
                this.collection = SANBLaze.PortView();
            },

            // Rendering the app
            render: function() {
                this.renderPort();
            },

            // Render a port by creating a PortView and appending
            // the element it renders
            renderPort: function() {
                var portView = new SANBLaze.PortView();
                this.$el.append(portView.render().el);
            }
            });

            return SANBLaze.AllPortsView;
        });
}());
