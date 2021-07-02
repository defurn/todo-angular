/*global angular */
// added a logger service to help me see what is going on, because I can't remember how to access the main console log inside angular...
angular.module('todomvc')
    .service('dbug', function () {
        this.log = function (message) {
            return console.log(message)
        }
 
    });