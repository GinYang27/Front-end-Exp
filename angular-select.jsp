<select class="form-control" ng-model="selectedTimeOption" name="selectedTimeOption" ng-change="setServeTime()" required flex
    ng-options="option as ((option.price | currency) + ' / ' + (option.serveTime + 'min')) for option in ctrl.cartItem.shoppingCartTimeOptionModels track by option.serveTime">
</select>


<!-- NOTE: parenthese and track by is required -->
