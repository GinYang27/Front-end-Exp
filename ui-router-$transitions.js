(function(){
    'use strict';

    angular
        .module('app')
        .run(run);

    run.$inject = ['$state','$location', '$rootScope', '$transitions', '$q'];
    function run($state, $location, $rootScope, $transitions, $q) {

        $transitions.onEnter( {}, (trans) => {
            var publickPages = ['/home', '/stores?storeId'];
            var restrictedVisit = publickPages.indexOf(trans.to().url) == -1;
            console.log(trans.to().url);
            if ($.cookie('site_username') == null || $.cookie('site_username') == "null") {
                $rootScope.isLoggedIn = false;
            } else {
                $rootScope.isLoggedIn = true;
            }
            if(restrictedVisit && !$rootScope.isLoggedIn) {
                return $state.target("home");
            }
        });
    }    
})();   
